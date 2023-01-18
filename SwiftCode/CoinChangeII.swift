//
//  CoinChangeII.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/17/23.
//

import Foundation

//@main
private class Solution {
    // Bottom up dynamic programming
    // m = coins.count; n = amount
    // Time complexity: O(m*n)
    // Space complexity: O(n)
    func change(_ amount: Int, _ coins: [Int]) -> Int {
        var combinationCount = [Int](repeating: 0, count: amount + 1)
        combinationCount[0] = 1 // 0 is reachable
        // Coins as outer loop is combination; Coins as inner loop is permutation
        for coin in coins {
            if coin <= amount {
                for i in coin...amount {
                    combinationCount[i] += combinationCount[i - coin]
                }
            }
        }
        return combinationCount[amount]
    }
    
    static func main() {
        [
            (4, [1,2,5]),   // 3
            (5, [1,2,5]),   // 4
            (6, [1,2,5]),   // 5
            (7, [1,2,5]),   // 6
            (3, [2]),       // 0
            (10, [10]),     // 1
        ].forEach {
            let solution = Solution()
            print(solution.change($0, $1))
        }
    }
}
