import java.util.ArrayList;
import java.util.Arrays;
public class Solution {
    public ArrayList<Integer> solution(int []arr) {
        ArrayList<Integer> answer = new ArrayList<>();
        
        int prevNum = 18;
        for(int i : arr){
            if(i != prevNum){
                answer.add(i);
                prevNum = i;
            }
        }
        return answer;
    }
}