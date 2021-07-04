import Foundation

func getMiddle<T>(_ list: LinkedList<T>) -> Node<T>? {
    return list.node(at: list.count/2)
}

var list = LinkedList<Int>()
list.append(1)
list.append(2)
list.append(3)

print("List: \(list)")

let middleNode = getMiddle(list)
print("Middle node: \(middleNode!.value)")
