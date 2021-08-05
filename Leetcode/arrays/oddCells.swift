// Brute-force
// runtime: 12 ms
class Solution {
    func oddCells(_ m: Int, _ n: Int, _ indices: [[Int]]) -> Int {
        var matrix: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
        var countOdds = 0

        for i in indices {
            for k in matrix[i[0]].indices {
                matrix[i[0]][k] += 1
            }
            for k in matrix.indices {
                matrix[k][i[1]] += 1
            }
        }
        
        for i in matrix {
            for j in i {
                if j % 2 != 0 {
                    countOdds += 1
                }
            }
        }
        return countOdds
    }
}