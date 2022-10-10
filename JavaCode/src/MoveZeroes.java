import java.util.Arrays;

class MoveZeroes {
    // Two pointers
    // Time complexity: O(n)
    // Space complexity: O(1)
    public void moveZeroes(int[] nums) {
        int pointerA = 0;
        int pointerB = 0;
        while (pointerB < nums.length) {
            if (nums[pointerA] == 0 && nums[pointerB] == 0) {
                pointerB++;
            } else {
                if (nums[pointerA] == 0 && nums[pointerB] != 0) {
                    int tmp = nums[pointerA];
                    nums[pointerA] = nums[pointerB];
                    nums[pointerB] = tmp;
                }
                if(nums[pointerA] != 0) {
                    pointerA++;
                }
                if(nums[pointerB] != 0) {
                    pointerB++;
                }
            }
        }
    }

    public static void main(String[] args) {
        MoveZeroes moveZeroes = new MoveZeroes();
        int[] arr1 = new int[]{0,1,0,3,12};
        int[] arr2 = new int[]{0};
        moveZeroes.moveZeroes(arr1);
        moveZeroes.moveZeroes(arr2);
        System.out.println(Arrays.toString(arr1));   // [1,3,12,0,0]
        System.out.println(Arrays.toString(arr2));   // [0]
    }
}
