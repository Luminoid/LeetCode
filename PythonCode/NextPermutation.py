from typing import List


class Solution:
    # Time complexity: O(n)
    # Space complexity: O(1)
    def nextPermutation(self, nums: List[int]) -> None:
        previous = nums[-1]
        index = -1
        # Find the first decreasing element `nums[index]` starting from index `n-1`
        for i in reversed(range(len(nums))):
            if nums[i] < previous:
                index = i
                break
            else:
                previous = nums[i]
        # From all the elements greater than `nums[index]`, find the smallest one and swap with `nums[index]`
        if index != -1:
            next_index = index + 1
            for i in range(index + 1, len(nums)):
                if nums[next_index] >= nums[i] > nums[index]:
                    next_index = i
            nums[index], nums[next_index] = nums[next_index], nums[index]
        # Reverse the sub-array starting from index `index+1`
        for i in range(index + 1, int((len(nums) + index + 1) / 2)):
            target = len(nums) + index - i
            if nums[i] > nums[target]:
                nums[i], nums[target] = nums[target], nums[i]
            else:
                return


if __name__ == '__main__':
    solution = Solution()
    for nums in [[1, 2, 3], [3, 2, 1], [1, 3, 2], [1, 1, 5], [2, 4, 3, 1], [2, 1, 2, 2, 2, 2, 2, 1]]:
        solution.nextPermutation(nums)
        print(nums)

    # [1,3,2]
    # [1,2,3]
    # [2,1,3]
    # [1,5,1]
    # [3,1,2,4]
    # [2,2,1,1,2,2,2,2]
