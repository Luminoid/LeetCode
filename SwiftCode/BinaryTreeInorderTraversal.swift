//
//  BinaryTreeInorderTraversal.swift
//  SwiftCode
//
//  Created by Luminoid Li on 3/6/23.
//

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(n) worst; O(log n) in average
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        return inorderTraversal(root.left) + [root.val] + inorderTraversal(root.right)
    }
    
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
