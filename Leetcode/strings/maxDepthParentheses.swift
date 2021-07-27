// Runtime: 0 ms
class Solution {
    func maxDepth(_ s: String) -> Int {
        var stack: [Character] = []
        var maxDepth = 0
        
        for i in s {
            if i == "(" {
                stack.append(i)
            } else if i == ")" {
                if stack.count > maxDepth {
                    maxDepth = stack.count
                }
                stack.popLast()
            }
        }
        return maxDepth
    }
}

// Runtime: 4 ms
class Solution2 {
    func maxDepth(_ s: String) -> Int {
        var depth = 0
        var maxDepth = 0
        
        for i in s {
            switch i {
                case "(":
                    depth += 1
                case ")":
                    if depth > maxDepth {
                        maxDepth = depth
                    }
                    depth -= 1
                default:
                    continue
            }
        }
        return maxDepth
    }
}