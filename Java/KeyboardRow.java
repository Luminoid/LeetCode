import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by Ethan on 2017/9/17.
 */
public class KeyboardRow {
    public static String[] findWords(String[] words) {
        List<String> retLst = new ArrayList<>();
        for (String word : words) {
            if (word.toLowerCase().matches("[qwertyuiop]*|[asdfghjkl]*|[zxcvbnm]*")){
                retLst.add(word);
            }
        }
        return retLst.toArray(new String[retLst.size()]);
    }

    public static void main(String[] args) {
        String[] arr = {"Hello", "Alaska", "Dad", "Peace"};
        System.out.println(Arrays.toString(findWords(arr)));  // ["Alaska", "Dad"]
    }
}
