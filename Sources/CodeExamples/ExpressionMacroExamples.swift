//
//  ExpressionMacros.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/5/25.
//
import Foundation

/// Demonstrates Maco expansions.
///
/// | Macro        | Description |
/// |-------------|-------------|
/// | `#function` | Expands to the name of the current function or method. |
/// | `#file`     | Expands to the full file path of the source file. |
/// | `#fileID`   | Expands to a concise, unique file identifier (introduced in Swift 5.3). |
/// | `#filePath` | Expands to the full absolute file path (introduced in Swift 5.3, more specific than `#file`). |
/// | `#line`     | Expands to the current line number in the source file. |
/// | `#column`   | Expands to the current column number in the source file. |
/// | `#dsohandle`| Refers to the dynamic shared object (DSO) handle, useful for logging and symbol resolution. |
/// | `#selector` | Converts a method name into an Objective-C selector. |
/// | `#keyPath`  | Converts a Swift property into a key-path string for use with KVO (Key-Value Observing). |
///
struct ExpressionMacroExamples: CodeExample {
    func run() {
        print("\(#fileID)")
        print("Function: \(#function)")
        print("File: \(#file)")
        print("File ID: \(#fileID)")
        print("File Path: \(#filePath)")
        print("Line: \(#line)")
        print("Column: \(#column)")
        print("DSO Handle: \(#dsohandle)")
        
        class MyClass: NSObject {
            @objc func myMethod() {}
        }
        let selector = #selector(MyClass.myMethod)
        print("Selector: \(selector)")
        
        class Person: NSObject {
            @objc dynamic var name: String = "Alice"
        }
        let keyPath = #keyPath(Person.name)
        print("KeyPath: \(keyPath)")
    }
}

