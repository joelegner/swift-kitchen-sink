import Foundation

// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

/// Builds an array of CodeExample objects and calls their run() method
@main
struct App {
    static func main() {
        let examples: [CodeExample] = [GetSetExample(), BinomialExample(),
            ConcurrencyExample(), ProtocolsExample(), PropObsExample()]
        for example in examples {
            example.run()
        }
    }
}

