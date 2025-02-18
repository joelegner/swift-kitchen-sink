import Foundation

class Node: Identifiable, CustomStringConvertible {
    var id: UUID = UUID()
    var weight: Int
    var text: String
    private var minutes: Int = 0
    private let indent: String = "    "
    var parent: Node?
    var children: [Node]

    init(_ text: String) {
        self.text = text
        self.weight = 1
        self.children = []
    }

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

    var isRoot: Bool {
        return parent == nil
    }

    var depth: Int {
        if let boundParent = parent {
            return boundParent.depth + 1
        } else {
            return 0
        }
    }

    var rootNode: Node {
        if self.isRoot {
            return self
        } else {
            return parent!.rootNode
        }
    }
}

extension Node {
    static var rootValue: Double = 24.0*60.0
    static var minutesInHour: Double = 60.0
}