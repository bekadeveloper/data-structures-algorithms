class Solution {
    func findCenter(_ edges: [[Int]]) -> Int {
        return edges[1][0] == edges[0][0] || edges[1][1] == edges[0][0] ? edges[0][0] : edges[0][1]
    }
}