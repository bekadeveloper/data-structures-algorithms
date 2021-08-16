//
//  TreeNode.swift
//  Tree
//
//  Created by Beka on 02/08/21.
//

import Foundation

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

extension TreeNode {
    func forEachDepthFirst(_ visit: (TreeNode) -> Void) {
        visit(self)
        children.forEach {
            $0.forEachDepthFirst(visit)
        }
    }
}

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

extension TreeNode where T: Equatable {
    func search(_ value: T) -> TreeNode? {
        var result: TreeNode?
        
        forEachLevelOrder { node in
            if node.value == value {
                result = node
            }
        }
        return result
    }
}
