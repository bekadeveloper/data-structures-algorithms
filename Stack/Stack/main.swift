//
//  main.swift
//  Stack
//
//  Created by Begzod on 28/06/21.
//

import Foundation

example(of: "using a stack") {
    var stack = Stack<Int>()
    
    stack.push(1)
    stack.push(2)
    stack.push(3)
    stack.push(4)

    guard let poppedElement = stack.pop() else { return }
    
    print(stack)
    print("Popped element: \(poppedElement)")
}

example(of: "initializing a stack from an array") {
    let array = ["A", "B", "C", "D"]
    let stack = Stack(array)
    
    print(stack)
}

example(of: "initializing a stack from an array literal") {
    let stack: Stack = [1.0, 2.0, 3.0, 4.0]
    
    print(stack)
}
