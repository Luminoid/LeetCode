//
//  AddStrings.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/6/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(max(m, n))
    // Space complexity: O(max(m, n))
    
    func addStrings(_ num1: String, _ num2: String) -> String {
        var a = (num1.count >= num2.count) ? Array(num1) : Array(num2)
        var b = (num1.count >= num2.count) ? Array(num2) : Array(num1)
        a.reverse()
        b.reverse()
        var sum = ""
        var carry = 0;
        
        for i in 0..<a.count {
            var s = (a[i].wholeNumberValue ?? 0) + carry
            if i < b.count {
                s += (b[i].wholeNumberValue ?? 0)
            }
            let d = s % 10
            carry = s > 9 ? 1 : 0
            sum = String(d) + sum
        }
        if carry == 1 {
            sum = "1" + sum
        }
        return sum
    }
    
    static func main() {
        let solution = Solution()
        print(solution.addStrings("11", "123"))                         // 134
        print(solution.addStrings("456", "77"))                         // 533
        print(solution.addStrings("0", "0"))                            // 0
        print(solution.addStrings("1", "9"))                            // 10
        print(solution.addStrings("123456789", "123456789123456789"))   // 123,456,789,246,913,578
    }
}
