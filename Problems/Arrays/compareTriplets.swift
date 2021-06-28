import Foundation

// Compare the Triplets (Easy)
func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var result: [Int] = [0, 0]
    
    for i in a.indices {
        if a[i] > b[i] {
            result[0] += 1
        } else if b[i] > a[i] {
            result[1] += 1
        }
    }

    return result
}

compareTriplets(a: [17, 28, 30], b: [99, 16, 8]) // returns [2, 1]