import java.util.HashMap;
import java.util.Map;

public class RomanToInteger {
    public static int romanToInt(String s) {
        Map<Character, Integer> romanNumeral = new HashMap<>(7);
        romanNumeral.put('I', 1);
        romanNumeral.put('V', 5);
        romanNumeral.put('X', 10);
        romanNumeral.put('L', 50);
        romanNumeral.put('C', 100);
        romanNumeral.put('D', 500);
        romanNumeral.put('M', 1000);

        int val = 0;
        char[] chars = s.toCharArray();
        for (int i = 0; i < chars.length; i++) {
            if (i != chars.length - 1 && romanNumeral.get(chars[i]) < romanNumeral.get(chars[i + 1]))
                val -= romanNumeral.get(chars[i]);
            else
                val += romanNumeral.get(chars[i]);
        }
        return val;
    }

    public static void main(String args[]) {
        System.out.println(romanToInt("DCXXI"));   // 621
        System.out.println(romanToInt("MCMLXXX")); // 1980
    }
}
