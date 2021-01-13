//
//  LeetCode-RemoveDuplicatesFromSortedList.swift
//  CodeSquad_Masters
//
//  Created by 지북 on 2021/01/13.
//


import Foundation

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var pointer = head
    var startIntNode = head
    
    while pointer != nil {
        if pointer?.val != startIntNode?.val {
            startIntNode?.next = pointer
            startIntNode = pointer
        }
        if pointer?.val == startIntNode?.val && pointer?.next == nil {
            startIntNode?.next = nil
        }
        pointer = pointer?.next
    }
    return head
}
