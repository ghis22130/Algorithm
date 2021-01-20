//
//  프로그래머스_정렬_K번째수.swift
//  Algorithm
//
//  Created by 지북 on 2021/01/20.
//

import Foundation

func K번째수(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    
    var answer:[Int] = []
    
    commands.forEach { command in
        let nCommand = command.map { $0 - 1 }
        let sArray = array[nCommand[0]...nCommand[1]].sorted()
        answer.append(sArray[nCommand[2]])
    }
    return answer
}
