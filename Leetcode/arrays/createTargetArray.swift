class Solution {
    func createTargetArray(_ nums: [Int], _ indices: [Int]) -> [Int] {
        var target: [Int] = []
        
        for (num, index) in zip(nums, indices) {
            target.insert(num, at: index)
        }
        
        return target
    }
}