class Solution {
    func freqAlphabets(_ s: String) -> String {
        let hash = ["1":"a", "2":"b", "3":"c", "4":"d", "5":"e", "6":"f", "7":"g", "8":"h", "9":"i", 
                    "10#":"j", "11#":"k", "12#":"l", "13#":"m", "14#":"n", "15#":"o", "16#":"p", "17#":"q", 
                    "18#":"r", "19#":"s", "20#":"t", "21#":"u", "22#":"v", "23#":"w", "24#":"x", "25#":"y", "26#":"z"]
        var arr = s.map { String($0) }
        var result: String = ""

        while var key = arr.popLast() {
            if key == "#" {
                key = arr.suffix(2).joined() + key
                arr.popLast()
                arr.popLast()
            }
            result.append(hash[key]!)
        }
        
        return String(result.reversed())
    }
}