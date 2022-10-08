import java.util.ArrayList;
import java.util.List;

class FizzBuzz {
    // Time complexity: O()
    // Space complexity: O()

    public List<String> fizzBuzz(int n) {
        List<String> l = new ArrayList<>(n);
        for (int i = 1; i <= n; i++) {
            if (i % 15 == 0) {
                l.add("FizzBuzz");
            } else if (i % 3 == 0) {
                l.add("Fizz");
            } else if (i % 5 == 0) {
                l.add("Buzz");
            } else {
                l.add(Integer.toString(i));
            }
        }
        return l;
    }

    public static void main(String[] args) {
        FizzBuzz fizzBuzz = new FizzBuzz();
        // ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
        System.out.println(fizzBuzz.fizzBuzz(15));
    }
}
