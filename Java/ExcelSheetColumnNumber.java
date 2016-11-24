public class ExcelSheetColumnNumber {
    public static int titleToNumber(String s) {
        int num = 0;
        for (char c : s.toCharArray()) {
            num = num * 26 + c - 'A' + 1;
        }
        return num;
    }

    public static void main(String args[]) {
        System.out.println(titleToNumber("C"));  // 3
        System.out.println(titleToNumber("AB")); // 28
    }
}
