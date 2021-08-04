class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var mySet: Set<Int> = []

        for i in nums1 {
            if nums2.contains(i) {
                mySet.insert(i)
            }
        }
        return Array(mySet)
    }
}

class Solution2 {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        Array(Set(nums1.filter { nums2.contains($0) }))
    }
}
