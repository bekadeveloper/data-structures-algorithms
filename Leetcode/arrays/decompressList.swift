class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var list: [Int] = []
        
        for index in stride(from: 0, to: nums.count, by: 2) {
            list += Array(repeating: nums[index+1], count: nums[index])
        }
        
        return list
    }
}