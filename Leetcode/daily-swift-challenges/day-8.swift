import Foundation


let n = Int(readLine()!)!

var phoneBook = [String:Int]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let name = input[0]
    let number = Int(input[1])!
    
    phoneBook[name] = number
}

var query = readLine()

while query != nil {
    if phoneBook.keys.contains(query!) {
        print("\(query!)=\(phoneBook[query!]!)")
    } else {
        print("Not found")
    }
    
    query = readLine()
}
