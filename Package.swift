// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JCore",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "JCore",
            targets: ["JCoreWrapper"]
        ),
    ],
    targets: [
        .target(
            name: "JCoreWrapper",
            dependencies: ["JCore"],
            path: "JCoreWrapper",
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedLibrary("resolv"),
                .linkedFramework("UIKit"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("Foundation"),
                .linkedFramework("WebKit"),
                .linkedFramework("Security"),
                .linkedFramework("UserNotifications", .when(platforms: [.iOS])),
                .linkedFramework("Network", .when(platforms: [.iOS])),
            ]
        ),
        .binaryTarget(
            name: "JCore",
            path: "jcore-noidfa-ios-5.3.0.xcframework"
        ),
    ]
)

