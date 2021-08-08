class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        nums.filter { String($0).count % 2 == 0 }.count
    }
}