class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var result = String(num).map { String($0) }
        
        if let i = result.firstIndex(where: { $0 == "6" }) {
            result[i] = "9"
        }
        return Int(result.joined())!
    }
}