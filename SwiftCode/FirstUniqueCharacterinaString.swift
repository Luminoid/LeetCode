//
//  FirstUniqueCharacterinaString.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/4/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(1)   26 letters
    func firstUniqChar(_ s: String) -> Int {
        var charCount: [Character:Int] = [:]
        for c in s {
            charCount[c] = charCount[c, default: 0] + 1;
        }
        for (i, c) in s.enumerated() {
            if charCount[c] == 1 {
                return i
            }
        }
        return -1;
    }
    
    static func main() {
        let solution = Solution()
        print(solution.firstUniqChar("leetcode"))       // 0
        print(solution.firstUniqChar("loveleetcode"))   // 2
        print(solution.firstUniqChar("aabb"))           // -1
    }
}
