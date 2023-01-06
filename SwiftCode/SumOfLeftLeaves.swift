//
//  SumOfLeftLeaves.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/5/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(n)
    
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        if let leftChild = root.left, leftChild.left == nil, leftChild.right == nil {
            return leftChild.val + sumOfLeftLeaves(root.right)
        }
        return sumOfLeftLeaves(root.left) + sumOfLeftLeaves(root.right)
    }
    
    static func main() {
        let solution = Solution()
    }
}
