from typing import List


class Solution:
    # Dynamic Programming
    # Time complexity: O(n)
    # Space complexity: O(1)
    def maxSubArray(self, nums: List[int]) -> int:
        current_max = nums[0]
        total_max = nums[0]
        for num in nums[1:]:
            current_max = max(current_max + num, num)
            total_max = max(current_max, total_max)
        return total_max


if __name__ == '__main__':
    solution = Solution()
    print(solution.maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]))    # 6
    print(solution.maxSubArray([1]))                                # 1
    print(solution.maxSubArray([5, 4, -1, 7, 8]))                   # 23
    print(solution.maxSubArray([-1]))                               # -1
