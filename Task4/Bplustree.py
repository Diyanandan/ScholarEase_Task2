
# from graphviz import Digraph

# class BPlusTreeNode:
#     def __init__(self, is_leaf=False):
#         self.is_leaf = is_leaf
#         self.keys = []
#         self.children = []
#         self.next = None  # For leaf-level linked list


# class BPlusTree:
#     def __init__(self, t=3):  # Degree (max children = 2*t)
#         self.root = BPlusTreeNode(is_leaf=True)
#         self.t = t

#     def search(self, key):
#         node = self.root
#         while not node.is_leaf:
#             i = 0
#             while i < len(node.keys) and key >= node.keys[i]:
#                 i += 1
#             node = node.children[i]
#         for i, item in enumerate(node.keys):
#             if item == key:
#                 return node.children[i]
#         return None

#     def insert(self, key, value):
#         root = self.root
#         if len(root.keys) == 2 * self.t - 1:
#             new_root = BPlusTreeNode()
#             new_root.children.append(self.root)
#             self._split_child(new_root, 0)
#             self.root = new_root
#         self._insert_non_full(self.root, key, value)

#     def _insert_non_full(self, node, key, value):
#         if node.is_leaf:
#             i = 0
#             while i < len(node.keys) and key > node.keys[i]:
#                 i += 1
#             node.keys.insert(i, key)
#             node.children.insert(i, value)
#         else:
#             i = 0
#             while i < len(node.keys) and key > node.keys[i]:
#                 i += 1
#             if len(node.children[i].keys) == 2 * self.t - 1:
#                 self._split_child(node, i)
#                 if key > node.keys[i]:
#                     i += 1
#             self._insert_non_full(node.children[i], key, value)

#     def _split_child(self, parent, index):
#         t = self.t
#         node = parent.children[index]
#         new_node = BPlusTreeNode(is_leaf=node.is_leaf)

#         if node.is_leaf:
#             # Keep mid key in both leaves
#             new_node.keys = node.keys[t - 1:]
#             new_node.children = node.children[t - 1:]

#             node.keys = node.keys[:t - 1]
#             node.children = node.children[:t - 1]

#             new_node.next = node.next
#             node.next = new_node

#             # Promote the first key of the new right node to the parent
#             parent.keys.insert(index, new_node.keys[0])
#             parent.children.insert(index + 1, new_node)
#         else:
#             # Internal node: move middle key up, and split remaining
#             mid_key = node.keys[t - 1]

#             new_node.keys = node.keys[t:]  # keys after mid
#             new_node.children = node.children[t:]  # children after mid

#             node.keys = node.keys[:t - 1]
#             node.children = node.children[:t]

#             parent.keys.insert(index, mid_key)
#             parent.children.insert(index + 1, new_node)




#     def delete(self, key):
#         self._delete(self.root, key)
#         if not self.root.is_leaf and len(self.root.keys) == 0:
#             self.root = self.root.children[0]

#     # def _delete(self, node, key):
#     #     if node.is_leaf:
#     #         if key in node.keys:
#     #             idx = node.keys.index(key)
#     #             node.keys.pop(idx)
#     #             node.children.pop(idx)
#     #             return True
#     #         return False

#     #     i = 0
#     #     while i < len(node.keys) and key > node.keys[i]:
#     #         i += 1

#     #     if i < len(node.keys) and key == node.keys[i]:
#     #         # Internal node deletion not supported
#     #         return False

#     #     child = node.children[i]
#     #     if not self._delete(child, key):
#     #         return False

#     #     if len(child.keys) < self.t - 1:
#     #         self._fill_child(node, i)
#     #     return True
#     def _delete(self, node, key):
#         if node.is_leaf:
#             if key in node.keys:
#                 idx = node.keys.index(key)
#                 node.keys.pop(idx)
#                 if idx < len(node.children):
#                     node.children.pop(idx)
#                 return True
#             return False

#         # Find the child which may contain the key
#         i = 0
#         while i < len(node.keys) and key > node.keys[i]:
#             i += 1

#         # Even if key matches an internal node key, continue to leaf
#         if i < len(node.keys) and key == node.keys[i]:
#             i += 1

#         if i >= len(node.children):
#             print(f"Warning: Invalid child index {i} for children length {len(node.children)}")
#             return False

