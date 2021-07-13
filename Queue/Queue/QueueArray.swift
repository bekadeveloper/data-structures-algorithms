//
//  QueueArray.swift
//  Queue
//
//  Created by Beka on 13/07/21.
//

import Foundation


struct QueueArray<T>: Queue {
    
    private var storage: [T] = []
    
    init() { }
    
    @discardableResult
    mutating func enqueue(_ element: T) -> Bool {
        storage.append(element)
        return true
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        guard !isEmpty else { return nil }
        return storage.removeFirst()
    }
    
    var isEmpty: Bool {
        return storage.isEmpty
    }
    
    var peek: T? {
        return storage.first
    }
}

extension QueueArray: CustomStringConvertible {
    var description: String {
        return String(describing: storage)
    }
}
