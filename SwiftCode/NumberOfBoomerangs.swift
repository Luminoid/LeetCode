//
//  NumberOfBoomerangs.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/6/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(n^2)
    // Space complexity: O(n)
    func numberOfBoomerangs(_ points: [[Int]]) -> Int {
        var sum = 0
        for point1 in points {
            let x1 = point1[0]
            let y1 = point1[1]
            var distCount: [Int: Int] = [:]
            for point2 in points {
                let x2 = point2[0]
                let y2 = point2[1]
                if x1 != x2 || y1 != y2 {
                    let dist = (x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)
                    distCount[dist] = distCount[dist, default: 0] + 1
                }
            }
            for count in distCount.values {
                sum += count * (count - 1)  // nP2
            }
        }
        return sum
    }
    
    static func main() {
        let solution = Solution()
        print(solution.numberOfBoomerangs([[0,0],[1,0],[2,0]])) // 2
        print(solution.numberOfBoomerangs([[1,1],[2,2],[3,3]])) // 2
        print(solution.numberOfBoomerangs([[1,1]]))             // 0
    }
}
