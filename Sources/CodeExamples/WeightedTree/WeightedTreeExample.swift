//
//  BinomialExample.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/5/25.
//
import Foundation

struct WeightedTreeExample: CodeExample {
    func run() {
        let tree: WeightedTree = WeightedTree("Live life", value: 24*60)
        print(#fileID, #function)
        _ = tree.root.addChild(Node("Be awake", weight: 2))
        _ = tree.root.addChild(Node("Sleep", weight: 1))
        _ = tree.root.children[0].addChild(Node("Grandchild 1", weight: 4))
        _ = tree.root.children[0].addChild(Node("Grandchild 2", weight: 5))
        _ = tree.root.children[1].addChild(Node("Grandchild 3", weight: 6))
        _ = tree.root.children[1].addChild(Node("Grandchild 4", weight: 7))
        print(tree.root)
    }
}
