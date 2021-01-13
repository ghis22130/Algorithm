//
//  LeetCode-LongestCommonPrefix.swift
//  CodeSquad_Masters
//
//  Created by 지북 on 2021/01/13.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count < 1 { return "" }
    
    var minStr = strs.min{$0.count < $1.count}

    for str in strs {
        while !str.hasPrefix(minStr!) {
            minStr?.removeLast()
        }
    }

    return minStr!
}
