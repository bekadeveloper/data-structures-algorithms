import Foundation


guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let arr = String(n, radix: 2).split(separator: "0")
var max = arr[0].count

for i in arr {
    if i.count > max {
        max = i.count
    }
}

print(max)
