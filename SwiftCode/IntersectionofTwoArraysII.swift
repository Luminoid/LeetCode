//
//  IntersectionofTwoArraysII.swift
//  SwiftCode
//
//  Created by Luminoid Li on 10/10/22.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(m+n)
    // Space complexity: O(max(m+n))
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var count: [Int: Int] = [:]
        var intersect: [Int] = []
        for num in nums1 {
            count[num] = (count[num, default: 0]) + 1
        }
        for num in nums2 {
            if count[num, default: 0] > 0 {
                intersect.append(num)
                count[num] = count[num, default: 0] - 1
            }
        }
        return intersect
    }
    
    static func main() {
        let solution = Solution()
        print(solution.intersect([1,2,2,1], [2,2]))      // [2,2]
        print(solution.intersect([4,9,5], [9,4,9,8,4]))  // [4,9]
    }
}
