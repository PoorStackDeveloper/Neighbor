## 모의고사 풀이

<ins> 이 문제는 완전탐색 유형의 문제이다. </ins>  

<img src="../../../img/jihwan/모의고사_문제.png">

1. 우선 패턴을 정의해준다
```python
    answer_1 = [1,2,3,4,5] # 5개
    answer_2 = [2,1,2,3,2,4,2,5] # 8개
    answer_3 = [3,3,1,1,2,2,4,4,5,5] # 10개
```
2. 문제별 정답 개수를 구할 배열을 선언한다.

```python
    counts = [0,0,0] # 초기화
```

3. answer과 하나하나 대조해가면서 문제를 체크한다.
```python
    for i in range(len(answers)):
        if answer_1[i%5] == answers[i]:
            counts[0] += 1

    ... etc
```

4. 누가 가장 많이 맞췄는지 검사한다.

```python
    for person, count in enumerate(counts):
        if count == max(counts):
            answer.append(person+1)

```

5. 여기서 ``enumerate`` 란 ``(index, value)`` 이렇게 출력해주는 함수

``` py
>>> t = [1, 5, 7, 33, 39, 52]
>>> for p in enumerate(t):
...     print(p)
... 
(0, 1)
(1, 5)
(2, 7)
(3, 33)
(4, 39)
(5, 52)

```