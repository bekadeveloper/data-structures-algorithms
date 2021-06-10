import Foundation

// Reversing an array (Easy)
func reverseArray<T>(_ a: [T]) -> [T] {
    var reversed: [T] = []
    
    for element in a {
        reversed.insert(element, at: 0)
    }
    
    return reversed
}

reverseArray([1, 2, 3, 4]) // returns [4, 3, 2, 1]

// Sparse arrays (Medium)
func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    var result: [Int] = []
    
    for query in queries {
        var count: Int = 0
        
        for string in strings {
            if query == string {
                count += 1
            }
        }
        result.append(count)
    }
    return result
}

matchingStrings(strings: ["aba","baba","aba","xzxb"], queries: ["aba","xzxb","ab"]) // returns [2, 1, 0]

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
