// brute-force
// Runtime: 64 ms
class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var arr: [Int] = []
        
        nums.forEach { i in
            if i % 2 == 0 {
                arr.insert(i, at: 0)
            } else {
                arr.append(i)
            }
        }
        return arr
    }
}

// Runtime: 60 ms
class Solution2 {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        nums.filter { $0 % 2 == 0 } + nums.filter { $0 % 2 != 0 }
    }
}