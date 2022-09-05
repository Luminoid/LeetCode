from typing import List


class Solution:
    # Time complexity: O(n^2)
    # Space complexity: O(n)
    def threeSum(self, nums: List[int]) -> List[List[int]]:
        num_count = {}
        result = []
        for num in nums:
            num_count[num] = num_count.get(num, 0) + 1
        nums = sorted(num_count.keys())
        # no duplicate
        for x in range(len(nums)):
            maxY = nums[-1]
            y = x + 1
            while y < len(nums) and nums[y] < maxY:
                target = -nums[x] - nums[y]
                if target in num_count and target > nums[x] and target > nums[y]:
                    item = [nums[x], nums[y], target]
                    if item not in result:
                        result.append(item)
                        maxY = target
                y += 1

        # two duplicate
        for num in nums:
            if num_count[num] >= 2:
                target = -num * 2
                if target in num_count and target != 0:
                    result.append([num, num, target])

        # three duplicate
        if num_count.get(0, 0) >= 3:
            result.append([0, 0, 0])

        return result


if __name__ == '__main__':
    solution = Solution()
    print(solution.threeSum([-1, 0, 1, 2, -1, -4]))     # [[-1, 0, 1], [-1, -1, 2]]
    print(solution.threeSum([0, 1, 1]))                 # []
    print(solution.threeSum([0, 0, 0, 0, 0, 0]))        # [[0, 0, 0]]
    print(solution.threeSum([-4, -1, -4, 0, 2, -2, -4, -3, 2, -3, 2, 3, 3, -4]))  # [[-3, 0, 3], [-2, -1, 3], [-2, 0, 2], [2, 2, -4]]

