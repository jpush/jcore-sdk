// swift-tools-version:5.3
import PackageDescription

// 客户 UTS 静态 Framework 验证分支，不代表正常公有云版本发布。
let package = Package(
    name: "JCore",
    platforms: [.iOS(.v8)],
    products: [.library(name: "JCore", targets: ["JCoreWrapper"])],
    targets: [
        .target(
            name: "JCoreWrapper",
            dependencies: ["JCore"],
            path: "JCoreWrapper",
            resources: [.copy("Resources/PrivacyInfo.xcprivacy")],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("Foundation"),
                .linkedFramework("WebKit"),
                .linkedFramework("Security"),
                .linkedLibrary("z"),
                .linkedLibrary("resolv")
            ]
        ),
        .binaryTarget(name: "JCore", path: "Artifacts/JCore.xcframework")
    ]
)
