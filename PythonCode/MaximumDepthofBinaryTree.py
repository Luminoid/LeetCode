from typing import Optional
from TreeNode import TreeNode


class Solution:
    # Time complexity: O(N)
    # Space complexity: O(N)
    def maxDepth(self, root: Optional[TreeNode]) -> int:
        if not root:
            return 0
        return 1 + max(self.maxDepth(root.right), self.maxDepth(root.left))


if __name__ == '__main__':
    solution = Solution()
