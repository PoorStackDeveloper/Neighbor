import java.util.Scanner;

public class RemoveDuplicateCharacters {
    public String solution(String str) {
        String answer = "";

        for (int i = 0; i < str.length(); i++) {
            /**
             * 내가 찾을 문자의 index가 해당 위치에만 있다면 저장
             */
            if (str.indexOf(str.charAt(i)) == i) {
                answer += str.charAt(i);
            }
        }

        return answer;
    }

    public static void main(String[] args) {
        RemoveDuplicateCharacters removeDuplicateCharacters = new RemoveDuplicateCharacters();
        Scanner scanner = new Scanner(System.in);
        String myStr = scanner.next();
        System.out.println(removeDuplicateCharacters.solution(myStr));
    }
}
