// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "ObjectMapper",
    platforms: [
        .iOS("12.0")
    ],
    products: [
        .library(
            name: "ObjectMapper",
            targets: ["ObjectMapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.1.0")),
    ],
    targets: [
        .target(
            name: "ObjectMapper",
            dependencies: [
                "Alamofire"
            ]
        ),
        .testTarget(
            name: "ObjectMapperTests",
            dependencies: [
                "ObjectMapper",
                "Alamofire"
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
