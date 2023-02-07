//
//  MaximalSquare.swift
//  SwiftCode
//
//  Created by Luminoid Li on 2/7/23.
//

//@main
private class Solution {
    // Dynamic Programming
    // Time complexity: O(mn)
    // Space complexity: O(n)
    func maximalSquare(_ matrix: [[String]]) -> Int {
        let m = matrix.count
        let n = matrix.first?.count ?? 0
        var maximalSquareArr = Array(repeating: 0, count: n+1)  // One row of current max is enough
        var previous = 0                                        // dp[i-1][j-1]
        var maxLength = 0
        for i in 1...m {
            for j in 1...n {
                let tmp = maximalSquareArr[j]   // dp[i-1][j]
                if matrix[i-1][j-1] == "1" {
                    // dp[i][j] = min(dp[i-1][j-1], dp[i-1][j], dp[i][j-1]) + 1
                    maximalSquareArr[j] = min(previous, maximalSquareArr[j], maximalSquareArr[j-1]) + 1
                    maxLength = max(maxLength, maximalSquareArr[j])
                } else {
                    maximalSquareArr[j] = 0
                }
                previous = tmp
            }
        }
        return maxLength * maxLength
    }
    
    static func main() {
        [
            [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]],  // 4
            [["0","1"],["1","0"]],  // 1
            [["0"]],                // 0
        ].forEach {
            let solution = Solution()
            print(solution.maximalSquare($0))
        }
    }
}
