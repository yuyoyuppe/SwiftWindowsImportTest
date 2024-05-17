// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "HelloModule",
    products: [
        .library(
            name: "HelloModule",
            type: .dynamic,
            targets: ["HelloModule"]),
    ],
    targets: [
        .target(
            name: "HelloModule",
            dependencies: []),
    ]
)
