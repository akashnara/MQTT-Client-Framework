// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let package = Package(
    name: "MQTTClient",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_12),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "MQTTClient",
            targets: ["MQTTClient"]
        )
    ],
    targets: [
        .target(
            name: "MQTTClient",
            path: "Sources/MQTTClient",
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("CFNetwork"),
                .linkedFramework("CoreData"),
                .linkedFramework("Security")
            ]
        )
    ]
)

