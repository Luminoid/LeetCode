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
    
    public class func generateTree(arr: [Int?]) -> TreeNode? {
        guard arr.count > 0, let rootValue = arr[0] else { return nil }
        
        let root = TreeNode(rootValue)
        var list: [TreeNode] = [root]
        
        for i in stride(from: 1, to: arr.count, by: 2) {
            let parent = list.removeFirst()
            if let v = arr[i] {
                let left = TreeNode(v)
                parent.left = left
                list.append(left)
            }
            if i + 1 < arr.count, let v = arr[i+1] {
                let right = TreeNode(v)
                parent.right = right
                list.append(right)
            }
        }
        return root
    }
    
    public class func printTree(root: TreeNode?) {
        guard let root = root else {
            print("[]")
            return
        }
        var list: [TreeNode?] = [root]
        var res: [String] = []
        
        while !list.isEmpty {
            if let parent = list.removeFirst() {
                res.append("\(parent.val)")
                if let left = parent.left {
                    list.append(left)
                } else if parent.right != nil {
                    list.append(nil)
                }
                if let right = parent.right {
                    list.append(right)
                }
            } else {
                res.append("null")
            }
        }
        print("[\(res.joined(separator: ","))]")
    }
}
