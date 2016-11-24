public class RansomNote {
    public static boolean canConstruct(String ransomNote, String magazine) {
        int[] count = new int[26];
        for (char c : magazine.toCharArray()) {
            count[c - 'a']++;
        }
        for (char c : ransomNote.toCharArray()) {
            if (--count[c - 'a'] < 0) {
                return false;
            }
        }
        return true;
    }

    public static void main(String args[]) {
        System.out.println(canConstruct("aa", "ab"));  // false
        System.out.println(canConstruct("azo", "oabz")); // true
    }
}
