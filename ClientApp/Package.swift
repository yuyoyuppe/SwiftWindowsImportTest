// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ClientApp",
    targets: [
        .target(
            name: "ClientApp",
            dependencies: [],
            path: "Sources/ClientApp",
            exclude: [
                "HelloModule.swiftinterface",
                "HelloModule.private.swiftinterface"
            ],
            swiftSettings: [
                .unsafeFlags(["-I.", "-enable-library-evolution"], .when(configuration: .debug))
            ],
            linkerSettings: [
                .unsafeFlags(["-L.", "-lHelloModule"], .when(configuration: .debug))
            ]
        )
    ]
)
