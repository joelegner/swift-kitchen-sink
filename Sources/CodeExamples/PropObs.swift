/// Demonstrate willSet and didSet property observers.
/// These observers allow monitoring changes to a property.
/// - `willSet` runs before the property is changed.
/// - `didSet` runs after the property has been changed.

struct MyPoint {
    /// The x-coordinate of the point.
    /// Whenever x is about to be set, `willSet` prints the new value.
    /// After x has been set, `didSet` prints the old value.
    var x: Double = 0.0 {
        willSet {
            print("About to set x = \(newValue)")  // `newValue` is the incoming value.
        }
        didSet {
            print("Formerly x = \(oldValue)")     // `oldValue` is the previous value.
        }
    }
    
    /// The y-coordinate of the point.
    /// No property observers are used here.
    var y: Double = 0.0
    
    /// Custom initializer that sets initial values for x and y.
    /// - Parameters:
    ///   - xCoord: Initial x-coordinate.
    ///   - yCoord: Initial y-coordinate.
    init(x xCoord: Double, y yCoord: Double) {
        self.x = xCoord
        self.y = yCoord
    }
}

// Example Usage:
// var point = MyPoint(x: 1.0, y: 2.0)  // No observer triggers here.
// point.x = 3.0  // Triggers willSet and didSet for x.
