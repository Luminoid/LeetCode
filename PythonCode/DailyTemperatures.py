from typing import List


class Solution:
    # Stack
    # Time complexity: O(n)
    # Space complexity: O(n)
    def dailyTemperatures(self, temperatures: List[int]) -> List[int]:
        stack = []
        result = [0 for _ in temperatures]
        for index, temperature in enumerate(temperatures):
            while stack and stack[-1][0] < temperature:
                val = stack.pop()
                result[val[1]] = index - val[1]
            stack.append((temperature, index))
        return result


if __name__ == '__main__':
    solution = Solution()
    print(solution.dailyTemperatures([73, 74, 75, 71, 69, 72, 76, 73]))     # [1,1,4,2,1,1,0,0]
    print(solution.dailyTemperatures([30, 40, 50, 60]))                     # [1,1,1,0]
    print(solution.dailyTemperatures([30, 60, 90]))                         # [1,1,0]
