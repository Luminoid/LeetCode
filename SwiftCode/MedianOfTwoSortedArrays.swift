//
//  MedianOfTwoSortedArrays.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/8/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(log(n1+n2))
    // Space complexity: O(1)
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        guard nums1.count <= nums2.count else { return findMedianSortedArrays(nums2, nums1) }
        let n1 = nums1.count
        let n2 = nums2.count
        let mid: Int = (n1 + n2) / 2

        var low = 0
        var high = n1   // n1 is when median > nums1.max
        while(low <= high) {
            let mid1 = (high + low) / 2
            let mid2 = mid - mid1
            let l1 = mid1 == 0 ? Int.min : nums1[mid1 - 1]
            let l2 = mid2 == 0 ? Int.min : nums2[mid2 - 1]
            let r1 = (mid1 > n1 - 1) ? Int.max : nums1[mid1]
            let r2 = (mid2 > n2 - 1) ? Int.max : nums2[mid2]
            if (r1 < l2) {
                low = mid1 + 1
            } else if (r2 < l1) {
                high = mid1 - 1
            } else {
                // l1 l2 r1 r2, l1 l2 r2 r1, l2 l1 r2 r1, l2 l1 r1 r2
//                print(l1, r1, l2, r2)
                return (n1 + n2) % 2 == 0 ? Double(max(l1, l2) + min(r1, r2)) / 2.0 : Double(min(r1, r2))
            }
        }
        return 0
    }
    
    static func main() {
        let solution = Solution()
        print(solution.findMedianSortedArrays([1,3], [2]))                  // 2
        print(solution.findMedianSortedArrays([1,2], [3,4]))                // 2.5
        print(solution.findMedianSortedArrays([1,3,5], [2,4,6]))            // 3.5
        print(solution.findMedianSortedArrays([2,4,6,8,10], [5,7,9,11,13])) // 7.5
        print(solution.findMedianSortedArrays([2,4,6,8,10], [7,9,11,13]))   // 8
        print(solution.findMedianSortedArrays([6,8,10,12], [1,3,5,7]))      // 6.5
        print(solution.findMedianSortedArrays([1], [3,5,7]))                // 4
    }
}
