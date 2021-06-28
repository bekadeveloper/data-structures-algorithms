//
//  LinkedList.swift
//  LinkedList
//
//  Created by Begzod on 25/06/21.
//

import Foundation

struct LinkedList<Value> {
    
    var head: Node<Value>?
    var tail: Node<Value>?
    
    init() {}
    
    var isEmpty: Bool {
        return head == nil
    }
    
    mutating func push(_ value: Value) {
        head = Node(value, next: head)
        
        if tail == nil {
            tail = head
        }
    }
    
    mutating func append(_ value: Value) {
        guard !isEmpty else {
            push(value)
            return
        }
        
        tail!.next = Node(value)
        tail = tail!.next
    }
    
    func node(at index: Int) -> Node<Value>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    mutating func insert(_ value: Value, after node: Node<Value>?) {
        guard node !== tail else {
            append(value)
            return
        }
        
        let newNode = Node(value, next: node!.next)
        node!.next = newNode
    }
}

extension LinkedList: CustomStringConvertible {
    
    var description: String {
        guard let head = head else {
            return "Empty list"
        }
        
        return String(describing: head)
    }
}
