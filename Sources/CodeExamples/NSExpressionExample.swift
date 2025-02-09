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
        let expression = NSExpression(format: "2 + 2*5 + (2*8-2)-7") 
        let result = expression.expressionValue(with: nil, context: nil) as! Int
        // Answer should be 2 + 10 + 14 - 7 = 19
        assert(result == 19)
        print(result)
    }
}
