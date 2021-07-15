import Foundation

// Start of class Node
class Node {
    var data: Int
    var next: Node?

    init(d: Int) {
        data = d
    }
} // End of class Node

// Start of class LinkedList
class LinkedList {
    func insert(head: Node?, data: Int) -> Node? {
        if head == nil {
            return Node(d: data)
        }

        head?.next = insert(head: head?.next, data: data)

        return head
    }

    func display(head: Node?) {
        if head != nil {
            print(head!.data, terminator: " ")

            display(head: head?.next)
        }
    }
    // Start of function removeDuplicates
    func removeDuplicates(head: Node?) -> Node? {
        guard head != nil, head!.next != nil else { return head }

        var stack = [Int]()

        var current1 = head

        while let node = current1 {
            if !stack.contains(node.data) {
                stack.append(node.data)
            }
            current1 = node.next
        }

        var head2 = Node(d: stack[0])
        var current2 = head2

        for index in 1..<stack.count {
            current2.next = Node(d: stack[index])
            current2 = current2.next!
        }

        return head2
    } // End of function removeDuplicates
} // End of class LinkedList

var head: Node?
let linkedList = LinkedList()

let t = Int(readLine()!)!

for _ in 0..<t {
    head = linkedList.insert(head: head, data: Int(readLine()!)!)
}

linkedList.display(head: linkedList.removeDuplicates(head: head))
