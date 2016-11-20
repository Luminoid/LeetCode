public class SumofTwoIntegers {
    public static int getSum(int a, int b) {
        while (b != 0){
            int c = a & b; // carry
            a = a ^ b;
            b = c << 1;
        }
        return a;
    }

    public static void main(String args[]){
        System.out.println(getSum(8, 9));
        System.out.println(getSum(0, -5));
    }
}