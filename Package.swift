// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppletKit",
    platforms: [
        .iOS(.v17),
        .watchOS(.v10),
        .macOS(.v13),
        .tvOS(.v17),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "AppletKit",
            targets: ["AppletKit"]
        )
    ],
    dependencies: [
        // Applets
        .package(path: "Applets/ExampleApplet"),
        .package(path: "Applets/ExampleAppletInteroperability"),
    ],
    targets: [
        .target(
            name: "AppletKit",
            dependencies: [
                // Applets
                "ExampleApplet",
                "ExampleAppletInteroperability"
            ],
            path: "Sources/AppletKit",
            exclude: ["../../Core", "../../Applets"]
        ),
        .testTarget(
            name: "AppletKitTests",
            dependencies: ["AppletKit"],
            path: "Tests/AppletKitTests"
        )
    ]
)
