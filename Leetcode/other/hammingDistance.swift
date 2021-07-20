class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        String(x^y, radix: 2).filter { $0 == "1" }.count
    }
}