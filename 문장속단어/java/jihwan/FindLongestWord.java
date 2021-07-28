import java.util.Scanner;

public class FindLongestWord {
    public String finder(String str) {
        /**
         * maxLength: 단어의 길이의 수를 비교하기 위한 변수 result: 가장 긴 길이의 단어를 반환하기 위한 변수 strArray: 받은
         * 문장을 공백으로 나누어 배열로 저장하는 변수
         */
        int maxLength = Integer.MIN_VALUE;
        String result = "";
        String[] strArray = str.split("\\s");

        for (int i = 0; i < strArray.length; i++) {
            if (strArray[i].length() > maxLength) {
                maxLength = strArray[i].length();
                result = strArray[i];
            }
        }

        return result;
    }

    public static void main(String[] args) {
        FindLongestWord findLongestWord = new FindLongestWord();
        Scanner scanner = new Scanner(System.in);
        String str = scanner.nextLine();
        System.out.println(findLongestWord.finder(str));
    }
}
