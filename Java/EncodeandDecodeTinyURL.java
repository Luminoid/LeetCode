import java.math.BigInteger;
import java.util.HashMap;

public class EncodeandDecodeTinyURL{
    static HashMap<String, String> map = new HashMap<>();
    static String alphabet = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    static BigInteger radix = BigInteger.valueOf(62);

    public static String Convert10to62(BigInteger i){
        String s = "";
        int len = 6;
        while (i.compareTo(BigInteger.ZERO) > 0){
            int digit = i.mod(radix).intValue();
            i = i.divide(radix);
            s = alphabet.charAt(digit) + s;
            len--;
        }
        while (len > 0){
            s = '0' + s;
            len--;
        }
        return s;
    }

    public static BigInteger Convert62to10(String s){
        int place = 5;
        BigInteger i = BigInteger.ZERO;
        for (char c : s.toCharArray()) {
            int val = alphabet.indexOf(c);
            i = i.add(BigInteger.valueOf(val).multiply(radix.pow(place)));
            place--;
        }
        return i;
    }

    // Encodes a URL to a shortened URL.
    public static String encode(String longUrl) {
        String index = Convert10to62(BigInteger.valueOf(map.size()));
        map.put(index, longUrl);
        String shortUrl = "http://tinyurl.com/" + index;
        return shortUrl;
    }

    // Decodes a shortened URL to its original URL.
    public static String decode(String shortUrl) {
        String[] part = shortUrl.split("/");
        String index = part[part.length - 1];
        String longUrl = map.getOrDefault(index, "Not Found");
        return longUrl;
    }

    public static void main(String[] args) {
        System.out.println(encode("https://leetcode.com/problems/design-tinyurl-1"));
        System.out.println(encode("https://leetcode.com/problems/design-tinyurl-2"));
        System.out.println(encode("https://leetcode.com/problems/design-tinyurl-3"));
        System.out.println(encode("https://leetcode.com/problems/design-tinyurl-4"));
        System.out.println(encode("https://leetcode.com/problems/design-tinyurl-5"));
        System.out.println(encode("https://leetcode.com/problems/design-tinyurl-6"));
        System.out.println(encode("https://leetcode.com/problems/design-tinyurl-7"));
        System.out.println(encode("https://leetcode.com/problems/design-tinyurl-8"));
        System.out.println(encode("https://leetcode.com/problems/design-tinyurl-9"));
        System.out.println(encode("https://leetcode.com/problems/design-tinyurl-10"));
        System.out.println(encode("https://leetcode.com/problems/design-tinyurl-11"));
        System.out.println(encode("https://leetcode.com/problems/design-tinyurl-12"));
        System.out.println(decode("http://tinyurl.com/000000"));
        System.out.println(decode("http://tinyurl.com/000009"));
        System.out.println(decode("http://tinyurl.com/00000b"));
    }

}
