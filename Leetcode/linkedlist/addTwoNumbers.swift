import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
 
// Time: O(max(n, m)), where n is the number of nodes in first list, and m is the number of nodes in second list
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var node1 = l1
        var node2 = l2
        var anchor = 0
        var resultNode = ListNode()
        var current = resultNode
        
        while node1 != nil || node2 != nil || anchor == 1 {
            let sum = (node1?.val ?? 0) + (node2?.val ?? 0) + anchor
            
            current.next = ListNode(sum % 10)
            anchor = sum / 10
            current = current.next!
            
            node1 = node1?.next
            node2 = node2?.next
        }
        
        return resultNode.next
    }
}
