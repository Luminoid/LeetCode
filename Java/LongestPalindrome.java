import java.util.HashMap;

public class LongestPalindrome {
    public static int longestPalindrome(String s) {
        int ans = 0;
        boolean hasOdd = false;
        HashMap<Character, Integer> count = new HashMap<>();
        for (char c : s.toCharArray())
            count.put(c, count.containsKey(c) ? count.get(c) + 1 : 1);
        for (int i : count.values()) {
            ans += i;
            if (i % 2 == 1) {
                ans--;
                hasOdd = true;
            }
        }
        return hasOdd ? ans + 1 : ans;
    }

    public static void main(String args[]) {
        System.out.println(longestPalindrome("abccccdd")); // 7
    }
}
