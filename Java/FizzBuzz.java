import java.util.ArrayList;
import java.util.List;

public class FizzBuzz {
    public static List<String> fizzBuzz(int n) {
        List<String> ret = new ArrayList<>();
        for(int i = 1; i <= n; i++){
            if(i % 3 == 0 && i % 5 == 0){
                ret.add("FizzBuzz");
            } else if(i % 3 == 0){
                ret.add("Fizz");
            } else if(i % 5 == 0){
                ret.add("Buzz");
            } else {
                ret.add(i + "");
            }
        }
        return ret;
    }

    public static void main(String args[]){
        List<String> list = fizzBuzz(15);
        for(String s : list){
            System.out.println(s);
        }
    }
}