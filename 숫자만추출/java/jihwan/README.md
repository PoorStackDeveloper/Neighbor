# 숫자만 추출

### 문제가설
1. str을 받는다.
2. str 에서 regex `부정 숫자 정규식`을 사용하여 아닌 것을 `replaceAll` 로 지운다.
3. 해당 String 을 `Integer.parseInt`로 강제 형 변환을 진행하여 return 한다.

### 중요문법
1. `Integer.parseInt(s)`
> s 를 Integer로 강제 형 변환.

2. `regex: [^0-9]`
> "숫자가 아닌" 이라는 해석을 가진 정규식

