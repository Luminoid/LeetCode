//
//  LongestSubstringWithoutRepeatingCharacters.swift
//  SwiftCode
//
//  Created by Luminoid Li on 12/1/21.
//

import Foundation

//@main
class Solution {
    // Sliding window
    // Time complexity: O(n)
    // Space complexity: O(min(m,n))
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var start = 0
        var length = 0
        var map: [Character: Int] = [:]
        let characters = Array(s)
        
        for i in (0..<characters.count) {
            let char = characters[i]
            if let previousIndex = map[char] {
                start = max(start, previousIndex + 1)
            }
            map[char] = i
            length = max(length, i - start + 1)
        }
        
        return length
    }
    
    static func main() {
        let solution = Solution()
        print(solution.lengthOfLongestSubstring("abba"))        // 2
        print(solution.lengthOfLongestSubstring("abcabcbb"))    // 3
        print(solution.lengthOfLongestSubstring("bbbbb"))       // 1
        print(solution.lengthOfLongestSubstring("pwwkew"))      // 3
        print(solution.lengthOfLongestSubstring(""))            // 0
    }
}

