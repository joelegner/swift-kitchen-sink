import Foundation

func roundsig(_ value: Double, digits: Int = 3) -> Double {
    guard value != 0 else { return 0 }
    let order = floor(log10(abs(value)))
    let places = digits - Int(order) - 1
    return places > 0 ? round(value * pow(10, Double(places))) / pow(10, Double(places)) : round(value)
}
