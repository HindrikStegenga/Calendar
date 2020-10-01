// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Calendar2",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Calendar2",
            targets: ["Calendar2", "OSCache", "OrderedDictionary"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Calendar2",
            dependencies: ["OrderedDictionary", "OSCache"]),
        .target(
            name: "OrderedDictionary",
            dependencies: []),
        .target(
            name: "OSCache",
            dependencies: []),
        .testTarget(
            name: "Calendar2Tests",
            dependencies: ["Calendar2"]),
    ]
)
