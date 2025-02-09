//
//  NSExpressionExample.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/9/25.
//

import Foundation

/// NSExpressionExample demonstrates how to use NSExpression to evaluate a mathematical expression.
struct NSExpressionExample: CodeExample {
    func run() {
        print("\(#fileID)")
        let expression = NSExpression(format: "(2 + 2*5 + (2*8-2)-7)/7.0") 
        let result: Double = expression.expressionValue(with: nil, context: nil) as! Double
        print(roundsig(result))             // 2.71
        print(roundsig(result, digits: 3))  // 2.71
        print(roundsig(result, digits: 4))  // 2.714
        print(roundsig(result, digits: 5))  // 2.7143
    }
}
