// Time: O(n)
class Solution {
    func diagonalSum(_ matrix: [[Int]]) -> Int {
        var sum = 0
        var i = 0
        var k = matrix.count - 1

        for row in matrix {
            sum += i == k ? row[i] : row[i] + row[k]
            i += 1
            k -= 1
        }
        return sum
    }
}