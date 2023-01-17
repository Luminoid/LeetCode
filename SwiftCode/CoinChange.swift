//
//  CoinChange.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/17/23.
//

import Foundation

//@main
private class Solution {
    // Top down dynamic programming
    // m = coins.count; n = amount
    // Time complexity: O(m*n)
    // Space complexity: O(n)
    var map: [Int?] = []    // faster than dictionary
    
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        func coinChange(_ amount: Int) -> Int {
            if amount < 0 {
                return -1
            } else if amount == 0 {
                return 0
            } else if let value = map[amount] {
                return value
            }
            var num: Int = Int.max
            for coin in coins {
                let l = coinChange(amount - coin)
                if l != -1 {
                    num = min(l + 1, num)
                }
            }
            if num == Int.max {
                num = -1
            }
            map[amount] = num
            return num
        }
        
        map = [Int?](repeating: nil, count: amount + 1)
        for coin in coins {
            if coin > 0 && coin <= amount {
                map[coin] = 1
            }
        }
        return coinChange(amount)
    }
    
    static func main() {
        [
            ([1,2,5], 11),              // 3
            ([2,5,8], 14),              // 4
            ([2], 3),                   // -1
            ([1], 0),                   // 0
            ([186,419,83,408], 6249)    // 20
        ].forEach {
            let solution = Solution()
            print(solution.coinChange($0, $1))
        }
    }
}
