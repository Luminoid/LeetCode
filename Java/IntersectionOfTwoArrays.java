import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class IntersectionOfTwoArrays {
    public static int[] intersection(int[] nums1, int[] nums2) {
        List<Integer> intersection = new ArrayList<>();
        Arrays.sort(nums1);
        Arrays.sort(nums2);
        for (int i = 0, j = 0; i < nums1.length && j < nums2.length;) {
            if (nums1[i] == nums2[j]){
                intersection.add(nums1[i]);
                i++;
                j++;
            } else if (nums1[i] > nums2[j]){
                j++;
            } else {
                i++;
            }
        }
        return intersection.stream().distinct().mapToInt(i -> i).toArray();
    }

    public static void main(String args[]) {
        System.out.println(Arrays.toString(intersection(new int[]{1, 2, 2, 1, 7, 11, 9}, new int[]{9, 2, 11, 2})));
    }
}
