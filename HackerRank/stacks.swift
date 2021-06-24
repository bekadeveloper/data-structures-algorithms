//
//  Stacks.swift
//  
//
//  Created by Begzod on 07/06/21.
//

import Foundation

// Stack implementation

struct Stack<Element: Comparable> {
    private var storage: [Element] = []
    
    init() {}
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> Element? {
        return storage.popLast()
    }
    
    @discardableResult
    func max() -> Element? {
        return storage.max()
    }
    
    func peek() -> Element? {
        return storage.last
    }
    
    var isEmpty: Bool {
        return peek() == nil
    }
}

// Maximum Element (Easy)

func getMax(operations: [String]) -> [Int] {
    var stack = Stack<Int>()
    var maxNumbers = [Int]()
    
    for operation in operations {
        let array = operation.split(separator: " ")
        
        switch array[0] {
            case "1":
                stack.push(Int(array[1])!)
            case "2":
                stack.pop()
            case "3":
                maxNumbers.append(stack.max()!)
            default:
                break
        }
    }
    return maxNumbers
}

// Balanced Brackets (Medium)

// (need to rewrite solution)
func isBalanced(s: String) -> String {
    var stack = Stack<Character>()

    for char in s {
        switch char {
            case "(", "[", "{":
                stack.push(char)
            case ")":
                if !stack.isEmpty && stack.peek()! == "(" {
                    stack.pop()
                } else { return "NO" }
            case "]":
                if !stack.isEmpty && stack.peek()! == "[" {
                    stack.pop()
                } else { return "NO" }
            case "}":
                if !stack.isEmpty && stack.peek()! == "{" {
                    stack.pop()
                } else { return "NO" }
            default:
                return "NO"
        }
    }
    return stack.isEmpty ? "YES" : "NO"
}
