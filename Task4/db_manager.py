from table import Table

class DBManager:
    def __init__(self):
        print("DBManager initialized!")
        self.tables = {}

    def create_table(self, name, primary_key):
        if name in self.tables:
            raise ValueError(f"Table '{name}' already exists.")
        self.tables[name] = Table(name, primary_key)

    def drop_table(self, name):
        if name not in self.tables:
            raise ValueError(f"Table '{name}' does not exist.")
        del self.tables[name]

    def insert_into(self, table_name, row):
        table = self._get_table(table_name)
        table.insert(row)

    def delete_from(self, table_name, key):
        table = self._get_table(table_name)
        return table.delete(key)

    def update_table(self, table_name, key, new_row):
        table = self._get_table(table_name)
        return table.update(key, new_row)

    def search_table(self, table_name, key):
        table = self._get_table(table_name)
        return table.search(key)

    def range_query_table(self, table_name, start_key, end_key):
        table = self._get_table(table_name)
        return table.range_query(start_key, end_key)

    def show_table(self, table_name):
        table = self._get_table(table_name)
        return table.get_all()

    def visualize_table(self, table_name):
        table = self._get_table(table_name)
        return table.visualize()

    def _get_table(self, name):
        if name not in self.tables:
            raise ValueError(f"Table '{name}' does not exist.")
        return self.tables[name]