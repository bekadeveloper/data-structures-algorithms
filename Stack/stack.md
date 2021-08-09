### Stack (aka LIFO)
|                     |     `push`     |      `pop`      |      `peek`      |
| ------------------- | :------------: | :-------------: | :--------------: |
| **Behaviour**       | add to the end | remove the last | look at the last |
| **Time Complexity** |      O(1)      |      O(1)       |       O(1)       |


#### Stack.swift
```swift
struct Stack<Element> {
    private var storage: [Element] = []
    init() {}
    
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
}
```