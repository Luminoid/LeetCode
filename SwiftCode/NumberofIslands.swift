//
//  NumberofIslands.swift
//  SwiftCode
//
//  Created by Luminoid Li on 3/5/23.
//

//@main
private class Solution {
    // BFS
    // Time complexity: O(m*n)
    // Space complexity: O(min(m,n))    BFS would limit the search to the size of the shorter side
    func numIslands(_ grid: [[String]]) -> Int {
        var grid = grid
        let height = grid.count
        let width = grid[0].count
        var num = 0
        
        for i in 0..<height {
            for j in 0..<width {
                if grid[i][j] == "1" {
                    num += 1;
                    grid[i][j] = "0"
                    var list: [Int] = []
                    list.append(i * width + j)
                    while (!list.isEmpty) {
                        let index = list.removeFirst()
                        let row = index / width
                        let col = index % width
                        if (row > 0 && grid[row - 1][col] == "1") {
                            list.append((row - 1) * width + col)
                            grid[row - 1][col] = "0"
                        }
                        if (row < height - 1 && grid[row + 1][col] == "1") {
                            list.append((row + 1) * width + col)
                            grid[row + 1][col] = "0"
                        }
                        if (col > 0 && grid[row][col - 1] == "1") {
                            list.append(row * width + col - 1)
                            grid[row][col - 1] = "0"
                        }
                        if (col < width - 1 && grid[row][col + 1] == "1") {
                            list.append(row * width + col + 1)
                            grid[row][col + 1] = "0"
                        }
                    }
                }
            }
        }
        return num
    }
    
    static func main() {
        [
            [
              ["1","1","1","1","0"],
              ["1","1","0","1","0"],
              ["1","1","0","0","0"],
              ["0","0","0","0","0"]
            ],  // 1
            [
              ["1","1","0","0","0"],
              ["1","1","0","0","0"],
              ["0","0","1","0","0"],
              ["0","0","0","1","1"]
            ],  // 3
        ].forEach {
            let solution = Solution()
            print(solution.numIslands($0))
        }
    }
}
