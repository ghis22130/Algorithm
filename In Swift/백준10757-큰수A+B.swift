import Foundation

func fulladder(_ number1:Int, _ number2:Int, _ carry:Int) -> [Int]{
    let sum = number1+number2+carry
    return [sum/10, sum%10]
}

func bignumberadder(_ firstNumber:[Int], _ secondNumber:[Int]) -> [Int] {
    var answer : [Int] = []
    var carry = 0
    let largeNumber:[Int]
    let smallNumber:[Int]
    
    // setting largeNumber and smallNumber
    if firstNumber.count > secondNumber.count {
        largeNumber = firstNumber
        smallNumber = secondNumber
    } else if firstNumber.count < secondNumber.count {
        largeNumber = secondNumber
        smallNumber = firstNumber
    } else {
        largeNumber = firstNumber
        smallNumber = secondNumber
    }
    
    //loop largeNumber
    for i in 0..<largeNumber.count {
        if i < smallNumber.count {
            //if the idx doesn't exceeds the size of smallNumber, run fulladder
            let nowNumber = fulladder(largeNumber[i], smallNumber[i], carry)
            carry = nowNumber[0]
            answer.append(nowNumber[1])
        } else if carry == 0{
            //if the idx exceeds the size of smallNumber and carry is empty, just append
            answer.append(largeNumber[i])
        } else{
            // carry is true, run just largeNumber and carry
            let nowNumber = fulladder(largeNumber[i], 0, carry)
            carry = nowNumber[0]
            answer.append(nowNumber[1])
        }
    }
    if carry != 0 {
    answer.append(carry)
    }
    return answer
}

let numbers = readLine()!.components(separatedBy: " ")

var firstNumber:[Int] = []
var secondNumber:[Int] = []
var answer:String = ""

for i in numbers[0] {
    let elment:Int? = Int(String(i))
    firstNumber.append(elment!)
}
for i in numbers[1] {
    let elment:Int? = Int(String(i))
    secondNumber.append(elment!)
}

let answerArray = bignumberadder(firstNumber.reversed(), secondNumber.reversed())

for i in answerArray.reversed() {
    answer+="\(i)"
}

print(answer)
