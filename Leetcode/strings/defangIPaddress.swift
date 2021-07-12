
class Solution {
    // One-liner
    func defangIPaddr(_ address: String) -> String {
        address.replacingOccurrences(of: ".", with: "[.]")
    }
}
