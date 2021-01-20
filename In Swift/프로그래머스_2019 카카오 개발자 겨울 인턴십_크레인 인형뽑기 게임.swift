//
//  프로그래머스_2019 카카오 개발자 겨울 인턴십_크레인 인형뽑기 게임.swift
//  Algorithm
//
//  Created by 지북 on 2021/01/20.
//

import Foundation

func 인형뽑기(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var nBoard = board
    var box : [Int] = []
    var answer = 0
    
    for move in moves {
        var row = 0
        while row < board.count  {
            if nBoard[row][move-1] == 0 {
                row += 1
                continue }
            if box.last != nil && box.last! == nBoard[row][move-1] { box.removeLast()
                nBoard[row][move-1]=0
                answer+=2
                break
            } else {
                box.append(nBoard[row][move-1])
                nBoard[row][move-1] = 0
                break
            }
        }
    }
    return answer
}
