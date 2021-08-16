//
//  Helper.swift
//  Tree
//
//  Created by Beka on 02/08/21.
//

import Foundation
 

func example(of description: String, action: () -> ()) {
    print("Example of \(description)")
    action()
    print()
}


extension TreeNode: CustomStringConvertible {
    var description: String {
        return String(describing: value)
    }
}


func makeBeveragesTree() -> TreeNode<String> {
    let beveragesTree = TreeNode("Beverages")
    
    let hot = TreeNode("Hot")
    let cold = TreeNode("Cold")
    
    let tea = TreeNode("Tea")
    let coffee = TreeNode("Coffee")
    let cocoa = TreeNode("Cocoa")
    
    let soda = TreeNode("Soda")
    let milk = TreeNode("Milk")
    
    let blackTea = TreeNode("Black")
    let greenTea = TreeNode("Green")
    let chai = TreeNode("Chai")
    
    let gingerAle = TreeNode("Ginger Ale")
    let bitterLemon = TreeNode("Bitter Lemon")
    
    beveragesTree.add(hot)
    beveragesTree.add(cold)
    
    hot.add(tea)
    hot.add(coffee)
    hot.add(cocoa)
    
    cold.add(soda)
    cold.add(milk)
    
    tea.add(blackTea)
    tea.add(greenTea)
    tea.add(chai)
    
    soda.add(gingerAle)
    soda.add(bitterLemon)
    
    return beveragesTree
}


extension Array {
    mutating func popFirst() -> Element? {
        guard !self.isEmpty else { return nil }
        return removeFirst()
    }
}
