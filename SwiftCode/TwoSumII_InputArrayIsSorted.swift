//
//  TwoSumII_InputArrayIsSorted.swift
//  SwiftCode
//
//  Created by Luminoid Li on 3/6/23.
//

//@main
private class Solution {
    // Two Pointers
    // Time complexity: O(n)
    // Space complexity: O(1)
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var lo = 0
        var hi = numbers.count - 1
        while (lo < hi) {
            if (numbers[lo] + numbers[hi] > target) {
                hi -= 1
            } else if (numbers[lo] + numbers[hi] < target) {
                lo += 1
            } else {
                return [lo+1, hi+1]
            }
        }
        return []
    }
    
    static func main() {
        [
            ([2,7,11,15], 9),   // [1,2]
            ([2,3,4], 6),       // [1,3]
            ([-1,0], -1),       // [1,2]
        ].forEach {
            let solution = Solution()
            print(solution.twoSum($0, $1))
        }
    }
}
