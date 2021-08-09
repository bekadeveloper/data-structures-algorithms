### Linked List
Adding values:
|                     |     `push`     |    `append`     |  `insert(after:)`   |           `node(at:)`            |
| ------------------- | :------------: | :-------------: | :-----------------: | :------------------------------: |
| **Behaviour**       | insert at head | insert at tail  | insert after a node |  returns a node at given index   |
| **Time Complexity** |      O(1)      |      O(1)       |        O(1)         | O(i), where i is the given index |

Removing values:
|                     |     `pop`      |  `removeLast`   |        `remove(after:)`        |
| ------------------- | :------------: | :-------------: | :----------------------------: |
| **Behaviour**       | remove at head | remove at tail  | remove the immediate next node |
| **Time Complexity** |      O(1)      |      O(n)       |              O(1)              |


#### Node.swift
```swift
class Node<Value> {
    let value: Value
    var next: Node?
    
    init(_ value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}
```