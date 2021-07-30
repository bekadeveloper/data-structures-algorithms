class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var sum = 0
        var n = 0

        while n < arr.count {
            for i in arr.indices {
                if i+n < arr.count {
                    sum += arr[i...i+n].reduce(0, +)
                } else {
                    break 
                }
            }
            n += 2
        }
        return sum
    }
}

// using formula: 
// (i+1) * (n-i) / 2.0
// where i is an index, and n is the length of array
class Solution2 {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var sum = 0

        for (i, num) in arr.enumerated() {
            let contribution = Int(ceil(Double((i + 1) * (arr.count - i)) / 2.0))
            sum += contribution * num
        }
        return sum
    }
}