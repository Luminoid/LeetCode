//
//  MergeTwoBinaryTrees.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/7/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(m + n)
    // Space complexity: O(m + n)
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        if root1 == nil && root2 == nil {
            return nil
        }
        let root = TreeNode()
        root.val = (root1?.val ?? 0) + (root2?.val ?? 0)
        root.left = mergeTrees(root1?.left, root2?.left)
        root.right = mergeTrees(root1?.right, root2?.right)
        return root
    }
    
    static func main() {
        let solution = Solution()
    }
}
