class Solution {
    public String solution(String s) {
        int sLength = s.length();
        int sHalfIdx = sLength / 2;
        return sLength % 2 == 0 ? s.substring(sHalfIdx - 1, sHalfIdx + 1) : s.substring(sHalfIdx, sHalfIdx + 1);
    }
}