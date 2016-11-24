import java.util.HashMap;
import java.util.Map;

public class FirstUniqueCharacterInAString {
    public static int firstUniqChar(String s) {
        char[] chars = s.toCharArray();
        Map<Character, Integer> count = new HashMap<>();
        for (char c : chars)
            count.put(c, count.containsKey(c) ? count.get(c) + 1 : 1);
        for (int i = 0; i < chars.length; i++)
            if (count.get(chars[i]) == 1) return i;
        return -1;
    }

    public static void main(String args[]) {
        System.out.println(firstUniqChar("leetcode"));
        System.out.println(firstUniqChar("loveleetcode"));
        System.out.println(firstUniqChar("abcbac"));
    }
}
