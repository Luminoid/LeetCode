class SumOfTwoIntegers {
    // Time complexity: O(1)    int is 32 bits
    // Space complexity: O(1)

    public int getSum(int a, int b) {
        int sum = a;
        int remain = b;
        while (remain != 0) {
            int carry = sum & remain;
            sum = sum ^ remain;
            remain = carry << 1;
        }
        return sum;
    }

    public static void main(String[] args) {
        SumOfTwoIntegers sumOfTwoIntegers = new SumOfTwoIntegers();
        System.out.println(sumOfTwoIntegers.getSum(1, 2));      // 3
        System.out.println(sumOfTwoIntegers.getSum(12, 3));     // 15
        System.out.println(sumOfTwoIntegers.getSum(25, 189));   // 214
        System.out.println(sumOfTwoIntegers.getSum(16, 0));     // 16
        System.out.println(sumOfTwoIntegers.getSum(-8, 5));     // -3
    }
}
