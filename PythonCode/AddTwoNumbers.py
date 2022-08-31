from typing import Optional

from ListNode import ListNode, generateListNodes, printListNode


class Solution:
    # Time complexity: O(max(m, n))
    # Space complexity: O(max(m, n))
    def insertFront(self, num: int, listNode: ListNode) -> ListNode:
        return ListNode(num, listNode)

    def generateReversedListNodes(self, nums: [int]) -> ListNode:
        list_node = None
        for num in nums:
            node = self.insertFront(num, list_node)
            list_node = node
        return list_node

    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        sum_val = 0
        for l in [l1, l2]:
            s = 0
            index = 1
            while l:
                s += l.val * index
                index *= 10
                l = l.next
            sum_val += s
        nums = [int(digit) for digit in str(sum_val)]
        return self.generateReversedListNodes(nums)


if __name__ == '__main__':
    solution = Solution()
    a = generateListNodes([2, 4, 3])
    b = generateListNodes([5, 6, 4])
    c = generateListNodes([0])
    d = generateListNodes([0])
    e = generateListNodes([2, 4, 9])
    f = generateListNodes([5, 6, 4, 9])
    printListNode(solution.addTwoNumbers(a, b))  # [7, 0, 8]
    printListNode(solution.addTwoNumbers(c, d))  # [0]
    printListNode(solution.addTwoNumbers(e, f))  # [7, 0, 4, 0, 1]
