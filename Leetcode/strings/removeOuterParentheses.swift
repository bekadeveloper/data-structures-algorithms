// Runtime: 20 ms
class Solution {
    func removeOuterParentheses(_ S: String) -> String {
        var arr: [String] = []
        var k = 0
        var temp = ""

        for i in S {
            k = i == "(" ? k + 1 : k - 1 
            temp.append(i)

            if k == 0 {
                arr.append(temp)
                temp = ""
            }
        }
        return arr.map { $0.dropFirst().dropLast() }.joined(separator: "")
    }
}

// Runtime: 16 ms
class Solution2 {
    func removeOuterParentheses(_ S: String) -> String {
        var str = ""
        var i = 0

        for s in S {
            if s == "(" {
                if i > 0 { str.append(s) }
                i += 1

            } else if s == ")" {
                i -= 1
                if i > 0 { str.append(s) }
            }
        }
        return str
    }
}