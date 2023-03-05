//
//  LargestRectangleinHistogram.swift
//  SwiftCode
//
//  Created by Luminoid Li on 3/4/23.
//

//@main
private class Solution {
    // Monotonic Stack
    // Time complexity: O(n)
    // Space complexity: O(n)
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var stack: [Int] = []
        var maxArea = 0
        for (i, height) in heights.enumerated() {
            if let last = stack.last, height < heights[last] {
                while (stack.last != nil && height < heights[stack.last!]) {
                    let lastHeight = heights[stack.popLast()!]
                    if let last = stack.last {
                        // Elements between index (last, i-1] are all equal or greater than heights[i-1]
                        maxArea = max(maxArea, (i - 1 - last) * lastHeight)
                    } else {
                        maxArea = max(maxArea, (i) * lastHeight)
                    }
                }
            }
            stack.append(i)
        }
        
        while (stack.last != nil) {
            let height = heights[stack.popLast()!]
            if let last = stack.last {
                // Elements between index (last, heights.count - 1] are all equal or greater than height
                maxArea = max(maxArea, (heights.count - 1 - last) * height)
            } else {
                maxArea = max(maxArea, heights.count * height)
            }
        }
        
        return maxArea
    }
    
    static func main() {
        [
            [2,1,5,6,2,3],  // 10
            [2,4],          // 4
            [2,1,2],        // 3
        ].forEach {
            let solution = Solution()
            print(solution.largestRectangleArea($0))
        }
    }
}
