class Solution:
    # Greedy
    # Time complexity: O(n)
    # Space complexity: O(n)
    def removeDuplicateLetters(self, s: str) -> str:
        hashmap = {}
        smallest_letter_index = 0
        for char in s:
            hashmap[char] = hashmap.get(char, 0) + 1

        # Find the index of the smallest letter
        for index, char in enumerate(s):
            if char < s[smallest_letter_index]:
                smallest_letter_index = index
            hashmap[char] -= 1
            if hashmap[char] == 0:
                break

        if smallest_letter_index < len(s):
            current_char = s[smallest_letter_index]
            return current_char + self.removeDuplicateLetters(s[(smallest_letter_index + 1):].replace(current_char, ''))
        else:
            return ""


if __name__ == '__main__':
    solution = Solution()
    print(solution.removeDuplicateLetters("bcabc"))     # "abc"
    print(solution.removeDuplicateLetters("cbacdcbc"))  # "acdb"
    print(solution.removeDuplicateLetters("ebcdaceb"))  # "bcdae"
    print(solution.removeDuplicateLetters("abacb"))     # "abc"
