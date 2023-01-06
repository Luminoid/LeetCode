from typing import List


class Solution:
    # Dynamic Programming
    # Time complexity: O(n)
    # Space complexity: O(1)
    def maxProfit(self, prices: List[int]) -> int:
        total_max = 0
        current_max = -100000
        previous_price = 0
        for price in prices:
            current_max = max(0, current_max + price - previous_price)
            total_max = max(current_max, total_max)
            previous_price = price
        return total_max


if __name__ == '__main__':
    solution = Solution()
    print(solution.maxProfit([7, 1, 5, 3, 6, 4]))  # 5
    print(solution.maxProfit([7, 6, 4, 3, 1]))  # 0
