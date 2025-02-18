//
//  BinomialExample.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/5/25.
//
import Foundation

struct WeightedTreeExample: CodeExample {
    func run() {
        print(#fileID, #function, "\n")
        var beAwake: Node 
        var doThings: Node
        var sleep: Node

        // Level 0: Root
        let tree: WeightedTree = WeightedTree("LIVE ONE DAY", value: 24*60)

        // Level 1
        beAwake = tree.root.addChild(Node("Be awake", weight: 2))
        sleep = tree.root.addChild(Node("Sleep", weight: 1))

        // Level 2
        _ = beAwake.addChild(Node("Rest and Relax", weight:2))
        sleep.addChildren([ Node("Sleep at night", weight: 7), Node("Take a nap", weight: 1)])
        doThings = beAwake.addChild(Node("Do things", weight:3))
    

        // Level 3
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
