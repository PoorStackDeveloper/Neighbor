# 희문문자열

### 문제가설
1. str 로 문자열을 받고 모두 uppercase 로 만든다.
2. StringBuilder을 통해 reverse 한 값과 본래의 uppercase 한 값이 같은지 비교한다.
3. 같다면 yes, 다르다면 no 를 return 한다.

### 중요문법
1. `toUpperCase`
> 문자열의 모든 문자를 대문자로 변환한다.

2. `.reverse().toString()`
> StringBuilder 로 reverse 한 값을 toString 처리한다.