import Foundation

func printInReverse<T>(_ list: LinkedList<T>) {
    var stack = [T]()
    
    var currentNode = list.head
    
    while currentNode != nil {
        stack.append(currentNode!.value)
        currentNode = currentNode!.next
    }
    
    while let poppedValue = stack.popLast() {
        print(poppedValue)
    }
}

var list = LinkedList<Int>()
list.append(1)
list.append(2)
list.append(3)

print(list)

printInReverse(list)