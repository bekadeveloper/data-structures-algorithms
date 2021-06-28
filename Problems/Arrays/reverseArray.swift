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
