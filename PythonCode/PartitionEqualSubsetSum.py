from typing import List, Optional


class Solution:
    matrix: [[]]

    # Top Down Dynamic Programming
    # Time complexity: O(mn)
    # Space complexity: O(mn)
    def canPartition(self, nums: List[int]) -> bool:
        sum_val = sum(nums)
        target = int(sum_val / 2)
        if sum_val % 2 == 1:
            return False
        self.matrix = [[None for _ in range(target + 1)] for _ in range(len(nums) + 1)]
        return self.canPartitionByTarget(nums, len(nums), target)

    def canPartitionByTarget(self, nums: List[int], index: int, target: int) -> bool:
        if index == 0 or target < 0:
            return False
        if target == 0:
            return True
        elif self.matrix[index][target] is not None:
            return self.matrix[index][target]
        else:
            value = nums[index-1]
            result = self.canPartitionByTarget(nums, index - 1, target - value) or self.canPartitionByTarget(nums, index - 1, target)
            self.matrix[index - 1][target] = result
            return result


if __name__ == '__main__':
    solution = Solution()
    print(solution.canPartition([1, 5, 11, 5])) # True
    print(solution.canPartition([1, 2, 3, 5]))  # False
    print(solution.canPartition([2, 4, 6, 21])) # False
    print(solution.canPartition([1, 2, 5]))     # False
