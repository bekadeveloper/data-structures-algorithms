import Foundation

// 1 - using node(at:) method and count property
func getMiddle<T>(_ list: LinkedList<T>) -> Node<T>? {
    return list.node(at: list.count/2)
}

var list1 = LinkedList<Int>()
list1.append(1)
list1.append(2)
list1.append(3)

print("List: \(list1)")

if let middleNode = getMiddle(list1) {
    print("Middle node: \(middleNode)")
}



// 2 (runner's technique)
func findMiddle<T>(_ list: LinkedList<T>) -> Node<T>? {
    var slow = list.head
    var fast = list.head
    
    while let nextFast = fast?.next {
        slow = slow?.next
        fast = nextFast.next
    }
    
    return slow
}

var list2 = LinkedList<Int>()
(1...3).forEach { list2.append($0) }

print(list2)
if let middleNode = findMiddle(list2) { 
    print(middleNode)
}
