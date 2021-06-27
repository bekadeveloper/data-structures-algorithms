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

example(of: "adding values to the list") {
    
    var linkedList = LinkedList<Character>()
    
    linkedList.push("C")
    linkedList.push("B")
    linkedList.push("A")
    
    print(linkedList)
}
