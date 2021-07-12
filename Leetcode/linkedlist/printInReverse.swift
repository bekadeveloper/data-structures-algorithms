import Foundation

// 1 (brute-force)
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


// 2 (recursion)
// Time: O(n)
// Space: O(n)
func printInReverse<T>(_ node: Node<T>?) {
    guard let node = node else { return }
    printInReverse(node.next)
    print(node.value)
}

var list = LinkedList<Int>()
list.push(3)
list.push(2)
list.push(1)

print(list)
printInReverse(list.head)
