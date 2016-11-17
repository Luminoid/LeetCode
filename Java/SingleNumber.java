public class SingleNumber {
    public static int singleNumber(int[] nums) {
        int num = 0;
        for (int i : nums) {
            num ^= i;
        }
        return num;
    }

    public static void main(String args[]){
        int[] nums = {2, 3, 10, 3, 7, 1, 2, 1, 10};
        System.out.println(singleNumber(nums));
    }
}