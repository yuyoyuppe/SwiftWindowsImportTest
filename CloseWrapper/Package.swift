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
        .unsafeFlags(["-enable-library-evolution", "-IArtifacts/Windows"], .when(platforms: [.windows]))
      ],
      linkerSettings: [
        .unsafeFlags(["-LArtifacts/Windows", "-lCloseSource"], .when(platforms: [.windows]))
      ]
    ),
  ],
  swiftLanguageModes: [.v6]
)
