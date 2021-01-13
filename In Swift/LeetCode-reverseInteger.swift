//
//  LeetCode-reverseInteger.swift
//  CodeSquad_Masters
//
//  Created by 지북 on 2021/01/13.
//

import Foundation

//String 으로 변환 후 reverse 하여 계산
func reverse(_ x: Int) -> Int {
    var strInt = "\(x)"
    var temp = ""
    strInt = String(strInt.reversed())
    
    if strInt.contains("-") {
        temp = "-"
        strInt.removeLast()
    }
    
    for i in strInt {
        temp += String(i)
    }
    if Int(temp)! < INT32_MAX && Int(temp)! > Int32.min {
        return Int(temp)!
    }
    return 0
}


//Int형에서 나눗셈과 몫으로만 계산
func reverse2(_ x: Int) -> Int {
    var pop = 0
    var number = x
    var answer = 0
    
    while number != 0 {
        pop = number % 10
        number /= 10
        
        answer = answer * 10 + pop
    }
    if answer > Int32.max || answer < Int32.min {
        return 0
    }
    return answer
}



