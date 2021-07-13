# Data Structures &amp; Algorithms in Swift
with LeetCode problems

**Note: Up to date for Xcode 11 &amp; Swift 5.1 and newer**

- [Stack](#stack-aka-lifo)
- [Linked List](#linkedlist)
- [Queue](#queue-aka-fifo)

<br>

### [Stack](Stack/Stack/Stack.swift) (aka LIFO)
|                     |     `push`     |      `pop`      |      `peek`      |
| ------------------- | :------------: | :-------------: | :--------------: |
| **Behaviour**       | add to the end | remove the last | look at the last |
| **Time Complexity** |      O(1)      |      O(1)       |       O(1)       |


### [LinkedList](LinkedList/LinkedList/LinkedList.swift)
Adding values:
|                     |     `push`     |    `append`    |  `insert(after:)`   |           `node(at:)`            |
| ------------------- | :------------: | :------------: | :-----------------: | :------------------------------: |
| **Behaviour**       | insert at head | insert at tail | insert after a node |  returns a node at given index   |
| **Time Complexity** |      O(1)      |      O(1)      |        O(1)         | O(i), where i is the given index |

Removing values:
|                     |     `pop`      |  `removeLast`  |        `remove(after:)`        |
| ------------------- | :------------: | :------------: | :----------------------------: |
| **Behaviour**       | remove at head | remove at tail | remove the immediate next node |
| **Time Complexity** |      O(1)      |      O(n)      |              O(1)              |


### [Queue](Queue/Queue/QueueProtocol.swift) (aka FIFO)
[Array-based](Queue/Queue/QueueArray.swift) implementation:
|                     |    `enqueue`             |  `dequeue`                     |        `peek`                       |
| ------------------- | :------------:           |  :------------:                | :----------------------------:      |
| **Behaviour**       | add to the back of queue | remove from the front of queue | return the first element from queue |
| **Time Complexity** |      O(1)                |      O(n)                      |              O(1)                   |

<br/><br/>

Feel free to contribute! <br/>
This repo is yours ❤️
