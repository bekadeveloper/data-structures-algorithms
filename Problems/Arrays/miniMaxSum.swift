import Foundation

// Mini-Max Sum (Easy)
func miniMaxSum(arr: [Int]) -> Void {
    guard !arr.isEmpty else { return }

    let minSum: Int = arr.sorted()[0..<arr.endIndex-1].reduce(0, +)
    let maxSum: Int = arr.sorted()[1..<arr.endIndex].reduce(0, +)    

    print("\(minSum) \(maxSum)")
}

miniMaxSum(arr: [1, 2, 3, 4, 5]) // prints "10 14"
