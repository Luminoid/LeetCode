from typing import Optional
from ListNode import ListNode


class Solution:
    # Two Pointers
    # Time complexity: O(n)
    # Space complexity: O(1)
    def hasCycle(self, head: Optional[ListNode]) -> bool:
        fast = head
        slow = head
        while fast and slow:
            if not fast.next:
                return False
            fast = fast.next.next
            slow = slow.next
            if fast == slow:
                return True
        return False


if __name__ == '__main__':
    solution = Solution()
    a = ListNode(-4)
    b = ListNode(0, a)
    c = ListNode(2, b)
    d = ListNode(3, c)
    a.next = c
    e = ListNode(1)
    print(solution.hasCycle(a))     # True
    print(solution.hasCycle(e))     # False
