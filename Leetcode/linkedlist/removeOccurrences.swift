import Foundation

extension LinkedList where Value: Equatable {
  
  // 1 (easy way)
  // Time: O(n)
  // Space: O(n)
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

    // 2
    // Time: O(n)
    // Space: O(1)
    mutating func removeAllOccur(_ value: Value) {
        while head != nil, head!.value == value {
            head = head!.next 
        }
        
        var prev = head
        var current = head?.next
        
        while current != nil {
            guard current!.value != value else {
                prev?.next = current!.next
                current = current!.next
                continue
            }
            
            prev = current
            current = current!.next
        }
        
        tail = prev
    }
}

// 1
var linkedList = LinkedList<Int>()
linkedList.append(1)
linkedList.append(3)
linkedList.append(3)
linkedList.append(3)
linkedList.append(4)

print("Original list: \(linkedList)")
linkedList.removeAll(3)
print("After removing all 3s: \(linkedList)")


// 2 
var list2 = LinkedList<Int>()
list2.push(3)
list2.push(2)
list2.push(2)
list2.push(1)
list2.push(1)

print(list2)
list2.removeAllOccur(2)
print(list2)