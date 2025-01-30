// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KitchenSink",
    targets: [
        // Defines the main executable target.
        .executableTarget(
            name: "KitchenSink"
        ),
        // Defines a test target for unit tests.
        // This test target depends on the "KitchenSink" target.
            .testTarget(
                name: "KitchenSinkTests",
                dependencies: ["KitchenSink"]
            ),
    ]
)
