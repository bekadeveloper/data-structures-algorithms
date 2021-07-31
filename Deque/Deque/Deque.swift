//
//  Deque.swift
//  Deque
//
//  Created by Beka on 31/07/21.
//

import Foundation

struct Deque<T>: DoubleEndedQueue {
    private var storage = DoublyLinkedList<T>()
    init() {}
    
    var isEmpty: Bool {
        storage.isEmpty
    }
    
    @discardableResult
    func peek(from direction: Direction) -> T? {
        switch direction {
        case .back:
            return storage.last?.value
        case .front:
            return storage.first?.value
        }
    }
    
    @discardableResult
    mutating func enqueue(_ element: T, to direction: Direction) -> Bool {
        switch direction {
        case .front:
            storage.prepend(element)
        case .back:
            storage.append(element)
        }
        return true
    }
    
    @discardableResult
    mutating func dequeue(from direction: Direction) -> T? {
        guard !isEmpty else { return nil }
        switch direction {
        case .front:
            return storage.remove(storage.first!)
        case .back:
            return storage.remove(storage.last!)
        }
    }
}

extension Deque: CustomStringConvertible {
    var description: String {
        return String(describing: storage)
    }
}
