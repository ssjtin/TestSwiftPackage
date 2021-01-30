// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestPackage",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "TestPackage",
            targets: ["TestPackage"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TestPackage",
            dependencies: [],
            resources: [.copy("Shared Assets")]),
        .testTarget(
            name: "TestPackageTests",
            dependencies: ["TestPackage"]),
    ]
)
