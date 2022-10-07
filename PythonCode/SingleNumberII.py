from typing import List


class Solution:
    # Time complexity: O(n)
    # Space complexity: O(1)
    # Ref: https://leetcode.com/problems/single-number-ii/discuss/43403/Java-bit-manipulation-solution
    def singleNumber(self, nums: List[int]) -> int:
        # info of num appearing once, twice and thrice
        once = twice = thrice = 0
        for num in nums:
            twice |= (once & num)
            once ^= num
            thrice = once & twice

            # Clear info of num appearing thrice from once and twice
            once &= ~thrice
            twice &= ~thrice
        return once


if __name__ == '__main__':
    solution = Solution()
    print(solution.singleNumber([2, 2, 3, 2]))              # 3
    print(solution.singleNumber([0, 1, 0, 1, 0, 1, 99]))    # 99
