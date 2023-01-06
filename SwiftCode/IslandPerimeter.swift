//
//  IslandPerimeter.swift
//  SwiftCode
//
//  Created by Luminoid Li on 1/6/23.
//

import Foundation

//@main
private class Solution {
    // Time complexity: O(mn)
    // Space complexity: O(1)
    
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var perimeter = 0
        for (i, line) in grid.enumerated() {
            for (j, cell) in line.enumerated() {
                if cell == 1 {
                    perimeter += 4
                    if (i + 1 < grid.count) && grid[i + 1][j] == 1 {
                        perimeter -= 2
                    }
                    if (j + 1 < line.count) && grid[i][j + 1] == 1 {
                        perimeter -= 2
                    }
                }
            }
        }
        return perimeter
    }
    
    static func main() {
        let solution = Solution()
        print(solution.islandPerimeter([[0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]]))  // 16
        print(solution.islandPerimeter([[1]]))                                      // 4
        print(solution.islandPerimeter([[1,0]]))                                    // 4
    }
}
