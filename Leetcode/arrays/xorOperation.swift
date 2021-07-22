// Time: O(n)
// Space: O(n)
class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var arr = Array(repeating: Int(), count: n)
        for i in arr.indices {
            arr[i] = start + 2 * i
        }
        
        var result = arr[0]
        for i in 1..<n {
            result ^= arr[i]
        }
        return result
    } 
}

// Time: O(n)
// Space: O(n)
class Solution2 {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var arr = Array(repeating: Int(), count: n)
        for i in arr.indices {
            arr[i] = start + 2 * i
        }
        return arr.reduce(0, ^)
    }
}

// Time: O(n)
// Space: O(1)
class Solution3 {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var result = start
        for i in 1..<n {
            result ^= start + 2 * i
        }
        return result
    }
}
