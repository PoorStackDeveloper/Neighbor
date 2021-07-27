import java.util.Scanner;

public class CaseLetter {
    public String converter(String str){
        // String 끼리의 연산을 위해 StringBuilder 생성.
        StringBuilder myResult = new StringBuilder();

//        for (int i=0; i<=str.length()-1; i++){
//            if(str.charAt(i) == str.toUpperCase().charAt(i)){
//                myResult.append(str.toLowerCase().charAt(i));
//            } else {
//                myResult.append(str.toUpperCase().charAt(i));
//            }
//        }

        for (char x : str.toCharArray()) {
            if (Character.isLowerCase(x)) myResult.append(Character.toUpperCase(x));
            else myResult.append(Character.toLowerCase(x));
        }

        return myResult.toString();
    }

    public static void main(String[] args) {
        CaseLetter caseLetter = new CaseLetter();
        Scanner scanner = new Scanner(System.in);
        String str = scanner.next();

        System.out.println(caseLetter.converter(str));
    }
}
