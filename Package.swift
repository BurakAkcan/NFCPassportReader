// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NFCPassportReader",
    platforms: [.iOS("15.0")],
    products: [
        .library(
            name: "NFCPassportReader",
            targets: ["NFCPassportReader"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "NFCPassportReader",
            dependencies: []),
        .testTarget(
            name: "NFCPassportReaderTests",
            dependencies: ["NFCPassportReader"])
    ]
)
