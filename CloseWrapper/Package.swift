// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "CloseWrapper",
  products: [
    .library(
      name: "CloseWrapper",
      targets: ["CloseWrapper"]
    ),
  ],
  targets: [
    .target(
      name: "CloseWrapper",
      swiftSettings: [
        .unsafeFlags(["-enable-library-evolution", "-IArtifacts/macOS"], .when(platforms: [.macOS])),
      ],
      linkerSettings: [
        .unsafeFlags(["-LArtifacts/macOS", "-lCloseSource"], .when(platforms: [.macOS]))
      ]
    ),
  ],
  swiftLanguageModes: [.v6]
)
