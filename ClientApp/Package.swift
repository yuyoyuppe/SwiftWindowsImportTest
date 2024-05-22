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
                "../../deps/HelloModule/HelloModule.swiftinterface",
                "../../deps/HelloModule/HelloModule.private.swiftinterface"
            ],
            swiftSettings: [
                .unsafeFlags(["-Ideps/HelloModule", "-enable-library-evolution"], .when(configuration: .debug))
            ],
            linkerSettings: [
                .unsafeFlags(["-Ldeps/HelloModule", "-lHelloModule"], .when(configuration: .debug))
            ]
        )
    ]
)
