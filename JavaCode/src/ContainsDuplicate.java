import java.util.HashSet;

class ContainsDuplicate {
    // Time complexity: O(n)
    // Space complexity: O(n)
    public boolean containsDuplicate(int[] nums) {
        HashSet<Integer> set = new HashSet<Integer>();
        for (int num : nums) {
            if (set.contains(num)) {
                return true;
            }
            set.add(num);
        }
        return false;
    }

    public static void main(String[] args) {
        ContainsDuplicate containsDuplicate = new ContainsDuplicate();
        System.out.println(containsDuplicate.containsDuplicate(new int[]{1, 2, 3, 1})); // true
        System.out.println(containsDuplicate.containsDuplicate(new int[]{1, 4, 3}));    // false
    }
}
