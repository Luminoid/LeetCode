public class ReverseString {
    public static String reverseString(String s) {
        int n = s.length();
        char[] chars = s.toCharArray();
        char tmp;
        for (int i = 0; i < n / 2; i++) {
            tmp = chars[i];
            chars[i] = chars[n - i - 1];
            chars[n - i - 1] = tmp;
        }
        return String.valueOf(chars);
    }

    public static void main(String args[]){
        System.out.println(reverseString("abcdefg"));
        System.out.println(reverseString("abcdefgh"));
        System.out.println(reverseString("a"));
    }
}