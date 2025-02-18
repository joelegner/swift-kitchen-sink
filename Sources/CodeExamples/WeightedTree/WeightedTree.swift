class WeightedTree {
    var children: [Node] 
    var value: Double    
    private var rootNode: Node?
    private var _text: String = "Root node"

    var root: Node {
        get {
            if let root = self.rootNode {
                return root
            } else {
                self.rootNode = makeRootNode()
                return self.rootNode!
            }
        }
    }

    private func makeRootNode() -> Node {
        let rootNode = Node(_text, weight: 1)
        rootNode.tree = self
        self.rootNode = rootNode
        rootNode.parent = nil
        assert(rootNode.isRoot)
        return rootNode
    }

    init() {
        self.children = []
        self.value = 24*60
    }

    init(_ text: String, value: Double) {
        self.children = []
        self._text = text
        self.value = value
    }


    init(value: Double) {
        self.children = []
        self.value = value
    }

}