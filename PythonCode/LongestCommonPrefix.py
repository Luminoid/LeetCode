from typing import List


class Solution:
    # Time complexity: O(S)     (S is the sum length of all strings)
    # Space complexity: O(1)
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if len(strs) <= 0:
            return ""
        for i in range(len(strs[0])):
            for str in strs:
                if len(str) > i:
                    if str[i] != strs[0][i]:
                        return str[0:i]
                else:
                    return str[0:i]
        return strs[0]


if __name__ == '__main__':
    solution = Solution()
    print(solution.longestCommonPrefix(["flower", "flow", "flight"]))   # "fl"
    print(solution.longestCommonPrefix(["dog", "racecar", "car"]))      # ""
    print(solution.longestCommonPrefix([""]))                           # ""
    print(solution.longestCommonPrefix(["a"]))                          # "a"
