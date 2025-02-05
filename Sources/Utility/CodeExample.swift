//
//  CodeExample.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/5/25.
//

protocol CodeExample {
    func run()
}

func runCodeExample<T: CodeExample>(_ example: T) {
    divider()
    example.run()
}

