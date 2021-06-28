//
//  Stack.swift
//  Stack
//
//  Created by Begzod on 28/06/21.
//

import Foundation

struct Stack<Element> {
    private var storage: [Element] = []
    
    init() {}
    
    init(_ elements: [Element]) {
        storage = elements
    }
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Element? {
        storage.popLast()
    }
    
    func peek() -> Element? {
        return storage.last
    }
    
    var isEmpty: Bool {
        return peek() == nil
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        """
        ----top----
        \(storage.reversed().map { "\($0)" }.joined(separator: "\n"))
        -----------
        """
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
