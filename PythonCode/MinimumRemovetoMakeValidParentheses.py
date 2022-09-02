class Solution:
    # Stack
    # Time complexity: O(n)
    # Space complexity: O(n)
    def minRemoveToMakeValid(self, s: str) -> str:
        stack = []
        for c in s:
            if c != ")":
                stack.append(c)
            elif c == ")" and stack:
                top = stack.pop()
                valid_str = top
                while top != "(" and stack:
                    top = stack.pop()
                    valid_str = top + valid_str
                if top == "(":
                    stack.append(valid_str + ")")
                elif not stack:
                    stack.append(valid_str)
        return ''.join([elem for elem in stack if elem != "("])


if __name__ == '__main__':
    solution = Solution()
    print(solution.minRemoveToMakeValid("lee(t(c)o)de)"))   # lee(t(c)o)de
    print(solution.minRemoveToMakeValid("a)b(c)d"))         # ab(c)d
    print(solution.minRemoveToMakeValid("))(("))            #
    print(solution.minRemoveToMakeValid("())()((("))        # ()()
    print(solution.minRemoveToMakeValid("(())()()(())"))    # (())()()(())
