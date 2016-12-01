import java.util.HashMap;
import java.util.Map;

public class NumberOfBoomerangs {
    public static int numberOfBoomerangs(int[][] points) {
        int x1, x2, y1, y2, dis, num;
        Map<Integer, Integer> count;

        num = 0;
        for (int[] point1 : points) {
            x1 = point1[0];
            y1 = point1[1];
            count = new HashMap<>();
            for (int[] point2 : points) {
                x2 = point2[0];
                y2 = point2[1];
                if (x1 != x2 || y1 != y2) {
                    dis = (x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2);
                    count.put(dis, count.containsKey(dis) ? count.get(dis) + 1 : 1);
                }
            }
            for (int value : count.values()) {
                num += value * (value - 1);
            }
        }

        return num;
    }

    public static void main(String args[]) {
        int[][] arr = {{0, 0}, {1, 0}, {2, 0}};
        System.out.println(numberOfBoomerangs(arr));
    }
}
