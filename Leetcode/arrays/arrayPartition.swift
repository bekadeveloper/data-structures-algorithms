class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        var result = Int()
        
        for i in stride(from: 0, to: sorted.count, by: 2) {
            result += min(sorted[i], sorted[i+1])
        }
        return result
    }
}