import Foundation

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