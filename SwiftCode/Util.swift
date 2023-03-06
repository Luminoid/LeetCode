//
//  Util.swift
//  SwiftCode
//
//  Created by Luminoid Li on 3/6/23.
//

public class Util {
    public class func generateList(arr: [Int]) -> ListNode? {
        var next: ListNode? = nil
        var head: ListNode? = nil
        for item in arr.reversed() {
            let node = ListNode(item, next)
            head = node
            next = node
        }
        return head
    }
    
    public class func printList(head: ListNode?) {
        var head: ListNode? = head
        while head != nil {
            print(head!.val, terminator: " ")
            head = head?.next
        }
        print()
    }
}
