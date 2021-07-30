class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        var teams = n
        var matches = 0
        
        while teams > 1 {
            if teams % 2 == 0 {
                teams /= 2
                matches += teams
            } else {
                teams += 1
                teams /= 2
                matches += teams - 1
            }
        }
        return matches
    }
}

// What?! :D
class Solution2 {
    func numberOfMatches(_ n: Int) -> Int {
        return n - 1
    }
}