package 단어뒤집기;

import java.util.ArrayList;
import java.util.Scanner;

public class WordFlipTwo {
    private ArrayList<String> solution(int n, String[] strings) {
        ArrayList<String> answer = new ArrayList<>();
        for (String x : strings) {
            String tmp = new StringBuilder(x).reverse().toString();
            answer.add(tmp);
        }
        return answer;
    }

    public static void main(String[] args) {
        /**
         * 생성자 생성 및 인스턴스 할당.
         */
        WordFlipTwo wordFlipTwo = new WordFlipTwo();
        Scanner scanner = new Scanner(System.in);
        /**
         * 몇개의 String 을 넣을건지, 그리고 그만큼의 배열 할당
         * 할당된 배열에 String 입력
         */
        int n = scanner.nextInt();
        String[] strings = new String[n];
        for (int i=0; i<n; i++){
            strings[i] = scanner.next();
        }
        // 람다식으로 forEach 작성 및 출력
        wordFlipTwo.solution(n, strings).forEach(s -> System.out.println(s));
    }
}
