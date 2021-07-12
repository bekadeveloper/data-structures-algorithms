import Foundation

// 1
// Time Complexity: O(m + n), where m is the # of nodes in first list, and n is the # of nodes in second list.
func mergeSorted<T: Comparable>(_ left: LinkedList<T>, _ right: LinkedList<T>) -> LinkedList<T> {
    
    var list1 = left
    var list2 = right
    var mergedList = LinkedList<T>()
    
    guard !list1.isEmpty else { return list2 }
    guard !list2.isEmpty else { return list1 }
    
    while !list1.isEmpty || !list2.isEmpty {
        
        if list1.isEmpty {
            while let poppedValue = list2.pop() {
                mergedList.append(poppedValue)
            }
        } else if list2.isEmpty {
            while let poppedValue = list1.pop() {
                mergedList.append(poppedValue)
            }
        } else {
            if list1.head!.value < list2.head!.value {
                mergedList.append(list1.pop()!)
            } else {
                mergedList.append(list2.pop()!)
            }
        }
    }
    
    return mergedList
}


// 1
var list1 = LinkedList<Int>()
var list2 = LinkedList<Int>()

list1.append(1)
list1.append(4)
list1.append(10)
list1.append(11)

list2.append(-1)
list2.append(2)
list2.append(3)
list2.append(6)

let mergedList = mergeSorted(list1, list2)

print("List1: \(list1)")
print("List2: \(list2)")
print("Merged List: \(mergedList)")