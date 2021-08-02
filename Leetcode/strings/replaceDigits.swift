func +(lhs: UInt8, rhs: Int) -> UInt8 {
    return lhs + UInt8(rhs)
}

class Solution {
    func replaceDigits(_ s: String) -> String {
        var arr = Array(s)
        
        for i in stride(from: 1, to: arr.count, by: 2) {
            arr[i] = Character(UnicodeScalar(arr[i-1].asciiValue! + arr[i].wholeNumberValue!))
        }
        return String(arr)
    }
}