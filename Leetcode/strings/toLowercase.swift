class Solution {
    // Time: O(n)
    // Space: O(n)
    func toLowerCase(_ s: String) -> String {
        var result = ""
        
        for i in s {
            if let ascii = i.asciiValue, ascii >= 65, ascii <= 90 {
                result.append(Character(UnicodeScalar(ascii + 32)))
            } else {
                result.append(i)
            }
        }
        return result
    }

    // using built-in method
    func toLowerCase2(_ s: String) -> String {
        s.lowercased()
    }
}