## 가장 작은 수 제거하기

#### 1. 문제 설명
<img src="../../../img/jihwan/q_img.png">

#### 2. 코드 설명
```java
public int[] solution(int[] arr) {
    // 입력받은 수의 길이 구하기
    int arrLen = arr.length;
    if(arrLen <= 1) return new int[]{-1}; // 입력받은 배열의 길이가 1개 이하일경우 -1를 원소로 가지고 있는 int형 배열 반환

    int i; // for문에서 사용할 int형 변수

    // 작은수 하나를 제거하므로 arr의 길이의 -1 의 크기로 answer배열을 생성한다.
    int[] answer = new int[arrLen - 1];
    // minData 보다 작은값을 탐색하여 최종적으로 작은값을 가져온다.
    int minData = arr[0];
    for(i = 1; i < arrLen; i++) {
        if(minData > arr[i])
            minData = arr[i];
    }
    
    // arr원소의 작은값을 제외한 값을 answer변수에 차래대로 저장한다.
    i = 0;
    for (int j : arr) {
        if(j != minData)
            answer[i++] = j;
    }
    return answer;
}

