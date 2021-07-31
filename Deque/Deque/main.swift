//
//  main.swift
//  Deque
//
//  Created by Beka on 31/07/21.
//

import Foundation


var deque = Deque<Int>()
deque.enqueue(1, to: .front)
deque.enqueue(24, to: .back)
deque.enqueue(7, to: .front)
deque.enqueue(43, to: .front)
print(deque)
deque.dequeue(from: .back)
print(deque)
