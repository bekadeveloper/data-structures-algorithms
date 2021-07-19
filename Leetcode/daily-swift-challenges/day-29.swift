import Foundation


func bitwiseAnd(N: Int, K: Int) -> Int {
    var max = 0;

    for j in 1 ..< N - 1 {
        for k in j + 1 ..< N {
            let h = j & k
            if (h < K && max < h) {
                max = h
            }
        }
    }

    return max
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let t = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for tItr in 1...t {
    guard let firstMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
    let firstMultipleInput = firstMultipleInputTemp.split(separator: " ").map{ String($0) }

    guard let count = Int(firstMultipleInput[0])
    else { fatalError("Bad input") }

    guard let lim = Int(firstMultipleInput[1])
    else { fatalError("Bad input") }

    let res = bitwiseAnd(N: count, K: lim)

    fileHandle.write(String(res).data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
}
