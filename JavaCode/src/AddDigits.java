class AddDigits {
    // Digital Root
    // Time complexity: O(1)
    // Space complexity: O(1)
    public int addDigits(int num) {
        if (num == 0) {
            return 0;
        } else if (num % 9 == 0) {
            return 9;
        } else {
            return num % 9;
        }
    }

    /**
    // Time complexity: O(n)    (n digit)
    // Space complexity: O(1)
    public int addDigits(int num) {
        int sum = num;
        while (sum >= 10) {
            int digit = sum % 10;
            sum = sum / 10 + digit;
        }
        return sum;
    }
     */

    public static void main(String[] args) {
        AddDigits addDigits = new AddDigits();
        System.out.println(addDigits.addDigits(38));    // 2
        System.out.println(addDigits.addDigits(10));    // 1
        System.out.println(addDigits.addDigits(0));     // 0
    }
}
