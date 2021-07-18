//
//  QueueRingBuffer.swift
//  Queue
//
//  Created by Beka on 18/07/21.
//

import Foundation

public struct RingBuffer<T> {
  
  private var array: [T?]
  private var readIndex = 0
  private var writeIndex = 0
  
  public init(count: Int) {
    array = Array<T?>(repeating: nil, count: count)
  }
  
  public var first: T? {
    array[readIndex]
  }
  
  public mutating func write(_ element: T) -> Bool {
    if !isFull {
      array[writeIndex % array.count] = element
      writeIndex += 1
      return true
    } else {
      return false
    }
  }
  
  public mutating func read() -> T? {
    if !isEmpty {
      let element = array[readIndex % array.count]
      readIndex += 1
      return element
    } else {
      return nil
    }
  }
  
  private var availableSpaceForReading: Int {
    writeIndex - readIndex
  }
  
  public var isEmpty: Bool {
    availableSpaceForReading == 0
  }
  
  private var availableSpaceForWriting: Int {
    array.count - availableSpaceForReading
  }
  
  public var isFull: Bool {
    availableSpaceForWriting == 0
  }
}

extension RingBuffer: CustomStringConvertible {
  public var description: String {
    let values = (0..<availableSpaceForReading).map {
      String(describing: array[($0 + readIndex) % array.count]!)
    }
    return "[" + values.joined(separator: ", ") + "]"
  }
}


struct QueueRingBuffer<T>: Queue {
    private var ringBuffer: RingBuffer<T>
    
    init (count: Int) {
        ringBuffer = RingBuffer<T>(count: count)
    }
    
    var isEmpty: Bool {
        return ringBuffer.isEmpty
    }
    
    var peek: T? {
        return ringBuffer.first
    }
    
    @discardableResult
    mutating func enqueue(_ element: T) -> Bool {
        return ringBuffer.write(element)
    }
    
    @discardableResult
    mutating func dequeue() -> T? {
        return ringBuffer.read()
    }
}

extension QueueRingBuffer: CustomStringConvertible {
    var description: String {
        String(describing: ringBuffer)
    }
}
