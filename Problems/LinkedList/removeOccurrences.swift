import Foundation

extension LinkedList where Value: Equatable {
  
  
  mutating func removeAll(_ value: Value) {
    var stack = [Value]()
    
    var current = head
    
    while current != nil {
        if current!.value != value {
            stack.append(current!.value)
        }
        current = current!.next
    }
    
    guard !stack.isEmpty else {
        head = nil
        tail = nil
        return
    }
    
    head = Node(value: stack[0])
    var current2 = head
    
    for index in 1..<stack.count {
        current2!.next = Node(value: stack[index])
        current2 = current2!.next
    }
    
    tail = current2
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
