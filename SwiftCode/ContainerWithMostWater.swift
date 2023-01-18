//
//  ContainerWithMostWater.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/18/23.
//

import Foundation

//@main
private class Solution {
    // Two Pointers
    // Time complexity: O(n)
    // Space complexity: O(1)
    func maxArea(_ height: [Int]) -> Int {
        var low = 0
        var high = height.count - 1
        var maxWater = 0
        while high > low {
            let current = min(height[high], height[low]) * (high - low)
            maxWater = max(current, maxWater)
            if height[high] < height[low] {
                high -= 1
            } else {
                low += 1
            }
        }
        return maxWater
    }
    
    static func main() {
        [
            [1,8,6,2,5,4,8,3,7],    // 49
            [1,1],                  // 1
            [1,3,2,5,25,24,5],      // 24
        ].forEach {
            let solution = Solution()
            print(solution.maxArea($0))
        }
    }
}
