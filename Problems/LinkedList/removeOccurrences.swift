import Foundation

extension LinkedList where Value: Equatable {
  
  // 1 (easy way)
  mutating func removeAll(_ value: Value) {
    var tempList = LinkedList<Value>()

    for element in self {
        if element != value {
            tempList.append(element)
        }
    }

    head = tempList.head
    tail = tempList.tail
  }
}

var linkedList = LinkedList<Int>()
linkedList.append(1)
linkedList.append(3)
linkedList.append(3)
linkedList.append(3)
linkedList.append(4)

print("Original list: \(linkedList)")
linkedList.removeAll(3)
print("After removing all 3s: \(linkedList)")
