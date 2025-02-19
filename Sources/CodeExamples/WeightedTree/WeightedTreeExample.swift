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
        var beActive: Node 
        var work: Node 
        var sleep: Node

        // Level 0: Root
        let tree: WeightedTree = WeightedTree("LIVE ONE DAY", value: 24*60)

        // Level 1
        beAwake = tree.root.addChild(Node("Be awake", weight: 2))
        sleep = tree.root.addChild(Node("Sleep", weight: 1))

        // Level 2 under beAwak
        beActive = beAwake.addChild(Node("Be active", weight: 3))
        _ = beAwake.addChild(Node("Rest", weight: 1))
        // _ = beAwake.addChild(Node("Rest and Relax", weight:2))
        // doThings = beAwake.addChild(Node("Do things", weight:3))

        // Level 2 under sleep
        sleep.addChildren([ Node("Sleep at night", weight: 7), Node("Take a nap", weight: 1)])    

        // Level 3 under beActive
        work = beActive.addChild(Node("Work", weight: 3))
        let play: Node = beActive.addChild(Node("Play", weight: 1))

        // Level 4 under work
        _ = work.addChild(Node("Work for the family", weight: 2))
        let workForMoey: Node = work.addChild(Node("Work for money", weight: 4))

        // Level 4 under play
        _ = play.addChild(Node("Go for a walk", weight: 1))
        _ = play.addChild(Node("Play around on the piano", weight: 1))
        _ = play.addChild(Node("Program", weight: 1))
        _ = play.addChild(Node("Read", weight: 1))
        _ = play.addChild(Node("Write", weight: 1))

        // Level 5 under workForMoney
        let workForTPE: Node = workForMoey.addChild(Node("Work for TPE", weight: 5))
        _ = workForMoey.addChild(Node("Work for Legner Engineering", weight: 1))

        // Level 6 under workForTPE
        let workOnMusic: Node = workForTPE.addChild(Node("Work on music", weight: 4))
        _ = workForTPE.addChild(Node("Do business", weight: 1))

        // Level 7 under workOnMusic
        _ = workOnMusic.addChild(Node("Practice existing songs", weight: 2))
        _ = workOnMusic.addChild(Node("Learn new songs", weight: 1))
        
        print(tree.root)
    }
}
