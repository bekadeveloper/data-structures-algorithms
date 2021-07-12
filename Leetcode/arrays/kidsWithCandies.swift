class Solution {
    // Time: O(n)
    // Space: O(1)
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        return candies.map { $0+extraCandies >= candies.max()! }
    }
}