//
//  ProtocolsExample.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/5/25.
//
import Foundation

struct ProtocolsExample: CodeExample {
    func run() {
        divider()
        print("\(#fileID) \(#function)")

        /// A function that demonstrates the use of various Swift protocols.
        /// - This function prints dividers and calls individual demos for:
        ///   - `CustomStringConvertible`: Custom string representation of a class.
        ///   - `Equatable`: Comparing instances for equality.
        ///   - `Comparable`: Comparing instances with `<`, `>`, etc.
        ///   - `Codable`: Encoding and decoding instances to/from JSON.
        customStringDemo()
        equatableDemo()
        comparableDemo()
        codableDemo()
    }
    
    /// Demonstrates the `CustomStringConvertible` protocol.
    /// - Creates `BendingMoment` instances and prints them.
    func customStringDemo() {
        let M1 = BendingMoment(45.5)
        let M2 = BendingMoment(122.5)
        let M3 = BendingMoment(45.5)
        
        print("Custom String Convertible Demo")
        print(M1)  // Outputs: "45.5 kip-ft"
        print(M2)  // Outputs: "122.5 kip-ft"
        print(M3)  // Outputs: "45.5 kip-ft"
    }
    
    /// Demonstrates the `Equatable` protocol.
    /// - Compares different `BendingMoment` instances for equality.
    func equatableDemo() {
        let M1 = BendingMoment(45.5)
        let M2 = BendingMoment(122.5)
        let M3 = BendingMoment(45.5)
        
        print("Equatable Protocol Demo")
        print(M1 == M2)  // false
        print(M2 == M3)  // false
        print(M1 == M3)  // true
    }
    
    /// Demonstrates the `Comparable` protocol.
    /// - Compares different `BendingMoment` instances using `<`, `>`, `<=`, and `>=`.
    func comparableDemo() {
        let M1 = BendingMoment(45.5)
        let M2 = BendingMoment(122.5)
        let M3 = BendingMoment(-71.5)
        
        print("Comparable Protocol Demo")
        print(M1 < M2)  // true
        print(M1 <= M2) // true
        print(M1 > M2)  // false
        print(M1 >= M2) // false
        print()
        print(M1 < M3)  // false
        print(M1 <= M3) // false
        print(M1 > M3)  // true
        print(M1 >= M3) // true
        print()
        print(M2 < M3)  // false
        print(M2 <= M3) // false
        print(M2 > M3)  // true
        print(M2 >= M3) // true
    }
    
    /// Demonstrates the `Codable` protocol.
    /// - Encodes a `BendingMoment` instance into JSON and prints the output.
    func codableDemo() {
        let M = BendingMoment(432.0)
        print("Codable Protocol Demo")
        print(M)  // Outputs: "432.0 kip-ft"
        
        // Use JSON to encode the BendingMoment instance.
        let jsonEncoder = JSONEncoder()
        if let jsonData = try? jsonEncoder.encode(M),
           let jsonString = String(data: jsonData, encoding: .utf8) {
            print(jsonString)  // Outputs a JSON representation of the object.
        }
    }

}
