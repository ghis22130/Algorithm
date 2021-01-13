//
//  LeetCode-PalindromeNumber.swift
//  CodeSquad_Masters
//
//  Created by 지북 on 2021/01/13.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    let strInt = String(x)
    let rStrInt = String(strInt.reversed())
    
    if strInt == rStrInt { return true }
    return false
}
