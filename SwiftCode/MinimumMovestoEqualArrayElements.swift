//
//  MinimumMovestoEqualArrayElements.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/6/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(1)
    
    func minMoves(_ nums: [Int]) -> Int {
        return nums.reduce(0, +) - (nums.min() ?? 0) * nums.count
    }
    
    static func main() {
        let solution = Solution()
        print(solution.minMoves([1,2,3]))           // 3
        print(solution.minMoves([1,1,1]))           // 0
        print(solution.minMoves([1,1,1000000000]))  // 999999999
        print(solution.minMoves([1,1,50,50,100]))   // 197
    }
}
