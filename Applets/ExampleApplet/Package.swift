// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExampleApplet",
    platforms: [
        .iOS(.v16),
        .watchOS(.v9),
        .macOS(.v12),
        .tvOS(.v16),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "ExampleApplet",
            targets: ["ExampleApplet"]
        ),
        .library(
            name: "ExampleAppletInterface",
            targets: ["ExampleAppletInterface"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/0xLeif/AppState.git", from: "2.2.0"),
        .package(path: "../../Core/Applet")
    ],
    targets: [
        .target(
            name: "ExampleApplet",
            dependencies: [
                "AppState",
                "Applet",
                "ExampleAppletInterface"
            ],
            path: "Sources/ExampleApplet"
        ),
        .target(
            name: "ExampleAppletInterface",
            dependencies: ["AppState"],
            path: "Sources/ExampleAppletInterface"
        ),
        .testTarget(
            name: "ExampleAppletTests",
            dependencies: ["ExampleApplet", "ExampleAppletInterface"]
        )
    ]
)
