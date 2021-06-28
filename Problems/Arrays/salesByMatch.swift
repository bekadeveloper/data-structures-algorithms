import Foundation

// Sales by Match (Easy)
func sockMerchant(n: Int, ar: [Int]) -> Int {
    var array = ar.sorted()
    var count = 0
    var i = 0
    
    while i < n-1 {
        if array[i] == array[i+1] {
            count += 1
            i += 2
        } else {
            i += 1
        }
    }
    
    return count
}

ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]
sockMerchant(n: 9, ar: ar) // returns 3
