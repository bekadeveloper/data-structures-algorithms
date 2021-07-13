//
//  main.swift
//  Queue
//
//  Created by Beka on 13/07/21.
//

import Foundation

example(of: "array-based queue") {
    var queue = QueueArray<String>()
    
    queue.enqueue("Ray")
    queue.enqueue("Brian")
    queue.enqueue("Eric")

    print("Before dequeue: \(queue)")
    
    let removedElement = queue.dequeue()!
    
    print("After dequeue: \(queue)")
    print("Removed element: \(removedElement)")
    print("Peek: \(queue.peek!)")
}
