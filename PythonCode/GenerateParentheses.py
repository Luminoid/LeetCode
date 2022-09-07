from typing import List

"""
n-th Catalan numbers of length 2n
$
O(\prod_{i=1}^n \frac{i}{i+1} * {2n \choose n} * 2n)
\sim O(\frac{1}{n+1} * {2n \choose n} * 2n) 
\sim O(\frac{4^n}{n^{3\over 2}\sqrt{\pi}} * 2n)
\sim O(\frac{4^n}{n^{1\over 2}})
$
"""


class Solution:
    # Time complexity: O(4^n/n^0.5)
    # Space complexity: O(4^n/n^0.5)
    def generateSubParenthesis(self, prefix: str, level: int, left_count: int, right_count: int) -> List[str]:
        if left_count == 0 and right_count == 0:
            return [prefix]
        if level <= 0:
            return self.generateSubParenthesis(prefix + "(", level + 1, left_count - 1, right_count)
        elif left_count == 0:
            return self.generateSubParenthesis(prefix + ")", level - 1, left_count, right_count - 1)
        else:
            return self.generateSubParenthesis(prefix + "(", level + 1, left_count - 1, right_count) + \
                   self.generateSubParenthesis(prefix + ")", level - 1, left_count, right_count - 1)

    def generateParenthesis(self, n: int) -> List[str]:
        return self.generateSubParenthesis("", 0, n, n)


if __name__ == '__main__':
    solution = Solution()
    print(solution.generateParenthesis(3))  # ["((()))","(()())","(())()","()(())","()()()"]
    print(solution.generateParenthesis(1))  # ["()"]
    for i in range(10):                     # Catalan number
        print(len(solution.generateParenthesis(i)))

