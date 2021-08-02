// brute force, but beats 100% runtime and 92% memory usage
class Solution {
    func countGoodTriplets(_ arr: [Int], _ a: Int, _ b: Int, _ c: Int) -> Int {
        var count = 0
        
        for i in arr.indices {
            for j in i+1..<arr.count {
                if (arr[i] - arr[j]).magnitude <= a {
                    for k in j+1..<arr.count {
                        if (arr[j] - arr[k]).magnitude <= b {
                            if (arr[i] - arr[k]).magnitude <= c {
                                count += 1
                            }
                        }
                    }
                }
            }
        }
        return count
    }
}