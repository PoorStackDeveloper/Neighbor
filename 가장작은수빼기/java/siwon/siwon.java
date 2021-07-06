public int[] solution(int[] arr) {
    int arrLen = arr.length;
    if(arrLen <= 1) return new int[]{-1};

    int i;

    int[] answer = new int[arrLen - 1];
    int minData = arr[0];
    for(i = 1; i < arrLen; i++) {
        if(minData > arr[i])
            minData = arr[i];
    }
    
    i = 0;
    for (int j : arr) {
        if(j != minData)
            answer[i++] = j;
    }
    return answer;
}