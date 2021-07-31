class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var count = 0

        for word in words {
            for char in word {
                if !allowed.contains(char) {
                    count -= 1
                    break
                }
            }
            count += 1
        }
        return count
    }
}

class Solution2 {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var mySet = Set(allowed)
        return words.filter { Set($0).isSubset(of: mySet) }.count
    }
}