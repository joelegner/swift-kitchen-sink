//
//  InitializerExample.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/21/25.
//
import Foundation

struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}

/// This toy structure only shows an alternative way to initialize a variable.
///
///  https://docs.swift.org/swift-book/documentation/the-swift-programming-language/initialization
///
/// Note from Apple documentation:
/// "If a property always takes the same initial value, provide a default
/// value rather than setting a value within an initializer. The end result is
/// the same, but the default value ties the property’s initialization more
/// closely to its declaration. It makes for shorter, clearer initializers and
/// enables you to infer the type of the property from its default value. The
/// default value also makes it easier for you to take advantage of default
/// initializers and initializer inheritance, as described later in this
/// chapter."
struct Celsius {
    var temperature = 0.0
}

struct InitializerExample: CodeExample {
    func run() {
        let f = Fahrenheit()
        let c = Celsius()
        print("\(f.temperature) degrees Fahrenheit.")
        print("\(c.temperature) degrees Celsius.")
    }
}
