// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "ClientApp",
    products: [
        .executable(name: "clientapp", targets: ["ClientApp"])
    ],
    dependencies: [
        .package(path: "../HelloModule")
    ],
    targets: [
        .target(
            name: "ClientApp",
            dependencies: [
                .product(name: "HelloModule", package: "HelloModule")
            ],
            path: "Sources/ClientApp"
            // exclude: [
            //     "../../deps/HelloModule/HelloModule.swiftinterface",
            //     "../../deps/HelloModule/HelloModule.private.swiftinterface"
            // ],
            // swiftSettings: [
            //     .unsafeFlags(["-Ideps/HelloModule", "-enable-library-evolution"])
            // ],
            // linkerSettings: [
            //     .unsafeFlags(["-Ldeps/HelloModule", "-lHelloModule"])
            // ]
        )
    ],
    swiftLanguageModes: [
        .v6
    ]
)
