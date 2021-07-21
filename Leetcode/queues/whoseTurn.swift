protocol BoardGameManager {
    associatedtype Player
    mutating func nextPlayer() -> Player?
}

extension QueueArray: BoardGameManager {
    typealias Player = T

    mutating func nextPlayer() -> T? {
        guard let player = dequeue() else { return nil }

        print("Next player is \(player)")
        enqueue(player)

        return player
    }
}