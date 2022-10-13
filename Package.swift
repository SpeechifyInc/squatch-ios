// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SaaSquatch",
    platforms: [ .iOS(.v13) ],
    products: [
        .library(name: "SaaSquatch", targets: ["SaaSquatch"]),
        .library(name: "SaaSquatchWebView", targets: ["SaaSquatchWebView"])
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMajor(from: "5.0.1")),
    ],
    targets: [
        .target(name: "SaaSquatch", dependencies: [
            "SwiftyJSON",
        ]),
        .target(name: "SaaSquatchWebView", dependencies: [
            "SaaSquatch",
            "SwiftyJSON",
        ]),
        .testTarget(name: "SaaSquatchTests", dependencies: ["SaaSquatch"]),
    ]
)
