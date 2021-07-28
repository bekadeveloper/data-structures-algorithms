class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        var xPosition = 0
        var yPosition = 0 
        
        for move in moves {
            switch move {
                case "R":
                    xPosition += 1
                case "L":
                    xPosition -= 1
                case "U":
                    yPosition += 1
                case "D":
                    yPosition -= 1
                default:
                    return false
            }
        }
        return xPosition == 0 && yPosition == 0 ? true : false
    }
}