/**
 * Created by Ethan on 2017/9/18.
 */
public class ReverseWordsInAStringIII {
    public static String reverseWord(String word){
        char[] chars = word.toCharArray();
        for (int i = 0; i < word.length() / 2; i++) {
            int j = word.length() - 1 - i;
            char tmp = chars[i];
            chars[i] = chars[j];
            chars[j] = tmp;
        }
        return String.valueOf(chars);
    }

    public static String reverseWords(String s) {
        String[] words = s.split(" ");
        for (int i = 0; i < words.length; i++) {
            words[i] = reverseWord(words[i]);
        }
        return String.join(" ", words);
    }

    public static void main(String[] args) {
        System.out.println(reverseWords("Let's take LeetCode contest"));
    }
}
