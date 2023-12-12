// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FuturaeKit",
    platforms: [
        .iOS(.v13) 
    ],
    products: [
        .library(
            name: "FuturaeKit",
            targets: ["FuturaeKit"])
    ],
    dependencies: [
            .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.6.0")),
            .package(url: "https://github.com/stephencelis/SQLite.swift.git", .upToNextMajor(from: "0.14.1"))
    ],
    targets: [
        .binaryTarget(
            name: "FuturaeKit",
            url: "https://artifactory.futurae.com:443/artifactory/futurae-ios/FuturaeKit-v3.0.0-beta.xcframework.zip",
            checksum: "6bc1a97b97b73ccdbf12692a2a0918fe126730c14ce3a512c0ee26fe0535e717")
    ]
)
