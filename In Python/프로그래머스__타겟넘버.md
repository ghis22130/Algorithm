# 프로그래머스 깊이/너비 우선 탐색(DFS/BFS) 타겟 넘버 문제

## 문제 설명
n개의 음이 아닌 정수가 있습니다. 

이 수를 적절히 더하거나 빼서 타겟 넘버를 만들려고 합니다. 

예를 들어 [1, 1, 1, 1, 1]로 숫자 3을 만들려면 다음 다섯 방법을 쓸 수 있습니다.

- -1+1+1+1+1 = 3
- +1-1+1+1[+1 = 3
- +1+1-1+1+1 = 3
- +1+1+1-1+1 = 3
- +1+1+1+1-1 = 3

사용할 수 있는 숫자가 담긴 배열 numbers, 타겟 넘버 target이 매개변수로 주어질 때 숫자를 적절히 더하고 빼서 타겟 넘버를 만드는 방법의 수를 return 하도록 solution 함수를 작성해주세요.

## 제한 사항
- 주어지는 숫자의 개수는 2개 이상 20개 이하입니다.
- 각 숫자는 1 이상 50 이하인 자연수입니다.
- 타겟 넘버는 1 이상 1000 이하인 자연수입니다.
 
## 입출력 예
| numbers | target  | return |
|---| ---   | --- | 
|[1,1,1,1,1]|	3 | 5 |


## 입출력 예 설명

문제에 나온 예와 같습니다.

## 문제 풀이
여벌 체육복을 가져온 학생이 도난당한 케이스를 생각하지 못한체 문제에 접근하였다. 때문에 정확성에서 점수가 감점되었다.

여벌 체육복을 가져온 학생이 도난당한 케이스를 먼저 처리해 주기 위해 리스트를 집합형으로 차집합 해주었다.

그다음으로 여분 체육복을 가진 학생의 케이스를 i+1과 i-1로 구분하여 조건문을 걸어주어 해결하였다.

```python
answer = 0

def DFS(numbers,target,calculating,idx) :    
    global answer
    if(idx == len(numbers)) :
        if(calculating == target):
            answer+=1
        return
    
    DFS(numbers,target,calculating+numbers[idx],idx+1)
    DFS(numbers,target,calculating-numbers[idx],idx+1)
    
def solution(numbers, target):
    
    DFS(numbers,target,0,0)
    return answer
```

참고 : <https://programmers.co.kr/learn/courses/30/lessons/43165>