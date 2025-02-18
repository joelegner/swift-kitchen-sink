//
//  BinomialExample.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/5/25.
//
import Foundation

struct WeightedTreeExample: CodeExample {
    func run() {
        let tree: WeightedTree = WeightedTree()
        Node.rootValue = 24.0*60.0
        print(#fileID, #function)
        tree.root.addChild(Node("Child 1", weight: 2))
        tree.root.addChild(Node("Child 2", weight: 3))
        tree.root.children[0].addChild(Node("Grandchild 1", weight: 4))
        tree.root.children[0].addChild(Node("Grandchild 2", weight: 5))
        tree.root.children[1].addChild(Node("Grandchild 3", weight: 6))
        tree.root.children[1].addChild(Node("Grandchild 4", weight: 7))
        print(tree.root)
        print("Let's try getting the root node.")
        print("Root node: \(tree.root.children[0].rootNode.text)")
    }
}
