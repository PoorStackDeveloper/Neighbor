* 문제
![](../../../img/taehyeon/수박수-문제.png)
  
* 코드설명
```java
class Solution {
    public String solution(int n) {
        // 1. StringBuilder클래스 선언
        // 2. 삼항연산자 사용하여 문자열 추가 
        // 3. toString으로 반환
        
        StringBuilder answer = new StringBuilder();
        for (int i = 1; i <= n; i++) {
            answer.append(i%2==0?"박":"수");
        }
        return answer.toString();
    }
}
```

* 상세설명  
`append()` : 문자열 추가   
  `삼항연산자 이용` : i가 홀수라면 "수", 짝수라면 "박"   
`toString()` : 객체의 정보를 출력


`StringBuilder`를 사용하는 이유  
* 일반적인 String클래스는 문자열을 생성자로 넣어 인스턴스를 한번 생성하고 나면 인스턴스가 가진 문자열 값을 변경하지 못하는 단점을 보완할 수 있다.  
  > 같은 인스턴스 안의 문자열 필드값을 추가하거나 변경할 수 있도록 되어있기 때문이다.