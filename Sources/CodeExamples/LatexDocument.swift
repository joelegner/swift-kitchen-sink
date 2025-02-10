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
        let header = "\\documentclass{\(documentClass.rawValue)}\n"
        let body = content.joined(separator: "\n\n")
        return "\(header)\n\\begin{document}\n\n\(body)\n\\end{document}\n"
    }
}

// MARK: LaTeX formatting helper functions.
func eq(_ latexEquation: String, inline: Bool = false) -> String
{
    return if inline {
        "$ \(latexEquation) $"
    } else {
        "\\begin{equation}\n\(latexEquation)\n\\end{equation}\n"
    }
}

/// Helps section, subsection, and subsubsection
private func _section(kind: String="section", title: String) -> String {
    return "\\\(kind){\(title)}"
}

/// Wrap a title in \section{ }
func section(_ title: String) -> String {
    return _section(kind: "section", title: title)
}

/// Wrap a title in \subsection{ }
func subsection(_ title: String) -> String {
    return _section(kind: "subsection", title: title)
}

/// Wrap a title in \subsubsection{ }
func subsubsection(_ title: String) -> String {
    return _section(kind: "subsubsection", title: title)
}

func quote(_ quoteText: String) -> String {
    """
    \\begin{quote}
    \(quoteText)
    \\end{quote}
    """
}

func Quote(_ content: () -> String) -> String {
    """
    \\begin{quote}
    \(content())
    \\end{quote}
    """
}

