import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class BinaryWatch {
    public static List<String> readBinaryWatch(int num) {
        List<String> list = new ArrayList<>();
        for (int h = 0; h < 12; h++) {
            for (int m = 0; m < 60; m++) {
                if (Integer.bitCount(h) + Integer.bitCount(m) == num) {
                    String time = String.format("%d:%02d", h, m);
                    list.add(time);
                }
            }
        }
        return list;
    }

    public static void main(String args[]) {
        System.out.println(Arrays.toString(readBinaryWatch(1).toArray()));
        System.out.println(Arrays.toString(readBinaryWatch(5).toArray()));
    }
}
