class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var nums = nums, result = 0

        for i in 0..<nums.count-1 where nums[i] >= nums[i+1] {
            let amount = nums[i] - nums[i+1] + 1
            nums[i+1] += amount
            result += amount
        }

        return result
    }
}