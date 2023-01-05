class RansomNote {
    // Time complexity: O(n)    n is the length of the magazine
    // Space complexity: O(1)   26 lowercase English letters

    // ransomNote and magazine consist of lowercase English letters.
    public boolean canConstruct(String ransomNote, String magazine) {
        int[] count = new int[26];
        for (char c: magazine.toCharArray()) {
            count[c - 'a']++;
        }
        for (char c: ransomNote.toCharArray()) {
            if(--count[c - 'a'] < 0) {
                return false;
            }
        }
        return true;
    }

    public static void main(String[] args) {
        RansomNote ransomNote = new RansomNote();
        System.out.println(ransomNote.canConstruct("a", "b"));      // false
        System.out.println(ransomNote.canConstruct("aa", "ab"));    // false
        System.out.println(ransomNote.canConstruct("aa", "aab"));   // true
        System.out.println(ransomNote.canConstruct("acb", "abbc")); // true
    }
}
