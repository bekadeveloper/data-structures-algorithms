import Foundation

class Solution {
    // Time: O(n)
    // Space: O(n)
    func buildArray(_ nums: [Int]) -> [Int] {
        var array: [Int] = []

        for i in nums {
            array.append(nums[i])
        }

        return array
    }

    // Time: O(n)
    // Space: O(1)
    func buildAnotherArray(_ nums: [Int]) -> [Int] {
        return nums.map { nums[$0] }
    }
}