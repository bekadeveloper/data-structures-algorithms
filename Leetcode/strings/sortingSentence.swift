// Brute-force
// 4 ms
class Solution {
    func sortSentence(_ s: String) -> String {
        var arr = s.split(separator: " ")
        var result = ""
        
        for index in 1...arr.count {
            for word in arr {
                if word.last! == Character("\(index)") {
                    result.append(index == arr.count ? String(word.dropLast()) : "\(word.dropLast()) ")
                }
            }
        }
        return result
    }
}

// One-liner
// using sorted()
// 0 ms
class Solution2 {
    func sortSentence(_ s: String) -> String {
        s.split(separator: " ").sorted { $0.last! < $1.last! }.map { $0.dropLast() }.joined(separator: " ")
    }
}