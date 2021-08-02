class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        s.components(separatedBy: " ").prefix(k).joined(separator: " ")
    }
}