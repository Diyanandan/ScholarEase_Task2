import json

class Table:
    def __init__(self, name, primary_key):
        self.name = name
        self.primary_key = primary_key
        self.rows = {}  # This could be your B+ Tree in actual version

    def insert(self, row):
        key = row[self.primary_key]
        if key in self.rows:
            raise ValueError(f"Duplicate key: {key}")
        self.rows[key] = row

    def delete(self, key):
        return self.rows.pop(key, None)

    def update(self, key, new_row):
        if key not in self.rows:
            raise ValueError(f"Key {key} not found.")
        self.rows[key] = new_row

    def search(self, key):
        return self.rows.get(key, None)

    def range_query(self, start_key, end_key):
        return {
            k: v for k, v in self.rows.items()
            if start_key <= k <= end_key
        }

    def get_all(self):
        return list(self.rows.values())

    def visualize(self):
        # Stub for visualization
        return f"Table '{self.name}' with {len(self.rows)} records."
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

    def _split_child(self, parent, index):
        t = self.t
        node = parent.children[index]
        new_node = BPlusTreeNode(is_leaf=node.is_leaf)

        if node.is_leaf:
            # Keep mid key in both leaves
            new_node.keys = node.keys[t - 1:]
            new_node.children = node.children[t - 1:]

            node.keys = node.keys[:t - 1]
            node.children = node.children[:t - 1]

            new_node.next = node.next
            node.next = new_node

            # Promote the first key of the new right node to the parent
            parent.keys.insert(index, new_node.keys[0])
            parent.children.insert(index + 1, new_node)
        else:
            # Internal node: move middle key up, and split remaining
            mid_key = node.keys[t - 1]

            new_node.keys = node.keys[t:]  # keys after mid
            new_node.children = node.children[t:]  # children after mid

            node.keys = node.keys[:t - 1]
            node.children = node.children[:t]

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
        dot = Digraph(format='png')  # Output format PNG
        self._add_nodes(dot, self.root)  # Add nodes (keys)
        self._add_edges(dot, self.root)  # Add edges between parent-child
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

class BPlusTreeTable:
    def __init__(self, name, primary_key):
        self.name = name
        self.primary_key = primary_key
        self.tree = BPlusTree()

    def insert(self, row):
        key = row[self.primary_key]
        if self.tree.search(key) is not None:
            raise ValueError(f"Duplicate key: {key}")
        self.tree.insert(key, row)

    def delete(self, key):
        return self.tree.delete(key)

    def update(self, key, new_row):
        if self.tree.search(key) is None:
            raise ValueError(f"Key {key} not found.")
        return self.tree.update(key, new_row)

    def search(self, key):
        return self.tree.search(key)

    def range_query(self, start_key, end_key):
        return {k: v for k, v in self.tree.range_query(start_key, end_key)}

    def get_all(self):
        return [v for k, v in self.tree.get_all()]

    def visualize(self):
        return self.tree.visualize_tree()

class BruteForceTable:
    def __init__(self, name, primary_key):
        self.name = name
        self.primary_key = primary_key
        self.rows = []  # list of dictionaries

    def insert(self, row):
        key = row[self.primary_key]
        for r in self.rows:
            if r[self.primary_key] == key:
                raise ValueError(f"Duplicate key: {key}")
        self.rows.append(row)

    def delete(self, key):
        for i, r in enumerate(self.rows):
            if r[self.primary_key] == key:
                return self.rows.pop(i)
        return None

    def update(self, key, new_row):
        for i, r in enumerate(self.rows):
            if r[self.primary_key] == key:
                self.rows[i] = new_row
                return
        raise ValueError(f"Key {key} not found.")

    def search(self, key):
        for r in self.rows:
            if r[self.primary_key] == key:
                return r
        return None

    def range_query(self, start_key, end_key):
        return [
            r for r in self.rows
            if start_key <= r[self.primary_key] <= end_key
        ]

    def get_all(self):
        return self.rows

    def visualize(self):
        return f"Brute Force Table '{self.name}' with {len(self.rows)} rows"
    
class Database:
    def __init__(self, name):
        self.name = name
        self.tables = {}

    def create_table(self, table_name, primary_key, method="bplus"):
        if table_name in self.tables:
            raise ValueError(f"Table '{table_name}' already exists.")
        if method == "bplus":
            self.tables[table_name] = BPlusTreeTable(table_name, primary_key)
        elif method == "bruteforce":
            self.tables[table_name] = BruteForceTable(table_name, primary_key)
        else:
            raise ValueError("Invalid method. Use 'bplus' or 'bruteforce'.")

    def drop_table(self, table_name):
        if table_name not in self.tables:
            raise ValueError(f"Table '{table_name}' does not exist.")
        del self.tables[table_name]

    def list_tables(self):
        return list(self.tables.keys())

    def insert_into(self, table_name, row):
        if table_name not in self.tables:
            raise ValueError(f"Table '{table_name}' does not exist.")
        self.tables[table_name].insert(row)

    def get_table(self, table_name):
        return self.tables.get(table_name, None)
    
    def update_row(self, table_name, key, new_row):
        if table_name not in self.tables:
            raise ValueError(f"Table '{table_name}' does not exist.")
        self.tables[table_name].update(key, new_row)
        print(f"✅ Row with key {key} updated in table '{table_name}'.")
    
class Databasepersistence:
    def __init__(self):
        # Initialize the tables as empty or predefined tables
        self.tables = {}
        
    def create_table(self, table_name, data):
        """Creates a new table and stores it in the database."""
        self.tables[table_name] = data
        print(f"Table {table_name} created successfully!")
        
    def save_table_to_disk(self, table_name):
        """Saves the given table data to a file."""
        if table_name in self.tables:
            with open(f"{table_name}.json", "w") as file:
                json.dump(self.tables[table_name], file, indent=4)
            print(f"Table {table_name} saved successfully!")
        else:
            print(f"Table {table_name} does not exist in the database.")
        
    def load_table_from_disk(self, table_name):
        """Loads the table from a file."""
        try:
            with open(f"{table_name}.json", "r") as file:
                data = json.load(file)
            self.tables[table_name] = data
            print(f"Table {table_name} loaded successfully!")
        except FileNotFoundError:
            print(f"Table {table_name} not found on disk.")
        
    def retrieve_table(self, table_name):
        """Retrieve the data of a table."""
        return self.tables.get(table_name, None)