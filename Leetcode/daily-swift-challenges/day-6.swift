import Foundation
import Darwin

let numStrings = Int(readLine()!)!

func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
	
    // Print the even-indexed characters
    // Write your code here
        
    for index in Array(string).indices {
        if index % 2 == 0 {
            print(Array(string)[index], terminator: "")
        }
    }
    
    // Print a space
    print(" ", terminator: "")
	
    // Print the odd-indexed characters
    // Write your code here
    
    for index in Array(string).indices {
        if index % 2 != 0 {
            print(Array(string)[index], terminator: "")
        }
    }
    
    // Print a newline
    print()
}

for _ in 1...numStrings {
    let inputString = readLine()!
    printEvenAndOdd(string: inputString)
}
