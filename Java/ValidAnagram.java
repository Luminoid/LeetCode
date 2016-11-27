import java.util.HashMap;

// Approach: 1. Sorting; 2. Hash Table
public class ValidAnagram {
    public static boolean isAnagram(String s, String t) {
        HashMap<Character, Integer> sCount = new HashMap<>();
        HashMap<Character, Integer> tCount = new HashMap<>();

        for (char c : s.toCharArray()) {
            sCount.put(c, sCount.containsKey(c) ? sCount.get(c) + 1 : 1);
        }
        for (char c : t.toCharArray()) {
            tCount.put(c, tCount.containsKey(c) ? tCount.get(c) + 1 : 1);
        }

        return sCount.equals(tCount);
    }

    public static void main(String args[]) {
        System.out.println(isAnagram("anagram", "nagaram"));
        System.out.println(isAnagram("rat", "car"));
    }
}
