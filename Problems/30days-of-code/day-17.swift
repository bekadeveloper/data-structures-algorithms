import Foundation

// Defining enum for throwing error
// throw RangeError.NotInRange... is used to throw the error
enum RangeError: Error {
    case NotInRange(String)
}


// Start of class Calculator
class Calculator {
    // Start of function power
    func power(n: Int, p: Int) throws -> Int {
        guard n >= 0, p >= 0 else {
            throw RangeError.NotInRange("n and p should be non-negative")
        }
        
        var result = 1
        for _ in 0..<p {
            result *= n
        }
        return result
    } // End of function power
} // End of class Calculator

let myCalculator = Calculator()