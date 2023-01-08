//
//  TrimaBinarySearchTree.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/8/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(n)
    func trimBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> TreeNode? {
        guard let root = root else { return nil }
        if root.val > high {
            return trimBST(root.left, low, high)
        } else if root.val < low {
            return trimBST(root.right, low, high)
        }
        root.left = trimBST(root.left, low, high)
        root.right = trimBST(root.right, low, high)
        return root
    }
    
    static func main() {
        let solution = Solution()
    }
}
