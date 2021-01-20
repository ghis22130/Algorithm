//
//  프로그래머스_완전탐색_모의고사.swift
//  Algorithm
//
//  Created by 지북 on 2021/01/20.
//

import Foundation

func 모의고사(_ answers:[Int]) -> [Int] {
    let students = [[1,2,3,4,5],[2,1,2,3,2,4,2,5],[3,3,1,1,2,2,4,4,5,5]]
    var scores = [0,0,0]
    var result : [Int] = []

    answers.enumerated().forEach { (idx, answer) in
        if answer == students[0][ idx % 5 ] { scores[0] += 1}
        if answer == students[1][ idx % 8 ] { scores[1] += 1}
        if answer == students[2][ idx % 10 ] {scores[2] += 1}
    }
        
    scores.enumerated().forEach { (idx, score) in
        if score == scores.max() {
            result.append(idx+1)
        }
    }
    return result
}
