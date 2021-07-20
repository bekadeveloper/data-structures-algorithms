//
//  QueueStack.swift
//  Queue
//
//  Created by Beka on 20/07/21.
//

import Foundation

struct QueueStack<T>: Queue {
    
    private var leftStack: [T] = []
    private var rightStack: [T] = []
    
    init () {}
    
    var isEmpty: Bool {
        return leftStack.isEmpty && rightStack.isEmpty
    }
    
    var peek: T? {
        return !leftStack.isEmpty ? leftStack.last : rightStack.first
    }
    
    @discardableResult
    mutating func enqueue(_ element: T) -> Bool {
        rightStack.append(element)
        return true
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        if leftStack.isEmpty {
            leftStack = rightStack.reversed()
            rightStack.removeAll()
        }
        return leftStack.popLast()
    }
}

extension QueueStack: CustomStringConvertible {
    var description: String {
        String(describing: leftStack.reversed() + rightStack)
    }
}
