from typing import Optional
from ListNode import ListNode


class Solution:
    # Two pointers
    # Time complexity: O(n)
    # Space complexity: O(1)
    def detectCycle(self, head: Optional[ListNode]) -> Optional[ListNode]:
        fast = head
        slow = head
        while fast and slow:
            if not fast.next:
                return None
            fast = fast.next.next
            slow = slow.next
            if fast == slow:
                # Get cycle size
                fast = fast.next
                cycle_size = 1
                while fast != slow:
                    fast = fast.next
                    cycle_size += 1
                # Get cycle entrance
                fast = head
                slow = head
                for _ in range(cycle_size):
                    fast = fast.next
                while fast != slow:
                    fast = fast.next
                    slow = slow.next
                return fast
        return None


if __name__ == '__main__':
    solution = Solution()
    a = ListNode(-4)
    b = ListNode(0, a)
    c = ListNode(2, b)
    d = ListNode(3, c)
    a.next = c
    e = ListNode(1)
    print(solution.detectCycle(d).val)  # 2
    print(solution.detectCycle(e))      # None
