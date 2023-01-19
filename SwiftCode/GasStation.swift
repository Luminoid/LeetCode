//
//  GasStation.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/18/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(1)
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        guard gas.count == cost.count else { return -1 }
        var totalGas = 0
        var current = 0
        var startIndex = 0
        for i in 0..<gas.count {
            totalGas += gas[i] - cost[i]
            if current < 0 {    // gas[i] - cost[i] + current < gas[i] - cost[i]
                startIndex = i
                current = gas[i] - cost[i]
            } else {
                current += gas[i] - cost[i]
            }
        }
        if totalGas < 0 {
            return -1
        }
        return startIndex
    }
    
    static func main() {
        [
            ([1,2,3,4,5], [3,4,5,1,2]), // 3
            ([2,3,4], [3,4,3]),         // -1
            ([3,1,1], [1,2,2]),         // 0
        ].forEach {
            let solution = Solution()
            print(solution.canCompleteCircuit($0, $1))
        }
    }
}
