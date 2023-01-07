//
//  ReverseWordsinaStringIII.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/7/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(n)
    // Space complexity: O(n)
    func reverseWord(_ s: String) -> String {
        var arr = Array(s)
        for i in 0..<(arr.count / 2) {
            let tmp = arr[i]
            arr[i] = arr[arr.count - i - 1]
            arr[arr.count - i - 1] = tmp
        }
        return arr.map { String($0) }.joined()
    }
    
    func reverseWords(_ s: String) -> String {
        return s.split(separator: " ").map { reverseWord(String($0))}.joined(separator: " ")
    }
    
    static func main() {
        let solution = Solution()
        print(solution.reverseWords("Let's take LeetCode contest"))     // s'teL ekat edoCteeL tsetnoc
        print(solution.reverseWords("God Ding"))                        // doG gniD
    }
}
