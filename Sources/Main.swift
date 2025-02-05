import Foundation

struct Binomial: Codable {
    var genus: String
    var species: String
    var subspecies: String?
}


// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

@main
struct App {
    static func main() {
        var myPoint: MyPoint
        var positiveNumber: PositiveInt = PositiveInt(24)
        divider()
        print("""
Swift KitchenSink
https://github.com/joelegner/swift-kitchen-sink

This command-line interface (CLI) program demonstrates Swift features.
Its source code is released with GPL-3.0 license, and it is heavily documented.
""")
        divider()
        protocolsDemo()
        divider()
        myPoint = MyPoint(x: 24.0, y: 16.4)
        print(myPoint)
        myPoint.x = -17.6
        print(myPoint)
        divider()
        print(positiveNumber)
        positiveNumber.value = 7
        print(positiveNumber)
        positiveNumber.value = -18
        print(positiveNumber)
        do {
            let tree = Binomial(genus: "Pin", species: "oak")
            let jsonData = try JSONEncoder().encode(tree)
            if let jsonString = String(data: jsonData, encoding: .utf8) {
                print(jsonString)  // Convert to a readable string and print
            }        } catch {
            print("JSONEncoder().encode(tree) failed: \(error)")
        }
    }
}

