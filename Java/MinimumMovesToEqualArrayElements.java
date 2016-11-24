import java.util.stream.IntStream;

public class MinimumMovesToEqualArrayElements {
    // incrementing n - 1 elements by 1 equals decreasing 1 element by 1
    public static int minMoves(int[] nums) {
        return IntStream.of(nums).sum() - IntStream.of(nums).min().getAsInt() * nums.length;
    }

    public static void main(String args[]) {
        System.out.println(minMoves(new int[]{1, 2, 3, 4})); // 6
    }
}
