// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppletUI",
    platforms: [
        .iOS(.v16),
        .watchOS(.v9),
        .macOS(.v12),
        .tvOS(.v16),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "AppletUI",
            targets: ["AppletUI"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/0xLeif/AppState.git", from: "2.2.0"),
        .package(path: "../AppletNavigation")
    ],
    targets: [
        .target(
            name: "AppletUI",
            dependencies: [
                "AppState",
                "AppletNavigation"
            ]
        )
    ]
)
