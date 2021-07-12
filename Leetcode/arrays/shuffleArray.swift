class Solution {
    // Time: O(n)
    // Space: O(n)
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result: [Int] = []
        
        for i in 0..<n {
            result.append(nums[i])
            result.append(nums[i+n])
        }
        return result
    }

    // One-liner
    func shuffle2(_ nums: [Int], _ n: Int) -> [Int] {
        zip(nums, nums.dropFirst(n)).flatMap { [$0, $1] }
    }
}