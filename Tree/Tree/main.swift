//
//  main.swift
//  Tree
//
//  Created by Beka on 02/08/21.
//

import Foundation

example(of: "depth-first traversal") {
    let tree = makeBeveragesTree()
    tree.forEachDepthFirst { print($0) }
}

example(of: "level-order traversal") {
    let tree = makeBeveragesTree()
    tree.forEachLevelOrder { print($0) }
}
