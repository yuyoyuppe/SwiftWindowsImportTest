// swift-tools-version:6.0

import PackageDescription

let package = Package(
  name: "swift-app-experiment",
  products: [
    .executable(name: "client", targets: ["ClientApp"]),
  ],
  dependencies: [
    .package(path: "../CloseWrapper")
  ],
  targets: [
    .executableTarget(
      name: "ClientApp",
      dependencies: [
        .product(name: "CloseWrapper", package: "CloseWrapper"),
      ],
      path: "Sources",
      swiftSettings: [
        .unsafeFlags(["-enable-library-evolution"])
      ]
    )
  ],
  swiftLanguageModes: [.v6]
)
