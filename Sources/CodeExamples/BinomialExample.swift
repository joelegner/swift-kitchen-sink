//
//  BinomialExample.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/5/25.
//
import Foundation

struct BinomialExample: CodeExample {
    func run() {
        print("\(#fileID) \(#function)")

        do {
            let tree = Binomial(genus: "Pin", species: "oak")
            let jsonData = try JSONEncoder().encode(tree)
            if let jsonString = String(data: jsonData, encoding: .utf8) {
                print(jsonString)
            }
        } catch {
            print("JSONEncoder().encode(tree) failed: \(error)")
        }
    }
}
