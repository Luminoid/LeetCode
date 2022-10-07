from typing import Optional
from TreeNode import TreeNode


class Solution:
    # Time complexity: O(N)
    # Space complexity: O(N)    (Stack space)
    def isSameTree(self, p: Optional[TreeNode], q: Optional[TreeNode]) -> bool:
        if p and q:
            return p.val == q.val and self.isSameTree(p.left, q.left) and self.isSameTree(p.right, q.right)
        else:
            return p is None and q is None


if __name__ == '__main__':
    solution = Solution()
