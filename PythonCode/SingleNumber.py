from typing import List


class Solution:
    # Time complexity: O(n)
    # Space complexity: O(1)
    def singleNumber(self, nums: List[int]) -> int:
        val = 0
        for num in nums:
            val ^= num
        return val


if __name__ == '__main__':
    solution = Solution()
    print(solution.singleNumber([2, 2, 1]))         # 1
    print(solution.singleNumber([4, 1, 2, 1, 2]))   # 4
    print(solution.singleNumber([1]))               # 1
