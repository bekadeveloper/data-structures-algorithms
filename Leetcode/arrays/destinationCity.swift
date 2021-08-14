// Brute-force
// Runtime: 64 ms
extension Array where Element == Array<String> {
    func helper(_ i: String) -> Bool {
        for k in self {
            if k[0] == i { return false }
        }
        return true
    }
}
class Solution {
    func destCity(_ paths: [[String]]) -> String {
        paths.forEach { 
            if paths.helper($0[1]) { return $0[1] }
        }
        return ""
    }
}

// Using hash-table
// Runtime: 40 ms
class Solution2 {
    func destCity(_ paths: [[String]]) -> String {
        var hash: [String:String] = [:], current = paths[0][0]
        paths.forEach { hash[$0[0]] = $0[1] }
        while let city = hash[current] {
            current = city
        }
        return current
    }
}