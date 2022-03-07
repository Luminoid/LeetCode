from typing import List


class Solution:
    # 2 pointers
    # Time complexity: O(n)
    # Space complexity: O(1)
    def trap(self, height: List[int]) -> int:
        left = 0
        right = len(height) - 1
        left_max = 0
        right_max = 0
        sum_value = 0

        while left < right:
            if height[left] <= height[right]:
                left_max = max(height[left], left_max)
                sum_value += left_max - height[left]
                left += 1
            if height[right] < height[left]:
                right_max = max(height[right], right_max)
                sum_value += right_max - height[right]
                right -= 1
        return sum_value

    # def trap(self, height: List[int]) -> int:
    #     sum_value = 0
    #     pointer_list = []
    #     for index in range(len(height)):
    #         if index == 0:
    #             if height[index] > 0:
    #                 pointer_list.append(index)
    #         else:
    #             if height[index] > height[index - 1]:
    #                 if pointer_list:
    #                     last_pointer = pointer_list[-1]
    #                     min_height = min(height[last_pointer], height[index])
    #                     for j in range(last_pointer, index):
    #                         if height[j] < min_height:
    #                             sum_value += min_height - height[j]
    #                     while height[index] >= height[last_pointer]:
    #                         if len(pointer_list) > 1:
    #                             previous_pointer = pointer_list[-2]
    #                             min_height = min(height[previous_pointer], height[index])
    #                             sum_value += (min_height-height[last_pointer]) * (index - previous_pointer - 1)
    #                         pointer_list.pop()
    #                         if pointer_list:
    #                             last_pointer = pointer_list[-1]
    #                         else:
    #                             break
    #             pointer_list.append(index)
    #     return sum_value


if __name__ == '__main__':
    solution = Solution()
    print(solution.trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]))  # 6
    print(solution.trap([6, 4, 2, 0, 3, 2, 0, 3, 1, 4, 5, 3, 2, 7, 5, 3, 0, 1, 2, 1, 3, 4, 6, 8, 1, 3]))  # 83
