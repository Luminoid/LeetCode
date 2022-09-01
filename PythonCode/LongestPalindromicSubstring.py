class Solution:
    # Time complexity: O(n^2)
    # Space complexity: O(1)
    def longestPalindromeByIndex(self, s: str, left: int, right: int) -> str:
        while left >= 0 and right < len(s) and s[left] == s[right]:
            right += 1
            left -= 1
        return s[left+1:right]

    def longestPalindrome(self, s: str) -> str:
        longest_str = ""
        for i in range(len(s)):
            str1 = self.longestPalindromeByIndex(s, i, i)
            str2 = self.longestPalindromeByIndex(s, i, i + 1)
            if len(str1) > len(longest_str):
                longest_str = str1
            if len(str2) > len(longest_str):
                longest_str = str2
        return longest_str


if __name__ == '__main__':
    solution = Solution()
    print(solution.longestPalindrome("babad"))  # bab
    print(solution.longestPalindrome("cbbd"))   # bb
    print(solution.longestPalindrome("d"))      # d
