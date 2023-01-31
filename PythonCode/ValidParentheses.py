class Solution:
    # Stack
    # Time complexity: O(n)
    # Space complexity: O(n)
    def isValid(self, s: str) -> bool:
        stack = []
        map = {'(': ')', '[': ']', '{': '}'}

        for c in s:
            if c == '(' or c == '[' or c == '{':
                stack.append(c)
            if c == ')' or c == ']' or c == '}':
                if not stack:
                    return False
                if c != map[stack.pop()]:
                    return False
        return not stack


if __name__ == '__main__':
    solution = Solution()
    print(solution.isValid("()"))           # true
    print(solution.isValid("()[]{}"))       # true
    print(solution.isValid("(]"))           # false
    print(solution.isValid("("))            # false
    print(solution.isValid("({[{[]}][}])")) # false
