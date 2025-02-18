class WeightedTree {
    var children: [Node] 
    var value: Double    
    private var rootNode: Node?

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
        let rootNode = Node("Root Node", weight: 1)
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

    init(value: Double) {
        self.children = []
        self.value = value
    }

}