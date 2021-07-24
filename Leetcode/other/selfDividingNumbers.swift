// Runtime: 48 ms
class Solution1 {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var result: [Int] = []
        var temp = false
        for number in left...right {
            if !String(number).contains("0") {
                for d in String(number) {
                    if number % d.wholeNumberValue! != 0 {
                        temp = false
                        break
                    } else { temp = true }
                }
                if temp { result.append(number) }
            }
        }
        return result
    }
}

// Runtime: 16 ms
extension Int {
    func isSelfDividing() -> Bool {
        for d in String(self) {
            if d == "0" || self % d.wholeNumberValue! != 0 {
                return false
            }
        }
        return true
    }
}

class Solution2 {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var result: [Int] = [] 
        for number in left...right {
            if number.isSelfDividing() {
                result.append(number)
            }
        }
        return result
    }
}