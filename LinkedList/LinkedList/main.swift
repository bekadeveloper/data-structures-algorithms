//
//  main.swift
//  LinkedList
//
//  Created by Begzod on 25/06/21.
//

import Foundation

//example(of: "creating and linking nodes") {
//    let node1 = Node(1)
//    let node2 = Node(2)
//    let node3 = Node(3)
//
//    node1.next = node2
//    node2.next = node3
//    
//    print(node1)
//}

example(of: "pushing into linked list") {
    var linkedList = LinkedList<Int>()
    
    linkedList.push(5)
    linkedList.push(78)
    linkedList.push(91)
    
    print(linkedList)
}

example(of: "appending") {
    var list = LinkedList<Character>()
    
    list.append("X")
    list.append("Y")
    list.append("Z")
    
    print(list)
}

example(of: "inserting at a particular index") {
    var list = LinkedList<Float>()
    
    list.push(5.7)
    list.push(71.0)
    list.push(18.2)
    print("Before inserting: \(list)")
    
    list.insert(12.4, after: list.node(at: 0))
    print("After inserting: \(list)")
}

example(of: "pop operation") {
    var list = LinkedList<Character>()
    
    list.append("A")
    list.append("B")
    list.append("C")
    print("Before popping list: \(list)")
    
    let poppedValue = list.pop()
    print("After popping list: \(list)")
    print("Popped value: " + String(describing: poppedValue))
}

example(of: "removing the last node") {
    var list = LinkedList<Int>()
    
    list.push(9)
    list.push(45)
    list.push(12)
    print("Before removing last node: \(list)")
    
    let removedValue = list.removeLast()
    print("After removing last node: \(list)")
    print("Removed value: " + String(describing: removedValue))
}

example(of: "removing a node after a particular node") {
    var list = LinkedList<String>()
    
    list.append("Tim")
    list.append("Craig")
    list.append("Phill")
    list.append("Johny")
    print("Before remove(after:) operation: \(list)")
    
    let removedValue = list.remove(after: list.node(at: 1))
    print("After remove(after:) operation: \(list)")
    print("Removed value: " + String(describing: removedValue))
}

example(of: "using collection") {
    var list = LinkedList<Int>()
    
    for i in 1...10 {
        list.append(i)
    }
    
    print("List: \(list)")
    print("First element: \(list[list.startIndex])")
    print("Array of first 3 elements: \(Array(list.prefix(3)))")
    print("Array of last 3 elements: \(Array(list.suffix(3)))")
    
    let sum = list.reduce(0, +)
    print("Sum of all values: \(sum)")
}

example(of: "array COW") {
    let array1 = [1, 2]
    var array2 = array1
    
    print("array1: \(array1)")
    print("array2: \(array2)")

    array2.append(3)
     
    print("---After adding 3 to array2---")
    print("array1: \(array1)")
    print("array2: \(array2)")
}

example(of: "linked list COW") {
    var list1 = LinkedList<Int>()
    
    list1.append(1)
    list1.append(2)

    var list2 = list1
    
    print("list1: \(list1)")
    print("list2: \(list2)")

    list2.append(3)
    
    print("After appending 3 to list2")
    print("list1: \(list1)")
    print("list2: \(list2)")
}
