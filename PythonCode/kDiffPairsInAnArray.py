from typing import List


class Solution:
    # Time complexity: O(n)
    # Space complexity: O(n)
    def findPairs(self, nums: List[int], k: int) -> int:
        hashmap = {}
        pairs = set()
        for num in nums:
            if hashmap.get(num - k, False):
                pairs.add((num-k, num))
            if hashmap.get(num + k, False):
                pairs.add((num, num+k))
            hashmap[num] = True
        return len(pairs)


if __name__ == '__main__':
    solution = Solution()

    print(solution.findPairs([3, 1, 4, 1, 5], 2))   # 2
    print(solution.findPairs([1, 2, 3, 4, 5], 1))   # 4
    print(solution.findPairs([1, 3, 1, 5, 4], 0))   # 1
    print(solution.findPairs([-1, -2, -3], 1))      # 2
