import java.util.Scanner;

public class FindChar {
    public int solution(String input, char find) {
        // 몇개인지 세는 변수
        int count = 0;

        for (int i = 0; i <= input.length() - 1; i++) {
            if (input.toUpperCase().charAt(i) == Character.toUpperCase(find)) {
                count += 1;
            }
        }
        return count;
    }

    public static void main(String[] args) {
        FindChar findChar1 = new FindChar();
        Scanner scanner = new Scanner(System.in);

        String str = scanner.next();
        char c = scanner.next().charAt(0);
        System.out.println(findChar1.solution(str, c));
    }
}
