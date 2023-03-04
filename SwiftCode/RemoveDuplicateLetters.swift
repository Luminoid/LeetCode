//
//  RemoveDuplicateLetters.swift
//  SwiftCode
//
//  Created by Luminoid Li on 3/4/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(1)   s consists of lowercase English letters.
    func removeDuplicateLetters(_ s: String) -> String {
        var lastOccurrence: [Character: Int] = [:]
        var stack: [Character] = []     // O(1)
        
        for (i, c) in s.enumerated() {
            lastOccurrence[c] = i
        }
        
        for (i, c) in s.enumerated() {
            if !stack.contains(c) {     // O(1)
                var last = stack.last
                while(last != nil && i < (lastOccurrence[last!] ?? -1) && c < last!) {
                    _ = stack.popLast()
                    last = stack.last
                }
                stack.append(c)
            }
        }
        return String(stack)
    }
    
    static func main() {
        [
            "bcabc",        // abc
            "cbacdcbc",     // acdb
        ].forEach {
            let solution = Solution()
            print(solution.removeDuplicateLetters($0))
        }
    }
}
