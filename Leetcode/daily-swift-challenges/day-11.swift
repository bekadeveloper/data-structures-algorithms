import Foundation

    // 1 1 1 0 0 0
    // 0 1 0 0 0 0
    // 1 1 1 0 0 0
    // 0 0 2 4 4 0
    // 0 0 0 2 0 0
    // 0 0 1 2 4 0

func solution(arr: [[Int]]) {
    
    var maxSum = arr[0][0] + arr[0][1] + arr[0][2]
    maxSum += arr[1][1]
    maxSum += arr[2][0] + arr[2][1] + arr[2][2]

    for rowIndex in arr.indices {
        for colIndex in arr[rowIndex].indices {
            if rowIndex+2 < arr.count && colIndex+2 < arr[rowIndex].count {
                var sum = arr[rowIndex][colIndex] + arr[rowIndex][colIndex+1] + arr[rowIndex][colIndex+2]
                sum += arr[rowIndex+1][colIndex+1]
                sum += arr[rowIndex+2][colIndex] + arr[rowIndex+2][colIndex+1] + arr[rowIndex+2][colIndex+2]
                
                if sum > maxSum { maxSum = sum }
            }
        }
    }

    print(maxSum)
}

var arr = [[Int]]()

for _ in 1...6 {
    guard let arrRowTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

    let arrRow: [Int] = arrRowTemp.split(separator: " ").map {
        if let arrItem = Int($0) {
            return arrItem
        } else { fatalError("Bad input") }
    }

    guard arrRow.count == 6 else { fatalError("Bad input") }

    arr.append(arrRow)
}

guard arr.count == 6 else { fatalError("Bad input") }

solution(arr: arr)
