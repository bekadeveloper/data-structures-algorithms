class Solution {
    func repeatedNTimes(_ nums: [Int]) -> Int {
        var hash: [Int: Int] = [:]
        
        for i in nums {
            if let num = hash[i] {
                return num
            }
            hash[i] = i
        }
        return Int()
    }
}