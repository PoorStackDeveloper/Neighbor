## 유효한 필랜드롬
> 이 문제를 가장 많이 고민하고 해맸다.

첫번째 세운 문제가설
1. `str`을 절반 나눠 `initial` 과 `reversed` 로 각각 저장 하려고 했다.
2. `initial`을 알파벳만 `StringBuilder`로 `reverse` 처리 했을 때.
3. expected 와 reversed 가 같다면 YES 처리 하려고 했다.

최종 문제가설
1. `str`을 알파벳만 남겨 `reverse` 한다.
2. -1에서 한 값이 `str`에서 특수문자 뺀 것과 동일하다면 `YES` 를 처리한다.

### 중요문법
1. `equalsIgnoreCase`
> String 비교는 맞는데 대소문자 구분 x

2. `replaceAll("[^a-zA-Z]", "");`
> regex(정규식)에 해당하는 문자는 모두 `""` 로 지운다.