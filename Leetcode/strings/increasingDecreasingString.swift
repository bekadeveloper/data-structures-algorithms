extension String {
    func countFrequency(of char: Character) -> Int {
        var c = 0
        
        self.forEach {
            if $0 == char { c += 1 }
        }
        return c
    }
}

// Brute-force solution
class Solution {
    func sortString(_ s: String) -> String {
        func helper(_ i: Int) {
            let char = Character(UnicodeScalar(i)!)
            
            if s.contains(char) && hash[char]! > 0 {
                result.append(char)
                hash[char]! -= 1
            }
        }
        
        var hash: [Character:Int] = [:]
        var result = ""
        
        s.forEach { char in
            hash[char] = s.countFrequency(of: char)
        }
        
        while hash.values.max()! > 0 {
            for i in 97..<123 {
                helper(i)
            }
            
            var i = 122 
            while i >= 97 {
                helper(i)
                i -= 1
            }  
        }
        
        return result
    }
}