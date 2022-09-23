import math


class Solution:
    # Time complexity: O()
    # Space complexity: O()
    def reverse(self, x: int) -> int:
        if x == 0:
            return 0
        abs_x = abs(x)
        is_negative = x < 0
        digit_count = int(math.log10(abs_x))+1
        result = 0
        for i in range(digit_count):
            result = result + (int(abs_x / (10 ** i)) % 10) * (10 ** (digit_count - i - 1))
        if is_negative:
            result = -result
        if result > 2 ** 31 - 1 or result < -(2 ** 31):
            return 0
        return result


if __name__ == '__main__':
    solution = Solution()
    for i in [
        # 0,              # 0
        # 1234,           # 4321
        # -123,           # -321
        # 120,            # 21
        -2147483648     # 0
    ]:
        print(solution.reverse(i))

