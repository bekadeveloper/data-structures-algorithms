// using ascii
class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        for i in Character("a").asciiValue!...Character("z").asciiValue! {
            if !sentence.contains(Character(UnicodeScalar(i))) {
                return false
            }
        }
        return true
    }
}

// using set :D
class Solution2 {
    func checkIfPangram(_ sentence: String) -> Bool {
        Set(sentence).count == 26
    }
}