// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NFCPassportReader",
    platforms: [.iOS("13.0")],
    products: [
        .library(
            name: "NFCPassportReader",
            targets: ["NFCPassportReader"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/OpenSSL.git", .upToNextMinor(from: "1.1.1900"))
    ],
    targets: [
        .target(
            name: "NFCPassportReader",
            dependencies: [
                .product(name: "OpenSSL", package: "OpenSSL")
            ]
        ),
        .testTarget(
            name: "NFCPassportReaderTests",
            dependencies: ["NFCPassportReader"]
        )
    ]
)
