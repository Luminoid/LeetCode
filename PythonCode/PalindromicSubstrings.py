class Solution:
    # Time complexity: O(n^2)
    # Space complexity: O(1)
    def countSubstrings(self, s: str) -> int:
        count = 0
        for i in range(len(s)):
            count += self.countPalindrome(s, i, i)
            count += self.countPalindrome(s, i, i + 1)
        return count

    def countPalindrome(self, s: str, begin, end) -> int:
        count = 0
        while begin >= 0 and end < len(s) and s[begin] == s[end]:
            count += 1
            begin -= 1
            end += 1
        return count


if __name__ == '__main__':
    solution = Solution()
    print(solution.countSubstrings("abc"))  # 3
    print(solution.countSubstrings("aaa"))  # 6
