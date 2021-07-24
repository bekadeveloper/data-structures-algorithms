class Solution {
    func maxProductDifference(_ nums: [Int]) -> Int {
        let arr = nums.sorted()
        return (arr[arr.count - 1] * arr[arr.count - 2]) - (arr[0] * arr[1])
}