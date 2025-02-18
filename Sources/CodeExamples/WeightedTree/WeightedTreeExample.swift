//
//  BinomialExample.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/5/25.
//
import Foundation

struct WeightedTreeExample: CodeExample {
    func run() {
        print(#fileID, #function)
        let tree: WeightedTree = WeightedTree("Live life", value: 24*60)
        var beAwake: Node 
        var doThings: Node

        beAwake = tree.root.addChild(Node("Be awake", weight: 2))
        _ = tree.root.addChild(Node("Sleep", weight: 1))
        _ = beAwake.addChild(Node("Rest and Relax", weight:1))
        doThings = beAwake.addChild(Node("Do things", weight:1))
        _ = doThings.addChild(Node("Work", weight: 8))
        _ = doThings.addChild(Node("Play", weight: 1))
        _ = doThings.addChild(Node("Eat", weight: 2))
        _ = doThings.addChild(Node("Exercise", weight: 1))
        _ = doThings.addChild(Node("Learn", weight: 1))
        _ = doThings.addChild(Node("Create", weight: 1))
        _ = doThings.addChild(Node("Socialize", weight: 1))
        
        print(tree.root)
    }
}
