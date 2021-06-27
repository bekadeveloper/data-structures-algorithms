import Foundation

//example(of: "creating and linking nodes") {
//
//    let node1 = Node(value: 1)
//    let node2 = Node(value: 2)
//    let node3 = Node(value: 3)
//
//    node1.next = node2
//    node2.next = node3
//
//    print(node1)
//}

example(of: "pushing") {
    var linkedList = LinkedList<Character>()
    
    linkedList.push("C")
    linkedList.push("B")
    linkedList.push("A")
    
    print(linkedList)
}

example(of: "appending") {
    var linkedList = LinkedList<Int>()
    
    linkedList.append(1)
    linkedList.append(2)
    linkedList.append(3)
    
    print(linkedList)
}
