class OrderedStream {
    private var storage: [String]
    private var i = 0
    
    init(_ n: Int) {
        storage = Array(repeating: String(), count: n)
    }
    
    func insert(_ id: Int, _ value: String) -> [String] {
        storage[id-1] = value
        
        var result: [String] = []
        
        for str in storage[i...] {
            if str == "" { break }
            result.append(str)
            i += 1
        }
        
        return result
    }
}

/**
 * Your OrderedStream object will be instantiated and called as such:
 * let obj = OrderedStream(n)
 * let ret_1: [String] = obj.insert(id, value)
 */