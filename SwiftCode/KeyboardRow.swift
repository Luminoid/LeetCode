//
//  KeyboardRow.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/6/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(n)
    func findWords(_ words: [String]) -> [String] {
        let line1: Set<Character> = Set(["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"])
        let line2: Set<Character> = Set(["a", "s", "d", "f", "g", "h", "j", "k", "l"])
        let line3: Set<Character> = Set(["z", "x", "c", "v", "b", "n", "m"])
        var result: [String] = []
        for word in words {
            let set: Set<Character> = Set(Array(word.lowercased()))
            if set.isSubset(of: line1) || set.isSubset(of: line2) || set.isSubset(of: line3) {
                result.append(word)
            }
        }
        return result
    }
    
    static func main() {
        let solution = Solution()
        print(solution.findWords(["Hello","Alaska","Dad","Peace"])) // ["Alaska","Dad"]
        print(solution.findWords(["omk"]))                          // []
        print(solution.findWords(["adsdf","sfd"]))                  // ["adsdf","sfd"]
    }
}
