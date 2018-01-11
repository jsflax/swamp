// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swamp",
    dependencies: [
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", Version(1, 0, 0)..<Version(3, .max, .max)),
        .package(url: "https://github.com/daltoniam/Starscream", Version(1, 0, 0)..<Version(3, .max, .max)),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift", .upToNextMinor(from: "0.8.0"))
	],
    targets: [
        .target(
            name: "Swamp",
            dependencies: ["SwiftyJSON", "Starscream", "CryptoSwift"]
        )
    ]
)
