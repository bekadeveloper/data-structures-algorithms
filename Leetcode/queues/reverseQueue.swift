extension QueueArray {
    func reversed() -> QueueArray {
        var queue = self
        var stack = Stack<T>()

        while let element = queue.dequeue() {
            stack.push(element)
        }

        while let element = stack.pop() {
            queue.enqueue(element)
        }

        return queue
    }
}
