import Foundation

/*
Stack Definition

    struct Stack<Element: Comparable> {
        private var storage: [Element] = []
    
        init() {}
        ...
    }
*/

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
