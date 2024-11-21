// swift-tools-version:6.0

import PackageDescription

let package = Package(
  name: "swift-close-source",
  products: [
    .library(
      name: "CloseSource",
      type: .dynamic,
      targets: ["CloseSource"]
    )
  ],
  targets: [
    .target(
      name: "CloseSource",
      path: "Sources",
      swiftSettings: [
        .unsafeFlags(["-enable-library-evolution", "-emit-module-interface-path", "CloseSource.swiftinterface"], .when(platforms: [.windows]))
      ],
      linkerSettings: [
        .unsafeFlags(["-emit-module-interface-path", "HelloModule.swiftinterface"], .when(platforms: [.windows]))
      ]
    )
  ],
  swiftLanguageModes: [.v6]
)
