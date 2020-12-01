# 프로그래머스 깊이/너비 우선 탐색(DFS/BFS) 타겟 넘버 문제

## 문제 설명
두 개의 단어 begin, target과 단어의 집합 words가 있습니다. 

아래와 같은 규칙을 이용하여 begin에서 target으로 변환하는 가장 짧은 변환 과정을 찾으려고 합니다.

1. 한 번에 한 개의 알파벳만 바꿀 수 있습니다.
2. words에 있는 단어로만 변환할 수 있습니다.

예를 들어 begin이 hit, target가 cog, words가 [hot,dot,dog,lot,log,cog]라면 hit -> hot -> dot -> dog -> cog와 같이 4단계를 거쳐 변환할 수 있습니다.

두 개의 단어 begin, target과 단어의 집합 words가 매개변수로 주어질 때, 최소 몇 단계의 과정을 거쳐 begin을 target으로 변환할 수 있는지 return 하도록 solution 함수를 작성해주세요.

## 제한 사항
- 각 단어는 알파벳 소문자로만 이루어져 있습니다.
- 각 단어의 길이는 3 이상 10 이하이며 모든 단어의 길이는 같습니다.
- words에는 3개 이상 50개 이하의 단어가 있으며 중복되는 단어는 없습니다.
- begin과 target은 같지 않습니다.
- 변환할 수 없는 경우에는 0를 return 합니다.
 
## 입출력 예
| begin | target |words | return |
|---| ---   | --- | --- | 
|"hit"|	"cog" | ["hot", "dot", "dog", "lot", "log", "cog"] | 4]
|"hit"|	"cog" | ["hot", "dot", "dog", "lot", "log"] | 0]


## 입출력 예 설명
**예제 #1**

문제에 나온 예와 같습니다.

**예제 #2**

target인 cog는 words 안에 없기 때문에 변환할 수 없습니다.

## 문제 풀이
여벌 체육복을 가져온 학생이 도난당한 케이스를 생각하지 못한체 문제에 접근하였다. 때문에 정확성에서 점수가 감점되었다.

여벌 체육복을 가져온 학생이 도난당한 케이스를 먼저 처리해 주기 위해 리스트를 집합형으로 차집합 해주었다.

그다음으로 여분 체육복을 가진 학생의 케이스를 i+1과 i-1로 구분하여 조건문을 걸어주어 해결하였다.

```python
visited = []
answer = 0

def createArrayWords (words) :
    arrayWords = []
    
    for idx, word in enumerate(words) :
        arrayWords.append([])
        for j in word :
            arrayWords[idx].append(j)
    return arrayWords

def DFS(begin, target, arrayWords):
    global answer
    nowWords = []
    
    for i in begin : 
        nowWords.append(i)
    
    for idx, words in enumerate(arrayWords) :
        isTarget = 0
        isNotTarget = 0
        for i,  word in enumerate(nowWords) :
            if target[i] != word : isTarget += 1
        
        for i, word in enumerate(words) :
            if nowWords[i] != word : isNotTarget += 1
                
        if visited[arrayWords.index(target)] == True :
            return
        if visited[idx]==True : continue
        if isTarget == 1 :
            visited[arrayWords.index(target)] = True
            answer+=1
            return
        elif isNotTarget == 1 :
            answer+=1
            visited[idx] = True
            DFS(words, target, arrayWords)
    return 
    
    
def solution(begin, target, words):
    global visited
    visited = [False] * len(words)
    
    if target not in words : 
        return 0
    
    arrayTarget = []
    for i in target : 
        arrayTarget.append(i)
    arrayWords = createArrayWords(words)
    
    DFS(begin, arrayTarget, arrayWords)
    return answer
```

참고 : <https://programmers.co.kr/learn/courses/30/lessons/43163>