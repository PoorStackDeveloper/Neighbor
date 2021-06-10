### 가운데 글자 가져오기

* 문제 설명
![](../../../img/taehyeon/가운데글자-문제.png)
  
* 코드 설명
```java
class Solution {
    public String solution(String s) {
        String answer = "";
        // 1.단어를 char배열로, 길이를 구한다. s.toCharArray();
        // 2.찾을 글자의 시작점을 구한다(홀:length/2, 짝:length/2-1).
        // 3.끝나는 조건은 length/2
        // 4.글자를 answer에 더한다.
        // 5.return.

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
```
* 상세 설명
`String.toCharArray()` : 문자열을 한 글자씩 쪼개서 이를 char타입의 배열에 집어넣어주는 친절한 메소드.  
`length` : **배열의 길이**를 알고자 할 때 사용된다.  
`삼항연산자` ex) `(len%2==1)? len/2:len/2-1` (조건문) ? {참일 때} : {거짓일 때}

ex)  
로직을 말로 풀어보면 `powerr`이라는 문자열이 있다.   
`s.toCharArray()`를 이용하여 배열에 넣고 배열의 길이(6)를 알아낸 뒤   
찾을 글자의 시작점과 끝나는 점을 구한다.  
(start = 2, end = 3) 알아낸 시작점과 끝점으로 for문을 돌려 answer에 문자를 더해준다("ow")   
answer반환