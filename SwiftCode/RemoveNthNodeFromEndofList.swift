//
//  RemoveNthNodeFromEndofList.swift
//  SwiftCode
//
//  Created by Luminoid Li on 3/6/23.
//

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(1)
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var front = head
        var back = head
        for i in 0..<n {
            front = front?.next
        }
        if front == nil {
            return head?.next
        }
        while front?.next != nil {
            front = front?.next
            back = back?.next
        }
        back?.next = back?.next?.next
        return head
    }
    
    static func main() {
        [
            (Util.generateList(arr: [1,2,3,4,5]), 2),   // [1,2,3,5]
            (Util.generateList(arr: [1]), 1),           // []
            (Util.generateList(arr: [1,2]), 1),         // [1]
        ].forEach {
            let solution = Solution()
            Util.printList(head: solution.removeNthFromEnd($0, $1))
        }
    }
}
