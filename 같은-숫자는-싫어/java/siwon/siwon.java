import java.util.*;

public class Solution {
    public int[] solution(int []arr) {
        if(arr.length == 0) return arr;
        ArrayList<Integer> arrayList = new ArrayList<>();

        int duplicationNum = arr[0];
        arrayList.add(duplicationNum);
        int arrayListIdx = 0;
        for(int i : arr){
            if(i != arrayList.get(arrayListIdx)){
                arrayList.add(i);
                arrayListIdx++;
            }
        }

        int []answer = new int[arrayListIdx + 1];
        for(int i = 0; i < arrayListIdx + 1; i++)
            answer[i] = arrayList.get(i);

        return answer;
    }
}