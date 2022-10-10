import java.util.HashMap;

class ValidAnagram {
    // Time complexity: O(n)
    // Space complexity: O(1)
    public boolean isAnagram(String s, String t) {
        HashMap<Character, Integer> charCount = new HashMap<Character, Integer>();
        if (s.length() != t.length()) {
            return false;
        }

        for (char c: s.toCharArray()) {
            charCount.put(c, charCount.getOrDefault(c, 0) + 1);
        }

        for (char c: t.toCharArray()) {
            int count = charCount.getOrDefault(c, 0);
            if (count < 1) {
                return false;
            } else {
                charCount.put(c, charCount.getOrDefault(c, 0) - 1);
            }
        }
        return true;
    }

    public static void main(String[] args) {
        ValidAnagram validAnagram = new ValidAnagram();
        System.out.println(validAnagram.isAnagram("anagram", "nagaram"));   // true
        System.out.println(validAnagram.isAnagram("rat", "car"));           // false
    }
}
