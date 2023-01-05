//
//  BinaryWatch.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/5/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(1)    12 * 60
    // Space complexity: O(1)
    
    func readBinaryWatch(_ turnedOn: Int) -> [String] {
        var res: [String] = []
        for h in 0..<12 {
            for m in 0..<60 {
                if (h.nonzeroBitCount + m.nonzeroBitCount == turnedOn) {
                    res.append(String(format: "%d:%02d", h, m))
                }
            }
        }
        return res
    }
    
    static func main() {
        let solution = Solution()
        print(solution.readBinaryWatch(1))  // ["0:01","0:02","0:04","0:08","0:16","0:32","1:00","2:00","4:00","8:00"]
        print(solution.readBinaryWatch(9))  // []
    }
}
