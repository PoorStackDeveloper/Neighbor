import java.util.ArrayList;
import java.util.Arrays;
public class Solution {
    public ArrayList<Integer> solution(int []arr) {
        ArrayList<Integer> answer = new ArrayList<>();
        
        int duplicationNum = 18;
        for(int i : arr){
            if(i != duplicationNum){
                answer.add(i);
                duplicationNum = i;
            }
        }
        return answer;
    }
}