// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppletNavigation",
    platforms: [
        .iOS(.v16),
        .watchOS(.v9),
        .macOS(.v12),
        .tvOS(.v16),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "AppletNavigation",
            targets: ["AppletNavigation"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/0xLeif/AppState.git", from: "2.2.0")
    ],
    targets: [
        .target(
            name: "AppletNavigation",
            dependencies: [
                "AppState"
            ]
        ),
        .testTarget(
            name: "AppletNavigationTests",
            dependencies: ["AppletNavigation"]
        )
    ]
)
