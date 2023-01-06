//
//  AssignCookies.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/6/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(max(n log(n), m log(m)))
    // Space complexity: O(1)
        
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        let sortedG = g.sorted()
        let sortedS = s.sorted()
        var i = 0
        for c in sortedS {
            if i >= sortedG.count { break }
            if c >= sortedG[i] {
                i += 1
            }
        }
        return i
    }
    
    static func main() {
        let solution = Solution()
        print(solution.findContentChildren([1,2,3], [1,1]))     // 1
        print(solution.findContentChildren([1,2], [1,2,3]))     // 2
        print(solution.findContentChildren([1,2,4,5], [5,2,1])) // 3
    }
}
