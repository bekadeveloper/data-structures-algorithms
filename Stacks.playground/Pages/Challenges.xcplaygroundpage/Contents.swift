import Foundation
//: ## Reverse an array
let array: [Int] = [1, 2, 3, 4, 5]

func printInReverse<T>(_ array: [T]) {
    let stack = Stack(array)
    print(stack)
}

printInReverse(array)
//: ## Balance the parentheses
let testString1 = "h((e))llo(world)()"

func checkParentheses(_ string: String) -> Bool {
    var stack = Stack<Character>()
    
    for char in string {
        if char == "(" {
            stack.push(char)
        } else if char == ")" {
            if !stack.isEmpty {
                stack.pop()
            } else { return false }
        }
    }
    return stack.isEmpty
}

print(checkParentheses(testString1))
