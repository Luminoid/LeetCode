//
//  RobotReturntoOrigin.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/8/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(1)
    func judgeCircle(_ moves: String) -> Bool {
        var v = 0
        var h = 0
        for c in moves {
            switch c {
            case "U":
                v += 1
            case "D":
                v -= 1
            case "R":
                h += 1
            case "L":
                h -= 1
            default:
                break
            }
        }
        return v == 0 && h == 0
    }
    
    static func main() {
        let solution = Solution()
        print(solution.judgeCircle("UD"))   // true
        print(solution.judgeCircle("LL"))   // false
    }
}
