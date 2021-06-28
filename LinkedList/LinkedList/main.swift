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
