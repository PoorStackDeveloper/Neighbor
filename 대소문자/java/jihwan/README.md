# 대소문자 반환하기
### 문제가설
1. String 하나를 solution method로 넘겨준다.
2. 만약 하나의 문자 char 가 소문자라면 -> 대문자, 대문자라면 -> 소문자 

### 중요문법
```java
// "something" + "something" 메모리 할당, 해제의 비효율을 막기 위해
StringBuilder sb = new StringBuilder();

for(char x : myString.toCharArray()){
    // 만약 문자 char 이 소문자라면.. isLowerCase 함수 사용
    if(Character.isLowerCase(x)){}
}
```