import Foundation

/// A class representing a bending moment, measured in kip-ft (kilo-pound-feet).
/// This class conforms to multiple protocols:
/// - `CustomStringConvertible`: Provides a readable string representation.
/// - `Equatable`: Allows checking if two instances are equal.
/// - `Comparable`: Allows sorting and comparison using `<`, `>` operators.
/// - `Codable`: Enables encoding/decoding to/from JSON.
class BendingMoment: CustomStringConvertible, Equatable, Comparable, Codable {
    /// The bending moment value in kip-ft.
    let moment: Double
    
    /// Initializes a `BendingMoment` instance with a given moment value.
    /// - Parameter moment: The bending moment value to store.
    init(_ moment: Double) {
        self.moment = moment
    }
    
    /// Provides a human-readable description of the instance.
    /// - Conforms to `CustomStringConvertible`.
    /// - Example: `print(BendingMoment(45.5))` will output `"45.5 kip-ft"`.
    var description: String {
        return "\(moment) kip-ft"
    }
    
    /// Determines if two `BendingMoment` instances are equal.
    /// - Conforms to `Equatable`.
    /// - Example: `BendingMoment(10.0) == BendingMoment(10.0)` returns `true`.
    static func ==(lhs: BendingMoment, rhs: BendingMoment) -> Bool {
        return lhs.moment == rhs.moment
    }
    
    /// Compares two `BendingMoment` instances to determine ordering.
    /// - Conforms to `Comparable`.
    /// - Example: `BendingMoment(10.0) < BendingMoment(20.0)` returns `true`.
    static func <(lhs: BendingMoment, rhs: BendingMoment) -> Bool {
        return lhs.moment < rhs.moment
    }
}
