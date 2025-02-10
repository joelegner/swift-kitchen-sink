//
//  LatexDocument.swift
//  KitchenSink
//
//  Created by Joe Legner on 2/10/25.
//

import Foundation

struct LatexDocument {
    enum DocumentClass: String {
        case article, report, book
    }
    
    let documentClass: DocumentClass
    let content: [String]
    
    init(_ documentClass: DocumentClass, @LatexBuilder content: () -> [String]) {
        self.documentClass = documentClass
        self.content = content()
    }
    
    @resultBuilder
    struct LatexBuilder {
        static func buildBlock(_ components: String...) -> [String] {
            return components
        }
    }
}

extension LatexDocument: CustomStringConvertible {
    var description: String {
        let header = "\\documentclass{\(documentClass.rawValue)}"
        let body = content.joined(separator: "\n\n")
        return "\(header)\n\\begin{document}\n\(body)\n\\end{document}"
    }
}
