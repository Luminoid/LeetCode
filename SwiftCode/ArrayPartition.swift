//
//  ArrayPartition.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/7/23.
//

import Foundation

//@main
private class Solution {
    // Greedy
    // Time complexity: O(n log(n))
    // Space complexity: O(n)
    func arrayPairSum(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted()
        return sortedNums.enumerated().filter { (i, num) in i % 2 == 0 }.map { $0.1 }.reduce(0, +)
    }
    
    static func main() {
        let solution = Solution()
        print(solution.arrayPairSum([1,4,3,2]))     // 4
        print(solution.arrayPairSum([6,2,6,5,1,2])) // 9
    }
}
