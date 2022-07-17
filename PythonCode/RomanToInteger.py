class Solution:
    # Time complexity: O(n)
    # Space complexity: O(1)
    def value(self, c: str) -> int:
        if c == 'I':
            return 1
        elif c == 'V':
            return 5
        elif c == 'X':
            return 10
        elif c == 'L':
            return 50
        elif c == 'C':
            return 100
        elif c == 'D':
            return 500
        elif c == 'M':
            return 1000
        return 0

    def romanToInt(self, s: str) -> int:
        current_unit = 1
        sum = 0
        for c in reversed(s):
            val = self.value(c)
            if val >= current_unit:
                sum += val
                current_unit = val
            else:
                sum -= val
        return sum


if __name__ == '__main__':
    solution = Solution()
    print(solution.romanToInt("I"))         # 1
    print(solution.romanToInt("LVIII"))     # 58
    print(solution.romanToInt("MCMXCIV"))   # 1994
