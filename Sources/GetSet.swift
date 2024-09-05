struct PositiveInt {
    private var _value: Int // Private backing property

    var value: Int {
        get { return _value }
        set {
            if newValue >= 0 {
                _value = newValue
            } else {
                print("Negative number is not allowed.")
            }
        }
    }

    init(_ initialValue: Int) {
        if initialValue >= 0 {
            _value = initialValue
        } else {
            print("Initial value cannot be negative. Setting to 0.")
            _value = 0
        }
    }
}
