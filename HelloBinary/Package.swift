// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "HelloBinary",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "HelloBinary",
            targets: ["HelloBinary"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "HelloBinary",
            resources: [
                .copy("../../Artifacts")
            ],
            swiftSettings: [
                .unsafeFlags(["-IArtifacts", "-enable-library-evolution"])
            ],
            linkerSettings: [
                .unsafeFlags(["-LArtifacts", "-lHelloModule"])
            ]
            ),
        // .binaryTarget(
        //     name: 
        // ),
        .testTarget(
            name: "HelloBinaryTests",
            dependencies: ["HelloBinary"]
        ),
    ],
    swiftLanguageModes: [
        .v6
    ]
)
