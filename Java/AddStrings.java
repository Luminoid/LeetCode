public class AddStrings {
    public static String addStrings(String num1, String num2) {
        char[] chars1 = num1.toCharArray();
        char[] chars2 = num2.toCharArray();

        int len1 = chars1.length - 1;
        int len2 = chars2.length - 1;
        int carry = 0;
        StringBuilder sum = new StringBuilder();

        while (len1 >= 0 || len2 >= 0) {
            if (len1 >= 0) carry += chars1[len1--] - '0';
            if (len2 >= 0) carry += chars2[len2--] - '0';
            sum.insert(0, carry % 10);
            carry /= 10;
        }
        if (carry != 0) sum.insert(0, 1);
        return sum.toString();
    }

    public static void main(String args[]) {
        System.out.println(addStrings("1234567898765432123456789", "1122334455667788998877665544332211")); // 1122334456902356897643097667789000
    }
}
