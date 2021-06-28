var i = 4
var d = 4.0
var s = "HackerRank "

import Foundation 

extension Double {
    func format(_ f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}

// Declare second integer, double, and String variables.
var myInt: Int
var myDouble: Double
var myString: String

// Read and save an integer, double, and String to your variables.
myInt = Int(readLine()!)!
myDouble = Double(readLine()!)!
myString = readLine()!

// Print the sum of both integer variables on a new line.
print(i + myInt)

// Print the sum of the double variables on a new line.
print((d + myDouble).format(".1"))

// Concatenate and print the String variables on a new line
// The 's' variable above should be printed first.
print(s + myString)
