// First solution
extension String {
    subscript (position: Int) -> Character {
        return self[index(startIndex, offsetBy: position)]
    }
}

class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var result = ""
        
        for i in indices.indices {
            result.append(s[indices.firstIndex(of: i)!])
        }
        return result
    }
}

// Second solution
class Solution2 {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var result = Array(repeating: "", count: indices.count)

        for i in indices.indices {
            result[i] = Array(s)[indices.firstIndex(of: i)]
        }
        return result
    }
}