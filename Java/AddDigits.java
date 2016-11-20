/**
 * Digital root
 */
public class AddDigits {
    public static int addDigits(int num) {
        return num - 9 * ((num - 1) / 9);
    }

    public static void main(String args[]){
        System.out.println(addDigits(18));    // 9
        System.out.println(addDigits(65536)); // 7
    }
}
