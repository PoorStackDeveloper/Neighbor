## 문자 찾기

문제의 가설
1. String, char 두가지를 solution 으로 넘겨준다.
2. String 과 char 을 모두 대 문자로 바꿔 비교한다.

중요 문법
```java
// String 을 i번째 index 값을 비교한다.
for (i=0; i<=something.length(); i++){
    if(something.charAt(i) == someChar){
        count += 1;
    };    
}
```

백준 방식
```java
Scanner scanner = new Scanner(System.in);
// String 받을 때.
String str = scanner.next();
// char 받을 때. String 으로 받고 그 0 번째
char myChar = scanner.next().charAt(0);
```