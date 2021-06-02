// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "R2Streamer",
    defaultLocalization: "en",
    platforms: [.iOS(.v10), .macOS("10.12"), .tvOS(.v9)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "R2Streamer",
            targets: ["R2Streamer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/marmelroy/Zip.git", .exact("2.1.1")),
        .package(url: "https://github.com/cezheng/Fuzi.git", .exact("3.1.3")),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .exact("1.3.8")),
        .package(name: "R2Shared", path: "../r2-shared-swift")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "R2Streamer",
            dependencies: ["Zip", "Fuzi", "CryptoSwift", "R2Shared"],
            path: "./r2-streamer-swift/",
            exclude: ["Info.plist"],
            resources: [
                .copy("Resources")
            ]
        ),
        .testTarget(
            name: "r2-streamer-swiftTests",
            dependencies: ["R2Streamer"],
            path: "./r2-streamer-swiftTests/",
            exclude: ["Info.plist"],
            resources: [
                .copy("Fixtures")
            ]
        )
    ]
)
