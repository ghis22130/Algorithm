//
//  HackerRank_SaveThePrisnor.swift
//  Algorithm
//
//  Created by 지북 on 2021/01/27.
//

import Foundation

func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
    return (s + m - 2) % n + 1
}



