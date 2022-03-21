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
        .package(name: "PerfectHTTP", url: "https://github.com/SkOODaT/Perfect-HTTP.git", .branch("SKOODAT")),
        .package(name: "PerfectLogger", url: "https://github.com/SkOODaT/Perfect-Logger.git", .branch("SKOODAT")),
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
