import java.util.Scanner;

public class Solution {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt(), b = sc.nextInt();

        String oneLineOfAnswer = String.valueOf(new char[a]).replaceAll("\0", "*") + "\n";
        StringBuilder answer = new StringBuilder(oneLineOfAnswer);
        for(int i = 0; i < b - 1; i++)
            answer.append(oneLineOfAnswer);

        System.out.println(answer);
    }
}