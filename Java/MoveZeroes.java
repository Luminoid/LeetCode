import java.util.Arrays;

public class MoveZeroes {
    public static void moveZeroes(int[] nums) {
        // j: number of 0s
        int tmp;
        for (int i = 0, j = 0; i < nums.length; i++) {
            if (nums[i] != 0){
                if (j != 0){
                    tmp = nums[i];
                    nums[i] = nums[i - j];
                    nums[i - j] = tmp;
                }
            } else j++;
        }
    }

    public static void main(String args[]) {
        int[] nums = new int[] {0, 1, 0, 3, 12};
        moveZeroes(nums);
        System.out.println(Arrays.toString(nums));
    }
}
