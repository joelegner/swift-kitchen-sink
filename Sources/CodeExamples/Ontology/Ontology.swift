import simd

/// TODO: Split this master file into separate files. 

/// Represents an object that has mass and spatial extension.
protocol PhysicalObject {
    var mass: Double { get }
    var size: SIMD3<Double> { get } // Width, height, depth
}

/// Represents an object with a position in 4-dimensional space-time.
protocol Positioned {
    var position: SIMD4<Double> { get } // (x, y, z, time)
}

/// Represents an object that can move with 6 degrees of freedom (DOF).
protocol SixDOF {
    var linearVelocity: SIMD3<Double> { get } // Movement along x, y, z axes
    var angularVelocity: SIMD3<Double> { get } // Rotation around x, y, z axes (pitch, yaw, roll)
}

/// Represents anything that can move.
protocol Movable {
    func move()
}

/// Represents objects that can move under their own power.
protocol SelfPropelled: Movable {
    func propel()
}

/// A real-world object with mass, extension, position, and 6DOF motion.
protocol RealWorldObject: PhysicalObject, Positioned, SixDOF {}

/// A vehicle is a real-world object that moves under its own power.
protocol Vehicle: RealWorldObject, SelfPropelled {}

/// A living organism that exists as a real-world object.
protocol LivingBeing: RealWorldObject {
    var scientificName: String { get }
}

/// An animal is a living being that may have common names.
protocol Animal: LivingBeing {
    var commonNames: [String] { get }
}

/// A human being is an animal that is self-propelled.
protocol HumanBeing: Animal, SelfPropelled {}