#         child = node.children[i]
#         deleted = self._delete(child, key)

#         if not deleted:
#             return False

#         # Rebalance if needed
#         if len(child.keys) < self.t - 1:
#             if i < len(node.children):
#                 self._fill_child(node, i)

#         return True


#     def _fill_child(self, node, index):
#         if index > 0 and len(node.children[index - 1].keys) >= self.t:
#             self._borrow_from_prev(node, index)
#         elif index < len(node.keys) and len(node.children[index + 1].keys) >= self.t:
#             self._borrow_from_next(node, index)
#         else:
#             if index < len(node.keys):
#                 self._merge(node, index)
#             else:
#                 self._merge(node, index - 1)


#     def _borrow_from_prev(self, node, index):
#         child = node.children[index]
#         sibling = node.children[index - 1]

#         if not child.is_leaf:
#             child.children.insert(0, sibling.children.pop())
#         child.keys.insert(0, node.keys[index - 1])
#         node.keys[index - 1] = sibling.keys.pop()

#     def _borrow_from_next(self, node, index):
#         if index >= len(node.keys):
#             return  # Prevent out-of-range error

#         child = node.children[index]
#         sibling = node.children[index + 1]

#         if not child.is_leaf:
#             child.children.append(sibling.children.pop(0))

#         child.keys.append(node.keys[index])
#         node.keys[index] = sibling.keys.pop(0)


#     def _merge(self, node, index):
#         child = node.children[index]
#         sibling = node.children[index + 1]

#         if not child.is_leaf:
#             child.keys.append(node.keys[index])
#         child.keys.extend(sibling.keys)
#         child.children.extend(sibling.children)

#         if child.is_leaf:
#             child.next = sibling.next

#         node.keys.pop(index)
#         node.children.pop(index + 1)

#     def update(self, key, new_value):
#         node = self.root
#         while not node.is_leaf:
#             i = 0
#             while i < len(node.keys) and key >= node.keys[i]:
#                 i += 1
#             node = node.children[i]
#         for i, item in enumerate(node.keys):
#             if item == key:
#                 node.children[i] = new_value
#                 return True
#         return False

#     def range_query(self, start_key, end_key):
#         node = self.root
#         while not node.is_leaf:
#             i = 0
#             while i < len(node.keys) and start_key >= node.keys[i]:
#                 i += 1
#             node = node.children[i]
#         result = []
#         while node:
#             for i, key in enumerate(node.keys):
#                 if start_key <= key <= end_key:
#                     result.append((key, node.children[i]))
#                 elif key > end_key:
#                     return result
#             node = node.next
#         return result

#     def get_all(self):
#         node = self.root
#         while not node.is_leaf:
#             node = node.children[0]
#         result = []
#         while node:
#             for i in range(len(node.keys)):
#                 result.append((node.keys[i], node.children[i]))
#             node = node.next
#         return result

#     # def visualize_tree(self):
#     #     dot = Digraph(format='png')  # Output format PNG
#     #     self._add_nodes(dot, self.root)  # Add nodes (keys)
#     #     self._add_edges(dot, self.root)  # Add edges between parent-child
#     #     return dot
#     def visualize_tree(self):
#         dot = Digraph(format='png')
#         self._add_nodes(dot, self.root)
#         self._add_edges(dot, self.root)
#         leaf = self.root
#         while not leaf.is_leaf:
#             leaf = leaf.children[0]  

#         while leaf and leaf.next:
#             dot.edge(str(id(leaf)), str(id(leaf.next)), constraint='false', style='dotted')
#             leaf = leaf.next

#         return dot

#     def _add_nodes(self, dot, node):
#         label = '|'.join(map(str, node.keys))
#         node_id = str(id(node))
#         shape = 'ellipse' if node.is_leaf else 'box'
#         dot.node(node_id, label=label, shape=shape)
#         for child in node.children:
#             if isinstance(child, BPlusTreeNode):
#                 self._add_nodes(dot, child)

#     # def _add_edges(self, dot, node):
#     #     node_id = str(id(node))
#     #     for child in node.children:
#     #         if isinstance(child, BPlusTreeNode):
#     #             child_id = str(id(child))
#     #             dot.edge(node_id, child_id)
#     #             self._add_edges(dot, child)
#     def _add_edges(self, dot, node):
#         # Base case: if the node is a leaf node, don't add edges
#         if node.is_leaf:
#             # Add edge between consecutive leaf nodes
#             current = node
#             while current and current.next:
#                 dot.edge(str(current), str(current.next))  # Add edge between consecutive leaves
#                 current = current.next
#             return

