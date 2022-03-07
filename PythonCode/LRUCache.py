from collections import OrderedDict


class LRUCache:
    # Space complexity: O(capacity)
    def __init__(self, capacity: int):
        self.capacity = capacity
        self.orderedDict = OrderedDict()

    # Time complexity: O(1)
    def get(self, key: int) -> int:
        if key not in self.orderedDict:
            return -1
        self.orderedDict.move_to_end(key)
        return self.orderedDict[key]

    # Time complexity: O(1)
    def put(self, key: int, value: int) -> None:
        self.orderedDict[key] = value
        self.orderedDict.move_to_end(key)
        if len(self.orderedDict) > self.capacity:
            self.orderedDict.popitem(last=False)


if __name__ == '__main__':
    lRUCache = LRUCache(2)
    lRUCache.put(1, 1)      # cache is {1=1}
    lRUCache.put(2, 2)      # cache is {1=1, 2=2}
    print(lRUCache.get(1))  # return 1
    lRUCache.put(3, 3)      # LRU key was 2, evicts key 2, cache is {1=1, 3=3}
    print(lRUCache.get(2))  # returns -1 (not found)
    lRUCache.put(4, 4)      # LRU key was 1, evicts key 1, cache is {3=3, 4=4}
    print(lRUCache.get(1))  # return -1 (not found)
    print(lRUCache.get(3))  # return 3
    print(lRUCache.get(4))  # return 4
    lRUCache.put(4, 5)      # cache is {3=3, 4=5}
    print(lRUCache.get(3))  # return 3

# Your LRUCache object will be instantiated and called as such:
# obj = LRUCache(capacity)
# param_1 = obj.get(key)
# obj.put(key,value)
