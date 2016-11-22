public class IslandPerimeter {
    public static int islandPerimeter(int[][] grid) {
        int pm = 0;
        int row = grid.length;
        int col = grid[0].length;
        for (int i = 0; i < row; i++) {
            for (int j = 0; j < col; j++) {
                if (grid[i][j] == 1) {
                    pm += 4;
                    if (j > 0 && grid[i][j - 1] == 1) pm -= 2;
                    if (i > 0 && grid[i - 1][j] == 1) pm -= 2;
                }
            }
        }
        return pm;
    }

    public static void main(String args[]) {
        System.out.println(islandPerimeter(new int[][]{{0, 1, 0, 0}, {1, 1, 1, 0}, {0, 1, 0, 0}, {1, 1, 0, 0}}));
    }
}
