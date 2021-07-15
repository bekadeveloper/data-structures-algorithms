// First solution
class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        var product = 1
        var sum = 0
        
        for i in String(n).compactMap { $0.wholeNumberValue } {
            product *= i
            sum += i
        }
        return product-sum
    }
}

// Second solution
class Solution2 {
    func subtractProductAndSum(_ number: Int) -> Int {
        let intArray = String(number).compactMap { $0.wholeNumberValue }
        return intArray.reduce(1, *) - intArray.reduce(0, +)
    }
}