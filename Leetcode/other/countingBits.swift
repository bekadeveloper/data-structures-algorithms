class Solution {
    func countBits(_ n: Int) -> [Int] {
        var ans = Array(repeating: Int(), count: n+1)
        for i in ans.indices {
            ans[i] = String(i, radix: 2).filter { $0 == "1" }.count
        }
        return ans
    }
}

class Solution2 {
    func countBits(_ n: Int) -> [Int] {
        Array(0...n).map { String($0, radix: 2).filter {$0 == "1"}.count }
    }
}