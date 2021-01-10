import re
from itertools import permutations

# 연산자 받아서 계산해서 연산 값 반환
def getNumber(num1, operation, num2):
    answer = 0
    if operation == '+':
        answer = num1+num2
    elif operation == '-' :
        answer = num1-num2
    elif operation == '*' :
        answer = num1*num2
    return answer

def solution(expression):
    answer = 0
    #연산자 배열
    arr_opr = re.split('[0-9]',expression)
    arr_opr = list(filter(lambda x: x!= '', arr_opr)) # '' 삭제
    #숫자 배열 int로 변환 
    arr_num = re.split('[+*-]',expression)
    arr_num = list(map(int,arr_num))
    #연산자 순위 조합
    opr = list(permutations(['+','-','*']))
    
    for now_opr in opr :
        temp_num = arr_num.copy()
        temp_opr = arr_opr.copy()
        #마지막 연산 제외하고 우선 순위대로 연산
        for i in now_opr[:2] :
            while i in temp_opr:
                idx = temp_opr.index(i)
                tmp = getNumber(temp_num[idx],temp_opr[idx],temp_num[idx+1])
                temp_num[idx] = tmp
                temp_num.pop(idx+1)
        #마지막 연산자 빠밤~
        for i in range(len(temp_opr)) :
            temp_num[0] = getNumber(temp_num[0],temp_opr.pop(),temp_num[1])
            temp_num.pop(1)
        
        result = temp_num[0]
        if abs(result) > answer :
            answer = abs(result)
    return answer
