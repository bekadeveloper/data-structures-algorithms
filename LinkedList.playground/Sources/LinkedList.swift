import Foundation

public struct LinkedList<Value> {
    
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        head == nil
    }
    
    public mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        
        if tail == nil {
            tail = head
        }
    }
    
    public mutating func append(_ value: Value) {

        guard !isEmpty else {
            push(value)
            return
        }
        
        tail!.next = Node(value: value)
        tail = tail!.next
    }
    
    public func node(at index: Int) -> Node<Value>? {
        var currentNode = head
        var currentIndex = 0
        
        while currentNode!.next != nil && currentIndex < index {
            currentNode = currentNode!.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    @discardableResult
    public mutating func insert(_ value: Value, after node: Node<Value>?) -> Node<Value>? {
        
        guard node !== tail else {
            append(value)
            return tail
        }
        
        let newNode = Node(value: value, next: node!.next)
        node!.next = newNode
        
        return newNode
    }
}

extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        guard let head = head else { return "Empty list" }
        
        return String(describing: head)
    }
}
