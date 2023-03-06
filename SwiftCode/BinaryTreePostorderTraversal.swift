//
//  BinaryTreePostorderTraversal.swift
//  SwiftCode
//
//  Created by Luminoid Li on 3/6/23.
//

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(n) worst; O(log n) in average
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        return postorderTraversal(root.left) + postorderTraversal(root.right) + [root.val]
    }
    
    static func main() {
        [
            Util.generateTree(arr: [1,nil,2,3]),    // [3,2,1]
            Util.generateTree(arr: []),             // []
            Util.generateTree(arr: [1]),            // [1]
        ].forEach {
            let solution = Solution()
            print(solution.postorderTraversal($0))
        }
    }
}
