class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var count = 0
        
        for i in nums.indices {
            for j in nums[i...].indices {
                if i < j && nums[i] == nums[j] {
                    count += 1
                }
            }
        }
        return count
    }
}