/**
 * Created by Ethan on 2017/9/17.
 */
public class NumberComplement {
    public static int findComplement(int num) {
        int mask = 1;
        while ((num & mask) != num) {
            mask <<= 1;
            mask |= 1;
        }
        return (~num) & mask;
    }

    public static void main(String[] args) {
        System.out.println(findComplement(5)); // 2
    }
}
