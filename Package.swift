// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ObjectMapper",
    products: [
    .library(
        name: "ObjectMapper",
        targets: ["ObjectMapper"])
    ],
    targets: [
        .target(
            name: "ObjectMapper",
            path: "Sources"
        ),
        .testTarget(
            name: "ObjectMapperTests",
            dependencies: ["ObjectMapper"])
    ],
    swiftLanguageVersions: [.v5]
)
