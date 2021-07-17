import Foundation

let actualDate = readLine()!.split(separator: " ").map{ Int($0)! }
let expectedDate = readLine()!.split(separator: " ").map{ Int($0)! }

var fine = 0

if actualDate[2] > expectedDate[2] {
    fine = 10000
} else if actualDate[2] == expectedDate[2] {
    if actualDate[1] > expectedDate[1] {
        fine = 500 * (actualDate[1] - expectedDate[1])
    } else if actualDate[1] == expectedDate[1] {
        if actualDate[0] > expectedDate[0] {
            fine = 15 * (actualDate[0] - expectedDate[0])
        }
    }
}

print(fine)
