//
//  BestTimetoBuyandSellStockIII.swift
//  SwiftCode
//
//  Created by Luminoid Li on 2/7/23.
//

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(1)
    func maxProfit(_ prices: [Int]) -> Int {
        var aPrice = Int.max    // Buying price of A
        var bPrice = Int.max    // Buying price of B (the smaller the better) - aMax (the larger the better)
        var aMax = 0            // Max profit for single transaction
        var bMax = 0            // Max profit for two transactions
        for price in prices {
            aPrice = min(aPrice, price)
            aMax = max(aMax, price - aPrice)
            bPrice = min(bPrice, price - aMax)
            bMax = max(bMax, price - bPrice)    // bSellPrice - bBuyPrice + aMax (aSellPrice - aBuyPrice)
        }
        return bMax
    }
    
    static func main() {
        [
            [3,3,5,0,0,3,1,4],      // 6
            [1,2,3,4,5],            // 4
            [7,6,4,3,1],            // 0
            [1,7,3,8],              // 11
            [1,7,3,8,6,14],         // 17
            [1,7,3,8,6,14,6,14],    // 21
        ].forEach {
            let solution = Solution()
            print(solution.maxProfit($0))
        }
    }
}
