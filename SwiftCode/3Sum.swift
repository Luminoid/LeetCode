//
//  3Sum.swift
//  SwiftCode
//
//  Created by Luminoid Li on 3/6/23.
//

//@main
private class Solution {
    // Two pointers
    // Time complexity: O(n^2)
    // Space complexity: O(n)
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted()
        var res: [[Int]] = []
        for i in 0..<(sortedNums.count - 1) {
            if sortedNums[i] > 0 {
                break
            }
            if i > 0 && sortedNums[i] == sortedNums[i-1] {  // Dulicate triplets
                continue
            }
            var lo = i+1
            var hi = sortedNums.count - 1
            while(lo < hi) {
                if sortedNums[i] + sortedNums[lo] + sortedNums[hi] > 0 {
                    hi -= 1;
                } else if sortedNums[i] + sortedNums[lo] + sortedNums[hi] < 0 {
                    lo += 1;
                } else {
                    res.append([sortedNums[i], sortedNums[lo], sortedNums[hi]])
                    lo += 1
                    hi -= 1
                    while (lo < hi && sortedNums[lo] == sortedNums[lo-1]) { // Dulicate triplets
                        lo += 1
                    }
                }
            }
        }
        return res
    }
    
    static func main() {
        [
            [-1,0,1,2,-1,-4],   // [[-1,-1,2],[-1,0,1]]
            [0,1,1],            // []
            [0,0,0],            // [[0,0,0]]
            [-2,0,0,2,2],       // [[-2,0,2]]
        ].forEach {
            let solution = Solution()
            print(solution.threeSum($0))
        }
    }
}
