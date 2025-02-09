import Foundation

// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

/// Builds an array of CodeExample objects and calls their run() method
@main
struct App {
    static func main() {
        let examples: [CodeExample] = [GetSetExample(), BinomialExample(),
            ConcurrencyExample(), ProtocolsExample(), PropObsExample(),
                                       ExpressionMacroExamples(), NSExpressionExample()]
        
        /// The `map` method calls runCodeExample on each element in the examples array.
        /// We use `let _ =` so that the compiler knows we are ignoring the result. Normally `map`
        /// will return a new array with elements having been processed. Here the elements only have
        /// their `run()` method called, so we do not care about a processed array.
        let _ = examples.map { runCodeExample($0) }
    }
}

