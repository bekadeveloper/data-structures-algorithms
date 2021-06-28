import Foundation 

// Diagonal Difference (Easy)
func diagonalDifference(arr: [[Int]]) -> UInt {
    var leftToRight: Int = 0
    var rightToLeft: Int = 0
    
    var i = 0
    var j = arr.count - 1
    while i < arr.count {
        leftToRight += arr[i][i]
        rightToLeft += arr[i][j]
        i += 1
        j -= 1
    }
    return (leftToRight - rightToLeft).magnitude
}

matrix = [
    [11, 2, 4],
    [4, 5, 6],
    [10, 8, -12]
]
diagonalDifference(arr: matrix) // returns 15
