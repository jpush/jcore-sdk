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
            targets: ["JCore"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "JCore",
            path: "jcore-ios-5.3.1.xcframework"
        ),
    ]
)

