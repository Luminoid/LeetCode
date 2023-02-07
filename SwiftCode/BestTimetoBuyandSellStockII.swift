//
//  BestTimetoBuyandSellStockII.swift
//  SwiftCode
//
//  Created by Luminoid Li on 2/6/23.
//

//@main
private class Solution {
    // Greedy
    // Time complexity: O(n)
    // Space complexity: O(1)
    func maxProfit(_ prices: [Int]) -> Int {
        var sum = 0
        var previousPrice = Int.max
        for price in prices {
            if price > previousPrice {
                sum += price - previousPrice
            }
            previousPrice = price
        }
        return sum
    }
    
    static func main() {
        [
            [7,1,5,3,6,4],  // 7
            [1,2,3,4,5],    // 4
            [7,6,4,3,1],    // 0
        ].forEach {
            let solution = Solution()
            print(solution.maxProfit($0))
        }
    }
}
