//
//  프로그래머스_연습문제_이상한문자만들기.swift
//  Algorithm
//
//  Created by 지북 on 2021/01/20.
//

import Foundation


func 이상한문자만들기(_ s:String) -> String {
    var idx = 0
    var answer = ""
    
    s.forEach { element in
        if element == " " { idx = -1 }
        idx % 2 == 0 ? answer.append(element.uppercased()) : answer.append(element.lowercased())
        idx += 1
    }
    
    return answer
}




