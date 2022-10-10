//
//  IntersectionofTwoArrays.swift
//  SwiftCode
//
//  Created by Luminoid Li on 10/10/22.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(m+n)
    // Space complexity: O(m+n)
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let set1 = Set(nums1)
        let set2 = Set(nums2)
        return Array(set1.intersection(set2))
    }
    
    static func main() {
        let solution = Solution()
        print(solution.intersection([1,2,2,1], [2,2]))      // [2]
        print(solution.intersection([4,9,5], [9,4,9,8,4]))  // [9, 4]
    }
}
