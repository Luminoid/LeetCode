class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


def insertFront(num: int, listNode: ListNode) -> ListNode:
    return ListNode(num, listNode)


def generateListNodes(nums: [int]) -> ListNode:
    list_node = None
    for num in reversed(nums):
        node = insertFront(num, list_node)
        list_node = node
    return list_node


def printListNode(listNode: ListNode):
    print("[" + str(listNode.val), end="")
    current_list_node = listNode
    while current_list_node.next:
        print(", ", end="")
        current_list_node = current_list_node.next
        print(current_list_node.val, end="")
    print("]")
