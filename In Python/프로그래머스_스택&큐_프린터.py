def solution(priorities, location):
    answer = 0

    while True: 
        if len(priorities) == 1 :
            return answer+1

        check_number = priorities.pop(0)
        
        if check_number >= max(priorities):
            answer += 1
            if location == 0 : return answer
        else :
            priorities.append(check_number)
            if location == 0 : 
                location = len(priorities)-1
                continue
        location-=1

    return answer