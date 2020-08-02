// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "PerfectSession",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "PerfectSession",
            targets: ["PerfectSession"]),
    ],
    dependencies: [
        .package(name: "PerfectHTTP", url: "https://github.com/123FLO321/Perfect-HTTP.git", .branch("swift5")),
        .package(name: "PerfectLogger", url: "https://github.com/123FLO321/Perfect-Logger.git", .branch("swift5")),
    ],
    targets: [
        .target(
            name: "PerfectSession",
            dependencies: ["PerfectLogger", "PerfectHTTP"]),
        .testTarget(
            name: "PerfectSessionTests",
            dependencies: ["PerfectSession"]),
    ]
)
