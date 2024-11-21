// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "HelloModule",
    products: [
        .library(
            name: "HelloModule",
            type: .dynamic,
            targets: ["HelloModule"]
        )
    ],
    targets: [
        .target(
            name: "HelloModule",
            path: "Sources/HelloModule",
            swiftSettings: [
                .unsafeFlags([
                    "-enable-library-evolution", "-emit-module-interface-path",
                    "HelloModule.swiftinterface",
                ])
            ],
            linkerSettings: [
                .unsafeFlags(["-emit-module-interface-path", "HelloModule.swiftinterface"])
            ]

        )
    ],
    swiftLanguageModes: [
        .v6
    ]
)
