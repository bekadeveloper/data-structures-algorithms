class Solution {
    func decode(_ encoded: [Int], _ first: Int) -> [Int] {
        var decoded:[Int] = [first]
        encoded.forEach { decoded.append($0 ^ decoded.last!) }
        return decoded
    }
}