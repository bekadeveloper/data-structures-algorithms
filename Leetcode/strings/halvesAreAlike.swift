// Runtime: 52 ms
extension Character {
    func isVowel() -> Bool {
        let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        return vowels.contains(self)
    }
}

class Solution1 {
    func halvesAreAlike(_ s: String) -> Bool {
        let arr = Array(s), mid = s.count / 2
        return arr[..<mid].filter { $0.isVowel() }.count == arr[mid...].filter { $0.isVowel() }.count
    }
}

// Runtime: 24 ms
class Solution3 {
    func halvesAreAlike(_ s: String) -> Bool {
        let arr = Array(s.lowercased()), c = arr.count / 2, vowels = [Character](["a", "e", "i", "o", "u"])
        var a = 0, b = 0
        for i in 0..<c {
            a += vowels.contains(arr[i]) ? 1 : 0
            b += vowels.contains(arr[i + c]) ? 1 : 0
        }
        return a == b
    }
}