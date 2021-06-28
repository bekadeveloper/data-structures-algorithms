//
//  printInReverse.swift
//  
//
//  Created by Begzod on 28/06/21.
//

import Foundation

let array: [Int] = [1, 2, 3, 4, 5]

func printInReverse<T>(_ array: [T]) {
  var stack = Stack<T>()

  for value in array {
    stack.push(value)
  }

  while let value = stack.pop() {
    print(value)
  }
}

printInReverse(array)