#         # Recursive case for non-leaf nodes
#         for child in node.children:
#             dot.edge(str(node), str(child))  # Add edge between parent and child
#             self._add_edges(dot, child)  # Recursively add edges for children

    
#     def drop_tree(self):
#         self.root = BPlusTreeNode(is_leaf=True)

from graphviz import Digraph

class BPlusTreeNode:
    def __init__(self, is_leaf=False):
        self.is_leaf = is_leaf
        self.keys = []
        self.children = []
        self.next = None  # For leaf-level linked list


class BPlusTree:
    def __init__(self, t=3):  # Degree (max children = 2*t)
        self.root = BPlusTreeNode(is_leaf=True)
        self.t = t

    def search(self, key):
        node = self.root
        while not node.is_leaf:
            i = 0
            while i < len(node.keys) and key >= node.keys[i]:
                i += 1
            node = node.children[i]
        for i, item in enumerate(node.keys):
            if item == key:
                return node.children[i]
        return None

    def insert(self, key, value):
        root = self.root
        if len(root.keys) == 2 * self.t - 1:
            new_root = BPlusTreeNode()
            new_root.children.append(self.root)
            self._split_child(new_root, 0)
            self.root = new_root
        self._insert_non_full(self.root, key, value)

    def _insert_non_full(self, node, key, value):
        if node.is_leaf:
            i = 0
            while i < len(node.keys) and key > node.keys[i]:
                i += 1
            node.keys.insert(i, key)
            node.children.insert(i, value)
        else:
            i = 0
            while i < len(node.keys) and key > node.keys[i]:
                i += 1
            if len(node.children[i].keys) == 2 * self.t - 1:
                self._split_child(node, i)
                if key > node.keys[i]:
                    i += 1
            self._insert_non_full(node.children[i], key, value)

    # def _split_child(self, parent, index):
    #     t = self.t
    #     node = parent.children[index]
    #     new_node = BPlusTreeNode(is_leaf=node.is_leaf)

    #     if node.is_leaf:
    #         # Keep mid key in both leaves
    #         new_node.keys = node.keys[t - 1:]
    #         new_node.children = node.children[t - 1:]

    #         node.keys = node.keys[:t - 1]
    #         node.children = node.children[:t - 1]

    #         new_node.next = node.next
    #         node.next = new_node

    #         # Promote the first key of the new right node to the parent
    #         parent.keys.insert(index, new_node.keys[0])
    #         parent.children.insert(index + 1, new_node)
    #     else:
    #         # Internal node: move middle key up, and split remaining
    #         mid_key = node.keys[t - 1]

    #         new_node.keys = node.keys[t:]  # keys after mid
    #         new_node.children = node.children[t:]  # children after mid

    #         node.keys = node.keys[:t - 1]
    #         node.children = node.children[:t]

    #         parent.keys.insert(index, mid_key)
    #         parent.children.insert(index + 1, new_node)
    def _split_child(self, parent, index):
        t = self.t
        node = parent.children[index]
        new_node = BPlusTreeNode(is_leaf=node.is_leaf)

        if node.is_leaf:
            # Keep mid key in both leaves (B+ tree characteristic)
            split_index = (t + 1) // 2  # to satisfy ⌈(n-1)/2⌉ keys minimum

            new_node.keys = node.keys[split_index:]
            new_node.children = node.children[split_index:]

            node.keys = node.keys[:split_index]
            node.children = node.children[:split_index]

            # Maintain leaf node chaining
            new_node.next = node.next
            node.next = new_node

            # Promote the first key of the new_node (right leaf) to parent
            parent.keys.insert(index, new_node.keys[0])
            parent.children.insert(index + 1, new_node)

        else:
            # Internal node: move middle key up and split children/keys
            mid_index = t - 1  # median index
            mid_key = node.keys[mid_index]

            new_node.keys = node.keys[mid_index + 1:]
            new_node.children = node.children[mid_index + 1:]

            node.keys = node.keys[:mid_index]
            node.children = node.children[:mid_index + 1]

            parent.keys.insert(index, mid_key)
            parent.children.insert(index + 1, new_node)





    def delete(self, key):
        self._delete(self.root, key)
        if not self.root.is_leaf and len(self.root.keys) == 0:
            self.root = self.root.children[0]

    def _delete(self, node, key):
        if node.is_leaf:
            if key in node.keys:
                idx = node.keys.index(key)
                node.keys.pop(idx)
                node.children.pop(idx)
                return True
            return False

        i = 0
        while i < len(node.keys) and key > node.keys[i]:
            i += 1

        if i < len(node.keys) and key == node.keys[i]:
            # Internal node deletion not supported
            return False

        child = node.children[i]
        if not self._delete(child, key):
            return False

        if len(child.keys) < self.t - 1:
            self._fill_child(node, i)
        return True

    def _fill_child(self, node, index):
        if index > 0 and len(node.children[index - 1].keys) >= self.t:
            self._borrow_from_prev(node, index)
        elif index < len(node.keys) and len(node.children[index + 1].keys) >= self.t:
            self._borrow_from_next(node, index)
        else:
            if index < len(node.keys):
                self._merge(node, index)
            else:
                self._merge(node, index - 1)


    def _borrow_from_prev(self, node, index):
        child = node.children[index]
        sibling = node.children[index - 1]

        if not child.is_leaf:
            child.children.insert(0, sibling.children.pop())
        child.keys.insert(0, node.keys[index - 1])
        node.keys[index - 1] = sibling.keys.pop()

    def _borrow_from_next(self, node, index):
        if index >= len(node.keys):
            return  # Prevent out-of-range error

        child = node.children[index]
        sibling = node.children[index + 1]

        if not child.is_leaf:
            child.children.append(sibling.children.pop(0))

        child.keys.append(node.keys[index])
        node.keys[index] = sibling.keys.pop(0)


    def _merge(self, node, index):
        child = node.children[index]
        sibling = node.children[index + 1]

        if not child.is_leaf:
            child.keys.append(node.keys[index])
        child.keys.extend(sibling.keys)
        child.children.extend(sibling.children)

        if child.is_leaf:
            child.next = sibling.next

        node.keys.pop(index)
        node.children.pop(index + 1)

    def update(self, key, new_value):
        node = self.root
        while not node.is_leaf:
            i = 0
            while i < len(node.keys) and key >= node.keys[i]:
                i += 1
            node = node.children[i]
        for i, item in enumerate(node.keys):
            if item == key:
                node.children[i] = new_value
                return True
        return False

    def range_query(self, start_key, end_key):
        node = self.root
        while not node.is_leaf:
            i = 0
            while i < len(node.keys) and start_key >= node.keys[i]:
                i += 1
            node = node.children[i]
        result = []
        while node:
            for i, key in enumerate(node.keys):
                if start_key <= key <= end_key:
                    result.append((key, node.children[i]))
                elif key > end_key:
                    return result
            node = node.next
        return result

    def get_all(self):
        node = self.root
        while not node.is_leaf:
            node = node.children[0]
        result = []
        while node:
            for i in range(len(node.keys)):
                result.append((node.keys[i], node.children[i]))
            node = node.next
        return result

    def visualize_tree(self):
        dot = Digraph(format='png')
        self._add_nodes(dot, self.root)
        self._add_edges(dot, self.root)
        leaf = self.root
        while not leaf.is_leaf:
            leaf = leaf.children[0]  

        while leaf and leaf.next:
            dot.edge(str(id(leaf)), str(id(leaf.next)), constraint='false', style='dotted')
            leaf = leaf.next

        return dot


    def _add_nodes(self, dot, node):
        label = '|'.join(map(str, node.keys))
        node_id = str(id(node))
        shape = 'ellipse' if node.is_leaf else 'box'
        dot.node(node_id, label=label, shape=shape)
        for child in node.children:
            if isinstance(child, BPlusTreeNode):
                self._add_nodes(dot, child)

    def _add_edges(self, dot, node):
        node_id = str(id(node))
        for child in node.children:
            if isinstance(child, BPlusTreeNode):
                child_id = str(id(child))
                dot.edge(node_id, child_id)
                self._add_edges(dot, child)
    
    def drop_tree(self):
        self.root = BPlusTreeNode(is_leaf=True)