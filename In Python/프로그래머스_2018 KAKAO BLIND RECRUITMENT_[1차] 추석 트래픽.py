

from datetime import datetime, timedelta

def checkLogs(logs,l) :
    count = 0

    for log in logs :
        if log[0] < l + timedelta(milliseconds=1000) and log[1] >= l :
            count += 1
    return count

def solution(lines):
    logs = []

    for line in lines :
        date, time, during = line.split(' ')
        endTime = datetime.strptime(date+' '+time,"%Y-%m-%d %H:%M:%S.%f")
        during = int(float(during[:-1])*1000)
        startTime = endTime - timedelta(milliseconds = during + 1000)
        logs.append((startTime, endTime))


    maxCount = 0 

    for log  in logs :
        maxCount = max(maxCount, checkLogs(logs,log[0]),checkLogs(logs,log[1]))
    return maxCount


print(solution(["2016-09-15 01:00:04.001 2.0s", "2016-09-15 01:00:07.000 2s"]))