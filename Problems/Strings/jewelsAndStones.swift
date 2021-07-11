import Foundation

class Solution {
    // Time: O(n^2)
    // Space: O(1)
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var number = 0
        
        for i in stones {
            if jewels.contains(i) {
                number += 1
            }
        }
        
        return number
    }
}