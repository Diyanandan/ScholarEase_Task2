import time
import tracemalloc
import random
import matplotlib.pyplot as plt
from Bplustree import BPlusTree
from bruteforce import BruteForceDB  
class PerformanceAnalyzer:
    def __init__(self, n=1000):  # Fixed typo in constructor
        self.n = n
        self.keys = random.sample(range(n * 10), n)
        self.range_start = self.keys[n // 4]
        self.range_end = self.keys[3 * n // 4]

    def measure_time(self, func, *args):
        start = time.perf_counter()
        func(*args)
        return (time.perf_counter() - start) * 1000  # ms

    # Updated measure_memory_usage function
    def measure_memory_usage(self, structure_class, keys, values):
        tracemalloc.start()
        db = structure_class()
        for k, v in zip(keys, values):
            db.insert(k, v)
        current, peak = tracemalloc.get_traced_memory()
        tracemalloc.stop()
        return current / 1024, peak / 1024  # in KB

    def benchmark(self, db, label="Structure"):
        result = {}

        # Insert
        insert_time = self.measure_time(lambda: [
            db.insert(k, str(k)) for k in self.keys
        ])
        result['Insert'] = insert_time

        # Search
        search_keys = random.sample(self.keys, self.n // 10)
        search_time = self.measure_time(lambda: [
            db.search(k) for k in search_keys
        ])
        result['Search'] = search_time

        # Range Query
        range_time = self.measure_time(lambda: db.range_query(self.range_start, self.range_end))
        result['Range Query'] = range_time

        # Delete
        delete_keys = random.sample(self.keys, self.n // 10)
        delete_time = self.measure_time(lambda: [
            db.delete(k) for k in delete_keys
        ])
        result['Delete'] = delete_time

        # Random Ops
        def random_ops():
            for _ in range(self.n // 20):
                op = random.choice(["insert", "search", "delete"])
                k = random.randint(0, self.n * 10)
                if op == "insert":
                    db.insert(k, str(k))
                elif op == "search":
                    db.search(k)
                else:
                    db.delete(k)
        result['Random Ops'] = self.measure_time(random_ops)

        # Memory (using the new memory usage function)
        memory_current, memory_peak = self.measure_memory_usage(type(db), self.keys, [str(k) for k in self.keys])
        result['Memory Current KB'] = memory_current
        result['Memory Peak KB'] = memory_peak

        return result

    def run_and_plot(self):
        sizes = [100, 500, 1000, 2000, 3000, 5000]
        operations = ['Insert', 'Search', 'Range Query', 'Delete', 'Random Ops',  'Memory Peak KB']
        bptree_stats = {op: [] for op in operations}
        bruteforce_stats = {op: [] for op in operations}

        for size in sizes:
            print(f"\nRunning benchmark for size {size}...")

            # Set up with current size
            self.n = size
            self.keys = random.sample(range(size * 10), size)
            self.range_start = self.keys[size // 4]
            self.range_end = self.keys[3 * size // 4]

            # Fresh instances each time
            bptree = BPlusTree(t=3)
            bruteforce = BruteForceDB()

            bptree_result = self.benchmark(bptree, label="B+ Tree")
            brute_result = self.benchmark(bruteforce, label="BruteForceDB")

            for op in operations:
                bptree_stats[op].append(bptree_result[op])
                bruteforce_stats[op].append(brute_result[op])

        # Plotting each operation as a line plot
        for op in operations:
            plt.figure(figsize=(8, 4))
            plt.plot(sizes, bruteforce_stats[op], marker='o', label='BruteForceDB')
            plt.plot(sizes, bptree_stats[op], marker='s', label='B+ Tree')
            plt.title(f"{op} Performance vs Number of Keys")
            plt.xlabel("Number of Keys")
            ylabel = "Memory (KB)" if "Memory" in op else "Time (ms)"
            plt.ylabel(ylabel)
            plt.grid(True, linestyle='--', alpha=0.6)
            plt.legend()
            plt.tight_layout()
            plt.show()