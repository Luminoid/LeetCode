class Solution:
    # KMP
    # Time complexity: O(n)
    # Space complexity: O(n)
    def maxRepeating(self, sequence: str, word: str) -> int:
        n = len(sequence)
        m = len(word)
        prefix_func = self.compute_prefix_function(word)
        max_arr = [0 for _ in sequence]
        result = 0
        q = 0  # Current index in word
        for i in range(0, n):
            while q > 0 and word[q] != sequence[i]:
                q = prefix_func[q - 1]
            if word[q] == sequence[i]:
                q = q + 1
            if q == m:
                max_arr[i] = 1 if i - m < 0 else max_arr[i - m] + 1
                result = max(max_arr[i], result)
                q = prefix_func[q - 1]
        return result

    def compute_prefix_function(self, word):
        arr = [0 for _ in word]
        k = 0
        for i in range(1, len(word)):
            while k > 0 and word[k] != word[i]:
                k = arr[k - 1]
            if word[k] == word[i]:
                k = k + 1
            arr[i] = k
        return arr


if __name__ == '__main__':
    solution = Solution()
    print(solution.maxRepeating("ababc", "ab"))  # 2
    print(solution.maxRepeating("ababc", "ba"))  # 1
    print(solution.maxRepeating("ababc", "ac"))  # 0
    print(solution.maxRepeating("abababac", "aba"))  # 1
    print(solution.maxRepeating("aaabaaaabaaabaaaabaaaabaaaabaaaaba", "aaaba"))  # 5
