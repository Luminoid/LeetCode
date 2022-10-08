class Solution:
    # Time complexity: O(n)
    # Space complexity: O(1)
    def titleToNumber(self, columnTitle: str) -> int:
        res = 0
        for i in range(len(columnTitle)):
            res += (ord(columnTitle[i]) - ord("A") + 1) * (26 ** (len(columnTitle) - i - 1))
        return res


if __name__ == '__main__':
    solution = Solution()
    for t in [
        "A",    # 1
        "AB",   # 28
        "ZY"    # 701
    ]:
        print(solution.titleToNumber(t))
