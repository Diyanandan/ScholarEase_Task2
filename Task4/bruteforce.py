class BruteForceDB:
    def __init__(self):  # Fixed typo in the constructor
        self.data = []

    def insert(self, key, value=None):
        self.data.append((key, value))

    def search(self, key):
        return any(k == key for k, _ in self.data)

    def delete(self, key):
        self.data = [(k, v) for k, v in self.data if k != key]

    def range_query(self, start, end):
        return [(k, v) for k, v in self.data if start <= k <= end]