import Foundation

class Node: Identifiable, CustomStringConvertible {
    var id: UUID = UUID()
    var weight: Int
    var text: String
    private var minutes: Int = 0
    private let indent: String = "    "
    var parent: Node?
    var tree: WeightedTree?
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
        
    func totalChildrenWeight() -> Int {
        var weight: Int = 0
        for child in children {
            weight += child.weight
        }
        return weight
    }
    
    var description: String {
    var returnValue: String = "\(self.text): Weight=\(self.weight), Depth=\(self.depth), Value=\(String(format: "%.0f", self.value))\n"
        for child: Node in children {
            returnValue += String(repeating: indent, count: child.depth) +  "\(child.description)"            
        }
        return returnValue
    }

    var isRoot: Bool {
        return parent == nil && tree != nil
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

    var minutesFromRoot: Double {
        if self.isRoot {
            return 0.0
        } else {
            return Double(self.depth) * Node.minutesInHour + parent!.minutesFromRoot
        }
    }

    var value: Double {
        if self.isRoot {
            return tree!.value
        } else {
            return parent!.value / Double(parent!.totalChildrenWeight()) * Double(weight)
        }
    }
}

extension Node {
    static var rootValue: Double = 24.0*60.0
    static var minutesInHour: Double = 60.0
}