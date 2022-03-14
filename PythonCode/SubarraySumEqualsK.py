from typing import List


class Solution:
    # Hashmap
    # Time complexity: O(n)
    # Space complexity: O(n)
    def subarraySum(self, nums: List[int], k: int) -> int:
        sum_map = {0: 1}
        current_sum = 0
        count = 0
        for num in nums:
            current_sum += num
            sum_map[current_sum] = sum_map.get(current_sum, 0) + 1
            if k != 0:
                count += sum_map.get(current_sum - k, 0)
            else:
                count += sum_map.get(current_sum, 0) - 1
        return count


if __name__ == '__main__':
    solution = Solution()
    print(solution.subarraySum([1, 1, 1], 2))  # 2
    print(solution.subarraySum([1, 2, 3], 3))  # 2
    print(solution.subarraySum([1], 0))  # 0
    print(solution.subarraySum([-1, -1, 1], 1))  # 1
    print(solution.subarraySum([1, -1, 0], 0))  # 3
    print(solution.subarraySum([1, 2, 3, -3, 1], 3))  # 4
    print(solution.subarraySum([1, 3, 2, -2, 4, 1, 3], 4))  # 5
    print(solution.subarraySum([3, -3, 4, -4, 5, -5], 0))  # 6
