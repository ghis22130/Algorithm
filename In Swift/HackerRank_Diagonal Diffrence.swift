//
//  HackerRank_Diagonal Diffrence.swift
//  Algorithm
//
//  Created by 지북 on 2021/01/27.
//

import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    return abs(arr[0].enumerated().reduce(0) { $0 + arr[$1.0][$1.0] - arr[$1.0][arr[0].count - $1.0 - 1]})
}
