//
//  FindtheDifference.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/5/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(1)   26 letters
    
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var charCount: [Character: Int] = [:]
        for c in t {
            charCount[c] = charCount[c, default: 0] + 1
        }
        for c in s {
            charCount[c] = charCount[c, default: 0] - 1
        }
        return charCount.first {
            $0.value == 1
        }?.key ?? " "
    }
    
    static func main() {
        let solution = Solution()
        print(solution.findTheDifference("abcd", "abcde"))  // e
        print(solution.findTheDifference("", "y"))          // y
    }
}
