import Foundation 

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