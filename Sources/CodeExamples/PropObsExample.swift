//
//  PropObsExample.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/5/25.
//

struct PropObsExample: CodeExample {
    func run() {
        var myPoint: MyPoint

        print("\(#fileID) \(#function)")
        myPoint = MyPoint(x: 24.0, y: 16.4)
        print(myPoint)
        myPoint.x = -17.6
        print(myPoint)
    }
}
