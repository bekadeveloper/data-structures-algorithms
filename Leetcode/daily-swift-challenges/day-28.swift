import Foundation

var names = [String]()

guard let N = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for _ in 1...N {
    guard let firstMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
    let firstMultipleInput = firstMultipleInputTemp.split(separator: " ").map{ String($0) }

    let firstName = firstMultipleInput[0]
    let emailID = firstMultipleInput[1]
    
    if emailID.contains("@gmail.com") {
        names.append(firstName)
    }
}

for name in names.sorted() {
    print(name)
}
