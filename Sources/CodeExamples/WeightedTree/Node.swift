import Foundation

class Node: Identifiable, CustomStringConvertible {
    var id: UUID = UUID()
    var weight: Int
    var text: String
    private var minutes: Int = 0
    private let indent: String = "    "
    var parent: Node?
    var children: [Node]
    
    init(_ text: String, weight: Int) {
        self.text = text
        self.weight = weight
        self.children = []
    }
    
    func addChild(_ child: Node) {
        child.parent = self
        children.append(child)
    }
        
    func totalWeight() -> Int {
        return weight + children.reduce(0) { $0 + $1.totalWeight() }
    }
    
    var description: String {
        var returnValue: String = "\(self.text): Weight=\(self.weight), Depth=\(self.depth)\n"
        for child: Node in children {
            returnValue += String(repeating: indent, count: child.depth) +  "\(child.description)"            
        }
        return returnValue
    }

    var depth: Int {
        if let boundParent = parent {
            return boundParent.depth + 1
        } else {
            return 0
        }
    }
}