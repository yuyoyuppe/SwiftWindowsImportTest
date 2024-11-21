// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "ClientApp",
    products: [
        .executable(name: "clientapp", targets: ["ClientApp"])
    ],
    dependencies: [
        .package(path: "../HelloBinary")
    ],
    targets: [
        .executableTarget(
            name: "ClientApp",
            dependencies: [
                .product(name: "HelloBinary", package: "HelloBinary")
            ],
            path: "Sources/ClientApp",
            swiftSettings: [
                .unsafeFlags(["-enable-library-evolution"])
            ]
        )
    ],
    swiftLanguageModes: [
        .v6
    ]
)
