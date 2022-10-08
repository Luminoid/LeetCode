class DeleteNodeinaLinkedList {
    // Time complexity: O(1)
    // Space complexity: O(1)
    public void deleteNode(ListNode node) {
        node.val = node.next.val;
        node.next = node.next.next;
    }

    public static void main(String[] args) {

    }
}
