//
//  NumberComplement.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/6/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(1)    31 bits
    // Space complexity: O(1)
    
    func findComplement(_ num: Int) -> Int {
        var mask = 1
        var complement = num
        while (mask <= num) {
            complement ^= mask
            mask <<= 1
        }
        return complement
    }
    
    static func main() {
        let solution = Solution()
        print(solution.findComplement(8))   // 7
        print(solution.findComplement(5))   // 2
        print(solution.findComplement(1))   // 0
    }
}
