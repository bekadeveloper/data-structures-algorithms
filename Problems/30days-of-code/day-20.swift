import Foundation


guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let aTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

var a: [Int] = aTemp.split(separator: " ").map {
    if let aItem = Int($0) {
        return aItem
    } else { fatalError("Bad input") }
}

guard a.count == n else { fatalError("Bad input") }


var totalSwaps = 0

for _ in 0..<n {
    var numberOfSwaps = 0

    for j in 0..<n-1 {
        if a[j] > a[j+1] {
            a.swapAt(j, j+1)
            numberOfSwaps += 1
        }
    }
    
    totalSwaps += numberOfSwaps
    
    if numberOfSwaps == 0 {
        break
    }
}

print("Array is sorted in \(totalSwaps) swaps.")
print("First Element: \(a.first!)")
print("Last Element: \(a.last!)")