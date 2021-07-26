class Solution {
    func reverseWords(_ s: String) -> String {
        let arr = s.components(separatedBy: " ")
        var result = ""
        
        for i in arr {
            result += String(i.reversed()) + " "
        }
        result.popLast()
        return result
    }
}

class Solution2 {
    func reverseWords(_ s: String) -> String {
        s.split(separator: " ").map { String($0.reversed()) }.joined(separator: " ")
    }
}