class Solution {
    public String solution(String s) {
        String answer = "";

        char[] strArray = s.toCharArray();
        int len = strArray.length;
        int start = (len%2==1)? len/2:len/2-1;
        int end = len/2;

        for(int i=start; i<=end; i++) {
            answer += strArray[i];
        }

        return answer;
    }
}