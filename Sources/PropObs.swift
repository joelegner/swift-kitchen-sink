// Property observer example

struct MyPoint {
    var x: Double = 0.0
    {
        willSet {
            print("About to set x = \(newValue)")
        }
        didSet {
            print("Formerly x = \(oldValue)")
        }
    }
    var y: Double = 0.0

    init(x xCoord: Double, y yCoord: Double) {
        self.x = xCoord
        self.y = yCoord
    }
}

