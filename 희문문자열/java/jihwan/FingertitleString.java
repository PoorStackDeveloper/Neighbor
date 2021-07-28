import java.util.Scanner;

public class FingertileString {

    public String solution(String str) {
        StringBuilder stringBuilder = new StringBuilder();

        if (stringBuilder.append(str.toUpperCase()).reverse().toString().equals(str.toUpperCase()))
            return "YES";
        else
            return "NO";

    }

    public static void main(String[] args) {
        FingertileString fingertileString = new FingertileString();
        Scanner scanner = new Scanner(System.in);

        System.out.println(fingertileString.solution(scanner.next()));
    }
}
