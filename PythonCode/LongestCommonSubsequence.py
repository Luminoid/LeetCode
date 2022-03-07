class Solution:
    # Dynamic Programming
    # Time complexity: O(mn)
    # Space complexity: O(mn)
    def longestCommonSubsequence(self, text1: str, text2: str) -> int:
        matrix = [[0] * (len(text2) + 1) for _ in range(len(text1) + 1)]

        for i in range(len(text1)):
            for j in range(len(text2)):
                if text1[i] == text2[j]:
                    matrix[i + 1][j + 1] = matrix[i][j] + 1
                elif matrix[i][j + 1] >= matrix[i + 1][j]:
                    matrix[i + 1][j + 1] = matrix[i][j + 1]
                else:
                    matrix[i + 1][j + 1] = matrix[i + 1][j]
        return matrix[-1][-1]


if __name__ == '__main__':
    solution = Solution()
    print(solution.longestCommonSubsequence("abcde", "ace"))                # 3
    print(solution.longestCommonSubsequence("abc", "abc"))                  # 3
    print(solution.longestCommonSubsequence("abc", "def"))                  # 0
    print(solution.longestCommonSubsequence("oxcpqrsvwf", "shmtulqrypy"))   # 2
