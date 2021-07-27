import java.util.Scanner;

public class ExportNum {
    public Integer Extract(String str) {
        String result = str.replaceAll("[^0-9]", "");
        return Integer.parseInt(result);
    }

    public static void main(String[] args) {
        ExportNum exportNum = new ExportNum();
        Scanner scanner = new Scanner(System.in);
        System.out.println(exportNum.Extract(scanner.next()));
    }
}
