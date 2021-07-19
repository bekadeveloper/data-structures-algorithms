class Solution {
    func balancedStringSplit(_ string: String) -> Int {
        var count = 0, k = 0
        
        string.forEach {
            k = $0 == "R" ? k - 1 : k + 1
            
            if k == 0 { count += 1 }
        }
        return count
    }
}