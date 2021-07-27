import java.util.Scanner;

public class Palindrome {
    public String solution(String str) {
        String actual = str.replaceAll("[^a-zA-Z]", "");
        String expected = new StringBuilder(actual).reverse().toString();

        if (expected.equalsIgnoreCase(actual))
            return "YES";
        else
            return "NO";
    }

    public static void main(String[] args) {
        Palindrome palindrome = new Palindrome();
        Scanner scanner = new Scanner(System.in);
        System.out.println(palindrome.solution(scanner.nextLine()));
    }
}
