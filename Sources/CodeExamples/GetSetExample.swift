//
//  GetSetExample.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/5/25.
//

struct GetSetExample: CodeExample {
    func run() {
        var positiveNumber: PositiveInt = PositiveInt(24)        
        print("\(#fileID)")
        print(positiveNumber)
        positiveNumber.value = 7
        print(positiveNumber)
        positiveNumber.value = -18
        print(positiveNumber)
    }
}
