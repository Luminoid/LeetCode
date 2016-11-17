public class NimGame {
    public static boolean canWinNim(int n) {
//        return n == 1 || n == 2 || n == 3 || (n >= 4 && !canWinNim(n - 1) || !canWinNim(n - 2) || !canWinNim(n - 3));
        return n % 4 > 0;
    }

    public static void main(String args[]){
        for (int i = -1; i <= 20; i++) {
            System.out.println(canWinNim(i));
        }
    }
}