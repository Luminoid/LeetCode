/**
 * Created by Ethan on 2017/9/17.
 */
public class JudgeRouteCircle {
    public static  boolean judgeCircle(String moves) {
        int upCount = 0;
        int leftCount = 0;

        for (char c : moves.toCharArray()) {
            if (c == 'U'){
                upCount++;
            } else if (c == 'D'){
                upCount--;
            } else if (c == 'L'){
                leftCount++;
            } else if (c == 'R'){
                leftCount--;
            }
        }

        return upCount == 0 && leftCount == 0;
    }

    public static void main(String[] args) {
        System.out.println(judgeCircle("DULURD"));  // true
        System.out.println(judgeCircle("DULURR"));  // false
    }
}
