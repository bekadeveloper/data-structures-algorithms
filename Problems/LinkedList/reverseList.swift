import Foundation 

extension LinkedList {
    
  mutating func reverse() {
    guard head != nil, head!.next != nil else { return }
    
    var stack = [Value]()
    
    var current1 = head
    
    while current1 != nil {
        stack.append(current1!.value)
        current1 = current1!.next
    }
        
    head = Node(value: stack.popLast()!)
    var current2 = head
    
    while let poppedValue = stack.popLast() {
        current2!.next = Node(value: poppedValue)
        current2 = current2!.next
    }
    
    tail = current2
  }
}

var list = LinkedList<String>()
list.append("Hello")
list.append("Linked")
list.append("List!")

print("Before reversing: \(list)")

list.reverse()

print("After reversing: \(list)")
