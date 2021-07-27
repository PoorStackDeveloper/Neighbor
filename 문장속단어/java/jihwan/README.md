# 문장 속 단어
### 문제가설
1. 문장을 공백으로 split 한다.
2. split 하여 얻은 단어들을 배열에 저장한다.
3. 반복문을 돌려 가장 긴 길이의 단어를 return 한다.

### 코드설명
```java
scanner.next(); 와 scanner.nextLine()의 차이

// scanner.next 는 공백을 포함하여 저장하지 않는다.
// scanner.nextLine 은 공백을 포함하여 저장한다.
```

```java
// 변수 maxLength에 Integer.MIN_VALUE 를 대입한다.
int maxLength = Integer.MIN_VALUE; 
```