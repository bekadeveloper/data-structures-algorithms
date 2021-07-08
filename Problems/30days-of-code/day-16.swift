import Foundation

/*
 * Define an ErrorType
 */
enum StringToIntTypecastingError: Error {
    case BadString
}

func stringToInt(_ inputString: String) throws -> Int {
    guard let number = Int(inputString) else {
        throw StringToIntTypecastingError.BadString
    }
    
    return number
}

/*
 * Read the input
 */
let inputString = readLine()!

do {
    try print(stringToInt(inputString))
} catch StringToIntTypecastingError.BadString {
    print("Bad String")
}
