//
//  HammingDistance.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/6/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(1)
    // Space complexity: O(1)
    
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        return (x ^ y).nonzeroBitCount
    }
    
    static func main() {
        let solution = Solution()
        print(solution.hammingDistance(1, 4))   // 2
        print(solution.hammingDistance(3, 1))   // 1
        print(solution.hammingDistance(12, 10)) // 2
    }
}
