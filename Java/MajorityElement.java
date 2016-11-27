/**
 * Boyer-Moore majority vote algorithm. Time complexity: O(n).
 */
public class MajorityElement {
    public static int majorityElement(int[] nums) {
        int candidate = Integer.MIN_VALUE;
        int count = 0;
        for (int num : nums) {
            if (count == 0) {
                candidate = num;
                count = 1;
            } else if (num == candidate) count++;
            else count--;
        }
        return candidate;
    }

    public static void main(String args[]) {
        System.out.println(majorityElement(new int[]{2, 3, 5, 3, 6, 3, 3, 4, 3})); // 3
    }
}
