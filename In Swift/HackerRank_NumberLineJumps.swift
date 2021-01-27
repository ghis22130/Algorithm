//
//  HackerRank_NumberLineJumps.swift
//  Algorithm
//
//  Created by 지북 on 2021/01/27.
//

import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    if (x1<x2 && v1<=v2) || (x2<x1 && v2<=v1) { return "NO" }
    var xx1 = x1
    var xx2 = x2
    var distance = 0
    
    while distance > -1 {
        if xx1<xx2 {
            xx2 += v2
            xx1 += v1
            distance = xx2-xx1
        } else {
            xx2 += v2
            xx1 += v1
            distance = xx1-xx2
        }
        if xx1 == xx2 { return "YES" }
    }
    return "NO"
}
