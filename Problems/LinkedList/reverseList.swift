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


  // 3 (more optimal algorithm for reversing a list)
  mutating func optimalReverse() {
        tail = head
        var prev = head
        var current = head?.next
        prev?.next = nil
        
        while current != nil {
            let next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        
        head = prev
    }
}

// 1
var list1 = LinkedList<String>()
list1.append("Hello")
list1.append("Linked")
list1.append("List!")

print("Before reversing: \(list1)")
list1.reverse()
print("After reversing: \(list1)")


// 2
var list2 = LinkedList<Int>()
(1...4).forEach { list2.append($0) }

print("Before reversing: \(list2)")
list2.easyReverse()
print("After reversing: \(list2)")


// 3
var list3 = LinkedList<Int>()
(1...4).forEach { list3.append($0) }

print("Before reversing: \(list3)")
list3.optimalReverse()
print("After reversing: \(list3)")