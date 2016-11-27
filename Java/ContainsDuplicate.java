import java.util.HashSet;
import java.util.Set;

public class ContainsDuplicate {
    public static boolean containsDuplicate(int[] nums) {
        Set<Integer> set = new HashSet<>(nums.length);
        for (int x : nums) {
            if (set.contains(x)) return true;
            set.add(x);
        }
        return false;
    }

    public static void main(String args[]) {
        System.out.println(containsDuplicate(new int[]{9, 5, 7, 12, 4, 8}));
        System.out.println(containsDuplicate(new int[]{9, 5, 7, 12, 4, 7, 8}));
    }
}
