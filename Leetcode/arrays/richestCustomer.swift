class Solution {
    // Space: O(1)
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        return accounts.map { $0.reduce(0, +) }.max()!
    }
}