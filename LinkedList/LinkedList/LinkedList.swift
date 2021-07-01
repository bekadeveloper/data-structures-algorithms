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
    
    @discardableResult
    mutating func pop() -> Value? {
        defer {
            head = head?.next
            
            if isEmpty {
                tail = nil
            }
        }
        return head?.value
    }
    
    @discardableResult
    mutating func removeLast() -> Value? {
        
        guard let head = head else {
            return nil
        }
        
        guard head.next != nil else {
            return pop()
        }
        
        var previous = head
        var current = head
        
        while let next = current.next {
            previous = current
            current = next
        }
        
        previous.next = nil
        tail = previous
        
        return current.value
    }
    
    @discardableResult
    mutating func remove(after node: Node<Value>?) -> Value? {
        defer {
            if node?.next === tail {
                tail = node
            }
            
            node?.next = node?.next?.next
        }
        return node?.next?.value
    }
}

extension LinkedList: Collection {
    
    struct Index: Comparable {
        var node: Node<Value>?

        static func ==(lhs: Index, rhs: Index) -> Bool {
            switch (lhs.node, rhs.node) {
                case let (left?, right?):
                    return left.next === right.next
                case (nil, nil):
                    return true
                default:
                    return false
            }
        }
        
        static func <(lhs: Index, rhs: Index) -> Bool {
            guard lhs != rhs else {
                return false
            }
            
            let nodes = sequence(first: lhs.node) { $0?.next }
            return nodes.contains { $0 === rhs.node }
        }
    }
    
    var startIndex: Index {
        return Index(node: head)
    }
    
    var endIndex: Index {
        return Index(node: tail?.next)
    }
    
    func index(after i: Index) -> Index {
        return Index(node: i.node?.next)
    }
    
    subscript(position: Index) -> Value {
        return position.node!.value
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
