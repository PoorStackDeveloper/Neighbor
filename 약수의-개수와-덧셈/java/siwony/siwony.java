class Solution {
    
    boolean countMeasure(int num){
        int countMeasure = 1;
        for(int i = 1; i <= num / 2; i++)
            if(num % i == 0) countMeasure++;
        
        return countMeasure % 2 == 0 ? true : false;
    }
    
    public int solution(int left, int right) {
        int answer = 0;
        for(;left <= right; left++)
            answer += countMeasure(left) ? left : left * -1;
        
        return answer;
    }
}