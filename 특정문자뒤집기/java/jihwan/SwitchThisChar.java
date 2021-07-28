package 특정문자뒤집기;

import java.util.Scanner;

public class SwitchThisChar {
    public String solution(String str) {
        /**
         * result: 최종 값을 담을 변수 지정 lt, rt: left index 위치와 right index 위치 지정 변수 myChar:
         * param으로 받은 str을 list 형식으로 전환
         */
        String result = "";
        int lt = 0, rt = str.length() - 1;
        char[] myChar = str.toCharArray();

        while (lt < rt) {
            if (!Character.isAlphabetic(myChar[lt])) {
                lt++;
            } else if (!Character.isAlphabetic(myChar[rt])) {
                --rt;
            } else {
                char tmp = myChar[lt];
                myChar[lt] = myChar[rt];
                myChar[rt] = tmp;
                lt++;
                --rt;
            }
        }
        // char 형 list 인 myChar을 String으로 전환
        result = String.valueOf(myChar);
        return result;
    }

    public static void main(String[] args) {
        SwitchThisChar switchThisChar = new SwitchThisChar();
        Scanner scanner = new Scanner(System.in);
        String myString = scanner.next();

        System.out.println(switchThisChar.solution(myString));
    }
}
