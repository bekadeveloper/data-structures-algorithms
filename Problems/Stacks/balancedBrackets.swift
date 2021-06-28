import Foundation

/*
Stack Definition

    struct Stack<Element: Comparable> {
        private var storage: [Element] = []
    
        init() {}
        ...
    }
*/

// Balanced Brackets (Medium) (need to rewrite solution)

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