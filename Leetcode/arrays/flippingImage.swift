class Solution {
    func flipAndInvertImage(_ image: [[Int]]) -> [[Int]] {
        return image.map { $0.map { $0 == 0 ? 1 : 0 }.reversed() }
    }
}