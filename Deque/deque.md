### Double-ended Queue (aka Deque)
|                     |  `enqueue(to:)`          |  `dequeue(from:)`             |
| ------------------- | :----------------------: | :---------------------------: |
| **Behaviour**       | add to the front or back | remove from the front or back |
| **Time Complexity** | O(1)                     | O(1)                          |


#### Deque.swift
```swift
struct Deque<T>: DoubleEndedQueue {
    private var storage = DoublyLinkedList<T>()
    init() {}
    
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
```