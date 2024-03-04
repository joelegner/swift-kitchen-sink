import Foundation

func protocolsDemo() {
    print("PROTOCOLS DEMO")
    divider()
    customStringDemo()
    divider()
    equatableDemo()
    divider()
    comparableDemo()
    divider()
    codableDemo()
    divider()
}

/*
“CustomStringConvertible has one required computed property, description, which returns a String representation of the instance”
Excerpt From
Develop in Swift Data Collections
Apple Education
https://books.apple.com/us/book/develop-in-swift-data-collections/id6468968766
This material may be protected by copyright.
*/
class BendingMoment: CustomStringConvertible, Equatable, Comparable, Codable {
    let moment: Double

    // Every class must be furnished with an init method
    // This is very similar to Python's __init__ method. 
    // It includes a self object.
    init(_ moment: Double) {
        self.moment = moment
    }

    var description: String {
        return "\(moment) kip-ft"
    }

    static func ==(lhs: BendingMoment, rhs:BendingMoment) -> Bool {
        return lhs.moment == rhs.moment
    }

    static func <(lhs: BendingMoment, rhs:BendingMoment) -> Bool {
        return lhs.moment < rhs.moment
    }
}

// Let's try out our BendingMoment class. 
func customStringDemo() {
    let M1 = BendingMoment(45.5)
    let M2 = BendingMoment(122.5)
    let M3 = BendingMoment(45.5)

    print("Custom String Convertible Demo")
    print(M1)       // 45.5 kip-ft
    print(M2)       // 122.5 kip-ft
    print(M3)       // 45.5 kip-ft
}

func equatableDemo() {
    let M1 = BendingMoment(45.5)
    let M2 = BendingMoment(122.5)
    let M3 = BendingMoment(45.5)
    print("Equatable Protocol Demo")
    print(M1==M2)   // false
    print(M2==M3)   // false
    print(M1==M3)   // true
}

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

func codableDemo() {
    let M = BendingMoment(432.0)
    print("Codable Protocol Demo")
    print(M)
    
    // Use JSON to write the bending moment
    let jsonEncoder = JSONEncoder()
    if let jsonData = try? jsonEncoder.encode(M),
    let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
}