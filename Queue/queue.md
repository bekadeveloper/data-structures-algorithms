### Queue (aka FIFO)
[Array-based](Queue/Queue/QueueArray.swift) implementation:
|                     | Average case   | Worst case     |
| ------------------- | :------------: | :------------: |
| **`enqueue`**       | O(1)           | O(n)           |
| **`dequeue`**       | O(n)           | O(n)           |
| **Space Complexity**| O(n)           | O(n)           |

[Doubly Linked-List-based](Queue/Queue/QueueLinkedList.swift) implementation:
|                     | Average case   | Worst case     |
| ------------------- | :------------: | :------------: |
| **`enqueue`**       | O(1)           | O(1)           |
| **`dequeue`**       | O(1)           | O(1)           |
| **Space Complexity**| O(n)           | O(n)           |

[Ring Buffer-based](Queue/Queue/QueueRingBuffer.swift) implementation:
|                     | Average case   | Worst case     |
| ------------------- | :------------: | :------------: |
| **`enqueue`**       | O(1)           | O(1)           |
| **`dequeue`**       | O(1)           | O(1)           |
| **Space Complexity**| O(n)           | O(n)           |

[Double Stack-based](Queue/Queue/QueueStack.swift) implementation:
|                     | Average case   | Worst case     |
| ------------------- | :------------: | :------------: |
| **`enqueue`**       | O(1)           | O(n)           |
| **`dequeue`**       | O(1)           | O(n)           |
| **Space Complexity**| O(n)           | O(n)           |


#### QueueProtocol.swift
```swift
protocol Queue {
    associatedtype Element

    mutating func enqueue(_ element: Element) -> Bool
    mutating func dequeue() -> Element?

    var isEmpty: Bool { get }
    var peek: Element? { get }
}
```