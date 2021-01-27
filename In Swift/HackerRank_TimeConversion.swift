//
//  HackerRank_TimeConversion.swift
//  Algorithm
//
//  Created by 지북 on 2021/01/27.
//

import Foundation

func timeConversion(s: String) -> String {
    let dateFormat = DateFormatter()
    dateFormat.dateFormat = "hh:mm:ssa"
    let date = dateFormat.date(from: s)
    dateFormat.dateFormat = "HH:mm:ss"

    return dateFormat.string(from: date!)
}
