//
//  Node.swift
//  LinkedList
//
//  Created by Begzod on 25/06/21.
//

import Foundation


class Node<Value> {
    let value: Value
    var next: Node?
    
    init(_ value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}


extension Node: CustomStringConvertible {
    
    var description: String {
        guard let next = next else {
            return "\(value)"
        }
        
        return "\(value) -> \(next.description)"
    }
}
