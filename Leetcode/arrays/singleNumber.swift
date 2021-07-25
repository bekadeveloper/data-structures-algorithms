// Using hash
// Time: O(n)
// Space: O(n)
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var hash: [Int: Int] = [:]

        for num in nums {
            hash[num] = (hash[num] ?? 0) + 1
        }
        
        for (key, value) in hash {
            if value == 1 {
                return key
            }
        }
        return Int()
    }
}

// Using Math
// Time: O(n)
// Space: O(n)
class Solution2 {
    func singleNumber(_ nums: [Int]) -> Int {
        return 2 * Set(nums).reduce(0, +) - nums.reduce(0, +)
    }
}

// Using bit manipulation
// Time: O(n)
// Space: O(1)
class Solution3 {
    func singleNumber(_ nums: [Int]) -> Int {
        return nums.reduce(0, ^)
    }
}


class BruteForceSolution {
    func singleNumber(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        var i = 0

        while i < nums.count {
            if i == nums.count - 1 {
                return sorted.last!
            } 

            if sorted[i] == sorted[i+1] {
                i += 2
            } else {
                return sorted[i]
            }
        }
        return Int()
    }
}