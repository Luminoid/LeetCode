import java.util.Arrays;

/**
 * Created by Ethan on 2017/9/17.
 */
public class ArrayPartitionI {
    public static int arrayPairSum(int[] nums) {
        int sum = 0;
        Arrays.sort(nums);
        for (int i = 0; i < nums.length; i+=2) {
            sum += nums[i];
        }
        return sum;
    }

    public static void main(String[] args) {
        int arr[] = {1, 2, 3, 4, 5, 6};
        System.out.println(arrayPairSum(arr)); // 9
    }
}
