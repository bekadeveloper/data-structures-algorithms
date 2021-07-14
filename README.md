# Data Structures &amp; Algorithms in Swift
with LeetCode problems

**Note: Up to date for Xcode 11 &amp; Swift 5.1 and newer**

- [Data Structures &amp; Algorithms in Swift](#data-structures--algorithms-in-swift)
    - [Stack (aka LIFO)](#stack-aka-lifo)
    - [Linked List](#linked-list)
    - [Queue (aka FIFO)](#queue-aka-fifo)

<br>

### [Stack](Stack/Stack/Stack.swift) (aka LIFO)
|                     |     `push`     |      `pop`      |      `peek`      |
| ------------------- | :------------: | :-------------: | :--------------: |
| **Behaviour**       | add to the end | remove the last | look at the last |
| **Time Complexity** |      O(1)      |      O(1)       |       O(1)       |

<br>

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

<br>

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

<br><br>

Feel free to contribute! <br>
This repo is yours ❤️