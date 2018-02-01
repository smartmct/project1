// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "project1",
    dependencies: [
        // 💧 A server-side Swift web framework. 
        .package(url: "https://github.com/vapor/vapor.git", .branch("beta")),
        .package(url: "https://github.com/vapor/leaf.git", .branch("beta")),
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor","Leaf"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"]),
    ]
)

