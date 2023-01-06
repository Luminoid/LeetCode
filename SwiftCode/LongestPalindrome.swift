//
//  LongestPalindrome.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/5/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(1)   lowercase and/or uppercase English letters
    
    func longestPalindrome(_ s: String) -> Int {
        var charCount: [Character: Int] = [:]
        var result = 0
        for c in s {
            if charCount[c, default: 0] == 0 {
                charCount[c] = 1
            } else {
                charCount.removeValue(forKey: c)
                result += 2
            }
        }
        if !charCount.isEmpty {
           result += 1
        }
        return result
    }
    
    static func main() {
        let solution = Solution()
        print(solution.longestPalindrome("abccccdd"))   // 7
        print(solution.longestPalindrome("a"))          // 1
    }
}
