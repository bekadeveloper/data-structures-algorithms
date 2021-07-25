/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func deleteNode(_ node: ListNode?) {
        guard var curr = node else { return }
        var prev = curr
        
        while curr.next != nil {
            curr.val = curr.next!.val  
            prev = curr
            curr = curr.next!
        }
        prev.next = nil
    }
}

class Solution2 {
    func deleteNode(_ node: ListNode?) {
        node!.val = node!.next!.val
        node?.next = node?.next?.next
    }
}