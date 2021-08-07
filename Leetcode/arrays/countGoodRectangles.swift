// Runtime: 286 ms
class Solution {
    func countGoodRectangles(_ rectangles: [[Int]]) -> Int {
        let sideLengths = rectangles.map { $0.min()! }
        let maxLen = sideLengths.max()!
        return sideLengths.filter { $0 == maxLen }.count
    }
}

// Runtime: 228 ms
class Solution2 {
    func countGoodRectangles(_ rectangles: [[Int]]) -> Int {
        var maxLen = 0, result = 0

        for rectangle in rectangles {
            let smallSide = rectangle.min()!
            
            if smallSide > maxLen {
                maxLen = smallSide
                result = 1
            } else if smallSide == maxLen {
                result += 1
            }
        }
        return result
    }
}