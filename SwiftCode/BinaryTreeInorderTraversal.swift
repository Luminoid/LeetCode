//
//  BinaryTreeInorderTraversal.swift
//  SwiftCode
//
//  Created by Luminoid Li on 3/6/23.
//

//@main
private class Solution {
    // Morris Traversal
    // Time complexity: O(n)
    // Space complexity: O(1)
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        var res: [Int] = []
        var current: TreeNode? = root
        while (current != nil) {
            if let left = current?.left {
                var rightMost: TreeNode? = left
                while rightMost?.right != nil {
                    rightMost = rightMost?.right
                }
                rightMost?.right = current
                let temp = current
                current = current?.left
                temp?.left = nil
            } else {
                res.append(current!.val)
                current = current!.right
            }
        }
        return res
    }
    
//    // Time complexity: O(n)
//    // Space complexity: O(n) worst; O(log n) in average
//    func inorderTraversal(_ root: TreeNode?) -> [Int] {
//        guard let root = root else { return [] }
//        return inorderTraversal(root.left) + [root.val] + inorderTraversal(root.right)
//    }
    
    static func main() {
        [
            Util.generateTree(arr: [1,nil,2,3]),    // [1,3,2]
            Util.generateTree(arr: []),             // []
            Util.generateTree(arr: [1]),            // [1]
        ].forEach {
            let solution = Solution()
            print(solution.inorderTraversal($0))
        }
    }
}
