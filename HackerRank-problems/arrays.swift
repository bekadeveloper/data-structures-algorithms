import Foundation

// Reversing an array
func reverseArray<T>(_ a: [T]) -> [T] {
    var reversed: [T] = []
    
    for element in a {
        reversed.insert(element, at: 0)
    }
    
    return reversed
}

reverseArray([1, 2, 3, 4]) // returns [4, 3, 2, 1]

// Sparse arrays
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