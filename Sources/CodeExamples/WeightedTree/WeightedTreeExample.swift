//
//  BinomialExample.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/5/25.
//
import Foundation

struct WeightedTreeExample: CodeExample {
    func run() {
        let root: Node = Node("Root", weight: 1)
        print(#fileID, #function)
        root.addChild(Node("Child 1", weight: 2))
        root.addChild(Node("Child 2", weight: 3))
        root.children[0].addChild(Node("Grandchild 1", weight: 4))
        root.children[0].addChild(Node("Grandchild 2", weight: 5))
        root.children[1].addChild(Node("Grandchild 3", weight: 6))
        root.children[1].addChild(Node("Grandchild 4", weight: 7))
        print(root)
    }
}
