import java.util.Arrays;

public class AssignCookies {
    public static int findContentChildren(int[] g, int[] s) {
        int n = 0;
        int len = g.length;
        Arrays.sort(g);
        Arrays.sort(s);
        for (int i : s) {
            if (n < len && i >= g[n]){
                n++;
            }
        }
        return n;
    }

    public static void main(String args[]){
        System.out.println(findContentChildren(new int[]{1, 2, 3, 5, 7}, new int[]{1, 2, 2, 6}));
        System.out.println(findContentChildren(new int[]{1, 2}, new int[]{1, 2, 2}));
    }
}