//
//  백준1009-분산처리.swift
//  CodeSquad_Masters
//
//  Created by 지북 on 2021/01/06.
//

import Foundation

func algoritm1009() {
    let num = readLine()!

    for _ in 0..<Int(num)! {
        let arr = readLine()!.components(separatedBy: " ")
        let order = (Int(arr[1])!-1)%4+1
        let result = Int(pow(Double(arr[0])!, Double(order)))
        let answer = (result-1) % 10 + 1
        print(answer)
    }
}
