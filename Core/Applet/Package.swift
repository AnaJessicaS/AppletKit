// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Applet",
    platforms: [
        .iOS(.v16),
        .watchOS(.v9),
        .macOS(.v12),
        .tvOS(.v16),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "Applet",
            targets: ["Applet"]
        )
    ],
    dependencies: [
        .package(path: "../AppletUI")
    ],
    targets: [
        .target(
            name: "Applet",
            dependencies: [
                "AppletUI"
            ]
        ),
        .testTarget(
            name: "AppletTests",
            dependencies: ["Applet"]
        )
    ]
)
