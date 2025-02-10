//
//  LatexDocumentExample.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/10/25.
//

import Foundation

/// Shows how to use LatexDocument and demonstrates composition of strings.
struct LatexDocumentExample: CodeExample {
    func run() {
        print("\(#fileID)")
        
        /// Document is declared using syntax similar to Views in SwiftUI
        /// Note the article type. It also supports .book and .report
        let document = LatexDocument(.article) {
            // Composition similar to SwiftUI views
            "Test content."
            "This is a second paragraph."
        }
        print(document)
    }
}


