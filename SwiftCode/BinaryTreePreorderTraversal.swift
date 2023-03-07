//
//  BinaryTreePreorderTraversal.swift
//  SwiftCode
//
//  Created by Luminoid Li on 3/6/23.
//

//@main
private class Solution {
    // For Morris Traversal solution, see BinaryTreeIngorderTraversal.swift
    // Time complexity: O(n)
    // Space complexity: O(n) worst; O(log n) in average
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        return [root.val] + preorderTraversal(root.left) + preorderTraversal(root.right)
    }
    
    static func main() {
        [
            Util.generateTree(arr: [1,nil,2,3]),    // [1,2,3]
            Util.generateTree(arr: []),             // []
            Util.generateTree(arr: [1]),            // [1]
        ].forEach {
            let solution = Solution()
            print(solution.preorderTraversal($0))
        }
    }
}
