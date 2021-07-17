class Solution {
    let codes = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    let alphabet = (97...122).map { Character(UnicodeScalar($0)) }
    
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        let map = Dictionary(uniqueKeysWithValues: zip(alphabet, codes))
        var result: [String] = []
        
        words.forEach { word in
            var string = ""
            
            word.forEach { char in
                string.append(map[char]!)
            }
                       
            if !result.contains(string) {
                result.append(string)
            }
        }
        return result.count
    }
}