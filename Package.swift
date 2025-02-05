// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "KitchenSink",
    platforms: [
        .macOS(.v10_15)  // Specify macOS 10.15 as the minimum deployment target
    ],
    targets: [
        .executableTarget(
            name: "KitchenSink"),
    ]
)
