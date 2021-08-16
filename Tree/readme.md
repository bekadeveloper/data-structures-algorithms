### N-ary Tree

#### TreeNode.swift
```swift
class TreeNode<T> {
    var value: T
    var children: [TreeNode] = []
    
    init(_ element: T) {
        value = element
    }
    
    func add(_ node: TreeNode) {
        children.append(node)
    }
}
```

#### Depth-first traversal
```swift
extension TreeNode {
    func forEachDepthFirst(_ visit: (TreeNode) -> Void) {
        visit(self)
        children.forEach {
            $0.forEachDepthFirst(visit)
        }
    }
}
```

#### Level-order traversal
```swift
extension TreeNode {
    func forEachLevelOrder(_ visit: (TreeNode) -> Void) {
        // implementing queue using array is trivial
        var queue: [TreeNode] = [self]
        
        while let node = queue.popFirst() {
            visit(node)
            node.children.forEach {
                queue.append($0)
            }
        }
    }
}
```