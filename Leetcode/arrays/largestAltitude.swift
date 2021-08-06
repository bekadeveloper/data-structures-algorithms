class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var alts = [0]
        for i in gain {
            alts.append(alts.last! + i)
        }
        return alts.max()!
    }
}