//
//  DoubleEndedQueueProtocol.swift
//  Deque
//
//  Created by Beka on 31/07/21.
//

import Foundation

protocol DoubleEndedQueue {
    
  associatedtype Element
  var isEmpty: Bool { get }
  func peek(from direction: Direction) -> Element?
  mutating func enqueue(_ element: Element, to direction: Direction) -> Bool
  mutating func dequeue(from direction: Direction) -> Element?
    
}
