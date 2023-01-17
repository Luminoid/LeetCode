//
//  MinimumCostToConnectSticks.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/11/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(n log(n))
    // Space complexity: O(n)
    func connectSticks(_ sticks: [Int]) -> Int {
        var sums: [Int] = []
        var sum = 0
        var sortedSticks = sticks.sorted()
        while ((sortedSticks.count + sums.count) > 1) {
            var a = Int.max
            if (sums.first ?? Int.max) < (sortedSticks.first ?? Int.max) {
                a = sums.first ?? Int.max
                sums.remove(at: 0)
            } else {
                a = sortedSticks.first ?? Int.max
                sortedSticks.remove(at: 0)
            }
            var b = Int.max
            if (sums.first ?? Int.max) < (sortedSticks.first ?? Int.max) {
                b = sums.first ?? Int.max
                sums.remove(at: 0)
            } else {
                b = sortedSticks.first ?? Int.max
                sortedSticks.remove(at: 0)
            }
            let c = a + b
            sum += c
            sums.append(c)
        }
        return sum
    }
    
    // Using MinHeap
//    func connectSticks(_ sticks: [Int]) -> Int {
//        let heap = MinHeap(elements: sticks)
//        heap.buildHeap()
//        var sum = 0
//        while(heap.size() > 1) {
//            let a = heap.extractMin() ?? 0
//            let b = heap.extractMin() ?? 0
//            let c = a + b
//            sum += c
//            heap.insert(val: c)
//        }
//        return sum
//    }
    
    static func main() {
        let solution = Solution()
        print(solution.connectSticks([2,4,3]))      // 14
        print(solution.connectSticks([1,8,3,5]))    // 30
        print(solution.connectSticks([5]))          // 0
        print(solution.connectSticks([1,2,3,4,5]))  // 33
    }
}

