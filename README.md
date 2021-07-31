# Data Structures &amp; Algorithms in Swift
with LeetCode problems

**Note: Up to date for Xcode 11 &amp; Swift 5.1 and newer**

- [Stack](#stack-aka-lifo)
- [Linked List](#linked-list)
- [Queue](#queue-aka-fifo)
- [Deque](#double-ended-queue-aka-deque)    


### [Stack](Stack/Stack/Stack.swift) (aka LIFO)
|                     |     `push`     |      `pop`      |      `peek`      |
| ------------------- | :------------: | :-------------: | :--------------: |
| **Behaviour**       | add to the end | remove the last | look at the last |
| **Time Complexity** |      O(1)      |      O(1)       |       O(1)       |


### [Linked List](LinkedList/LinkedList/LinkedList.swift)
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


### [Queue](Queue/Queue/QueueProtocol.swift) (aka FIFO)
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


### [Double-ended Queue](Deque/Deque/Deque.swift) (aka Deque)
[Doubly linked-list based](Deque/Deque/Deque.swift) implementation:
|                     |  `enqueue(to:)`          |  `dequeue(from:)`             |
| ------------------- | :----------------------: | :---------------------------: |
| **Behaviour**       | add to the front or back | remove from the front or back |
| **Time Complexity** | O(1)                     | O(1)                          |

<br>

**Useful links:**
- [LeetCode spreadsheet](https://docs.google.com/spreadsheets/d/1je6J87BX5C5fo5Gbok1TJncVK3-UFkiDznHUzhtHbVU/edit?usp=sharing) sorted by score.
- [Data Structures and Algorithms](https://www.raywenderlich.com/books/data-structures-algorithms-in-swift) book by raywenderlich team.
- [Swift Algorithm Club](https://github.com/raywenderlich/swift-algorithm-club) repository.

<br>

Feel free to contribute! <br>
This repo is yours ❤️
