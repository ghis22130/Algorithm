import math

def solution(n, words):
    answer = []
    words_set = set()
    
    for idx, word in enumerate(words) :
        if idx == 0 : 
            words_set.add(word)
            continue

        if word in words_set or not word.startswith(words[idx-1][-1]):
            return [(idx)%n+1,math.ceil((idx+1)/n)]
        else :
            words_set.add(word)
    
    return [0,0]
