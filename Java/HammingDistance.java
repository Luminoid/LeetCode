/**
 * Created by Ethan on 2017/9/17.
 */
public class HammingDistance {
    public static int hammingDistance(int x, int y) {
        int dis = 0;
        int xor = x ^ y;
        for (; xor > 0; xor >>= 1){
            if ((xor & 1) == 1) {
                dis++;
            }
        }
        return dis;
    }

    public static void main(String[] args) {
        System.out.println(hammingDistance(1, 4));   // 2
        System.out.println(hammingDistance(12, 25)); // 3
    }
}
