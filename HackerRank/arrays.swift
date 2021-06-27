import Foundation

// Reversing an array (Easy)
func reverseArray<T>(_ a: [T]) -> [T] {
    var reversed: [T] = []
    
    for element in a {
        reversed.insert(element, at: 0)
    }
    
    return reversed
}

reverseArray([1, 2, 3, 4]) // returns [4, 3, 2, 1]

// Sparse arrays (Medium)
func matchingStrings(strings: [String], queries: [String]) -> [Int] {
    var result: [Int] = []
    
    for query in queries {
        var count: Int = 0
        
        for string in strings {
            if query == string {
                count += 1
            }
        }
        result.append(count)
    }
    return result
}

matchingStrings(strings: ["aba","baba","aba","xzxb"], queries: ["aba","xzxb","ab"]) // returns [2, 1, 0]

// Sales by Match (Easy)
func sockMerchant(n: Int, ar: [Int]) -> Int {
    var array = ar.sorted()
    var count = 0
    var i = 0
    
    while i < n-1 {
        if array[i] == array[i+1] {
            count += 1
            i += 2
        } else {
            i += 1
        }
    }
    
    return count
}

ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]
sockMerchant(n: 9, ar: ar) // returns 3

// Compare the Triplets (Easy)
func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var result: [Int] = [0, 0]
    var i = 0
    
    while i < 3 {
        if a[i] > b[i] {
            result[0] += 1
        } else if b[i] > a[i] {
            result[1] += 1
        }
        i += 1
    }
    return result
}

compareTriplets(a: [17, 28, 30], b: [99, 16, 8]) // returns [2, 1]

// Diagonal Difference (Easy)
func diagonalDifference(arr: [[Int]]) -> UInt {
    var leftToRight: Int = 0
    var rightToLeft: Int = 0
    
    var i = 0
    var j = arr.count - 1
    while i < arr.count {
        leftToRight += arr[i][i]
        rightToLeft += arr[i][j]
        i += 1
        j -= 1
    }
    return (leftToRight - rightToLeft).magnitude
}

matrix = [
    [11, 2, 4],
    [4, 5, 6],
    [10, 8, -12]
]
diagonalDifference(arr: matrix) // returns 15

// Mini-Max Sum (Easy)
func miniMaxSum(arr: [Int]) -> Void {
    guard !arr.isEmpty else { return }

    var minSum: Int = 0
    var maxSum: Int = 0
    
    for number in arr.sorted()[0..<arr.sorted().endIndex-1] {
        minSum += number
    }
    for number in arr.sorted()[1..<arr.sorted().endIndex] {
        maxSum += number
    }
    print("\(minSum) \(maxSum)")
}

miniMaxSum(arr: [1, 2, 3, 4, 5]) // prints "10 14"

// Birthday Cake Candles (Easy)
extension Array where Element: Comparable {
    func count(_ item: Element) -> Int {
        var count = 0
        for element in self {
            if element == item {
                count += 1
            }
        }
        return count
    }
}

func birthdayCakeCandles(candles: [Int]) -> Int {
    return candles.count(candles.max()!)
}

// Grading Students (Easy)
func nextMultipleOfFive(_ number: Int) -> Int {
    if number % 5 == 0 {
        return number
    } else {
        return nextMultipleOfFive(number+1)
    }
}

func gradingStudents(grades: [Int]) -> [Int] {
    var result = [Int]()
    
    for grade in grades {
        if grade >= 38 && (grade - nextMultipleOfFive(grade)).magnitude < 3 {
            result.append(nextMultipleOfFive(grade))
        } else {
            result.append(grade)
        }
    }
    return result
}