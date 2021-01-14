// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Mocha_Discovery",
    products: [
        .library(name: "Mocha_Discovery", targets: ["Mocha_Discovery"]),
    ],
    dependencies: [
        .package(name: "URLNavigator", url: "https://github.com/devxoul/URLNavigator.git", .upToNextMajor(from: "2.3.0")),
        .package(name: "ModuleCenter", url: "https://github.com/dongyaxun/ModuleCenter.git", .branch("master"))
    ],
    targets: [
        .target(name: "Mocha_Discovery", dependencies: ["URLNavigator", "ModuleCenter"]),
        .testTarget(name: "Mocha_DiscoveryTests", dependencies: ["Mocha_Discovery"]),
    ]
)
