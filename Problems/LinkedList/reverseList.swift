import Foundation 

extension LinkedList {
    
  // 1
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


  // 2 (easy way to reverse)
  mutating func easyReverse() {
    var tempList = LinkedList<Value>()

    for value in self {
      tempList.push(value)
    }

    head = tempList.head
    tail = tempList.tail
  }
}


var list1 = LinkedList<String>()
list1.append("Hello")
list1.append("Linked")
list1.append("List!")

print("Before reversing: \(list1)")
list1.reverse()
print("After reversing: \(list1)")



var list2 = LinkedList<Int>()
(1...4).forEach { list.append($0) }

print("Before reversing: \(list2)")
list2.easyReverse()
print("After reversing: \(list2)")
