//
//  LeetCode-TwoSum.swift
//  CodeSquad_Masters
//
//  Created by 지북 on 2021/01/13.
//

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let size = nums.count
        var answer : [Int] = []
        for i in 0..<size-1 {
            for j in 1..<size {
                if i != j && nums[i] + nums [j] == target {
                    answer = [i,j]
                }
            }
        }
        return answer
    }
}
