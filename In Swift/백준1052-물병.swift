import Foundation

let arr = readLine()!.components(separatedBy: " ").map {Int($0)}

var N = arr[0]!
let K = arr[1]!
var answer = 0

while true {
    var cnt = 0
    var temp = N
    
    while temp != 0 {
        if temp % 2 == 1 {
            cnt+=1
        }
        temp /= 2
    }
    if cnt <= K { break }
    N+=1
    answer+=1
}

print(answer)
