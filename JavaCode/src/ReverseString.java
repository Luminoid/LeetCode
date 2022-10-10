import java.util.Arrays;

class ReverseString {
    // Time complexity: O(n)
    // Space complexity: O(1)
    public void reverseString(char[] s) {
        for (int i = 0; i < s.length / 2; i++) {
            char tmp = s[i];
            s[i] = s[s.length - 1 - i];
            s[s.length - 1 - i] = tmp;
        }
    }

    public static void main(String[] args) {
        ReverseString reverseString = new ReverseString();
        char[] arr1 = new char[]{'h','e','l','l','o'};
        char[] arr2 = new char[]{'H','a','n','n','a','h'};
        reverseString.reverseString(arr1);
        reverseString.reverseString(arr2);
        System.out.println(Arrays.toString(arr1));   // ["o","l","l","e","h"]
        System.out.println(Arrays.toString(arr2));   // ["h","a","n","n","a","H"]
    }
}
