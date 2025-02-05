/// A structure that ensures only non-negative integers can be stored.
/// If an attempt is made to set a negative number, it is rejected.
struct PositiveInt {
    /// Private backing property that actually stores the integer value.
    private var _value: Int
    
    /// Public computed property that provides controlled access to `_value`.
    /// - The getter simply returns `_value`.
    /// - The setter checks if `newValue` is non-negative before assigning it.
    ///   If `newValue` is negative, an error message is printed, and `_value` remains unchanged.
    var value: Int {
        get { return _value }
        set {
            if newValue >= 0 {
                _value = newValue
            } else {
                print("Negative number is not allowed.")  // Prevent negative values.
            }
        }
    }
    
    /// Custom initializer to ensure the instance starts with a non-negative value.
    /// - Parameter initialValue: The initial integer value.
    ///   - If `initialValue` is non-negative, it is assigned to `_value`.
    ///   - If `initialValue` is negative, an error message is printed and `_value` is set to 0.
    init(_ initialValue: Int) {
        if initialValue >= 0 {
            _value = initialValue
        } else {
            print("Initial value cannot be negative. Setting to 0.")  // Default to 0 if invalid.
            _value = 0
        }
    }
}

// Example Usage:
// var num = PositiveInt(10)  // Creates an instance with value 10.
// num.value = -5             // Prints: "Negative number is not allowed."
// print(num.value)           // Still 10, as the negative value was rejected.
