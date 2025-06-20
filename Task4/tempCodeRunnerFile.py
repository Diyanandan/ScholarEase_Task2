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