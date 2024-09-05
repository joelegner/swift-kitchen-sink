// The Swift Programming Language
// https://docs.swift.org/swift-book
struct App {
    static func main() {
        var myPoint: MyPoint
        var positiveNumber: PositiveInt = PositiveInt(24)
        divider()
        print("Swift KitchenSink")
        print("https://github.com/joelegner/swift-kitchen-sink")
        print("This command-line interface (CLI) program demonstrates Swift features.\nIts source code is released with GPL-3.0 license, and it is heavily documented.")
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
    }
}

App.main()
