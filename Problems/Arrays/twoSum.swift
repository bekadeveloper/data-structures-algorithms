import Foundation

class Solution {
    // 1
    // Time: O(n^2)
    // Space: O(1)
    func twoSum_1(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int]()
        
        for i in nums.indices {
            for j in nums.indices {
                if i != j && nums[i] + nums[j] == target {
                    result = [i, j]
                }
            }
        }
        
        return result
    }

    // 2
    // Time: O(n)
    // Space: O(n)
    func twoSum_2(_ nums: [Int], _ target: Int) -> [Int] {
        var hash = [Int: Int]()
        var result: [Int] = []
        
        for (i,j) in nums.enumerated() {
            if let index = hash[target - j] {
                result = [index, i]
            }
            
            hash[j] = i
        }
        
        return result
    }
}