from typing import List


class Solution:
    # Time complexity: O(n)
    # Space complexity: O(1)
    # Boyer-Moore Voting Algorithm
    def majorityElement(self, nums: List[int]) -> int:
        majority = None
        count = 0
        for num in nums:
            if not majority or count == 0:
                majority = num
                count = 1
            elif majority == num:
                count += 1
            else:
                count -= 1
        return majority


if __name__ == '__main__':
    solution = Solution()
    print(solution.majorityElement([3, 2, 3]))              # 3
    print(solution.majorityElement([2, 2, 1, 1, 1, 2, 2]))  # 2
