class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var count = 0
        
        for item in items {
            switch ruleKey {
                case "type":
                    if item[0] == ruleValue {
                        count += 1
                    }
                case "color":
                    if item[1] == ruleValue {
                        count += 1
                    }
                case "name":
                    if item[2] == ruleValue {
                        count += 1
                    }
                default:
                    continue
            }
        }
        return count
    }
}

class Solution2 {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        let ruleIndex = ruleKey == "type" ? 0 : (ruleKey == "color" ? 1 : 2)
        
        return items.filter { $0[ruleIndex] == ruleValue }.count
    }
}