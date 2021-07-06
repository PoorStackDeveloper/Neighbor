## 같은 숫자는 싫어

* 배열의 크기만큼 반복문을 돌려준다

```python
solution(val):
    for i in range(len(val)):
```

* 길이는 1부터 시작하니깐 ``val[i-1]`` 부터 비교해야 함.

```python
if(val[i-1] != val[i]):
    result.append(val[i])
```

<ins>결론적으로 .. <ins> 

val[1] 랑 val[2]랑 다르면 append 하는거니깐,  
val[1] 랑 val[2]랑 같을 때는 아무 명령이 없는 것. 결론 추가되지 않는 것.