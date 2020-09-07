// swift-tools-version:5.1

import PackageDescription

let package = Package(
        name: "BarcodeScanner",
        platforms: [
            .iOS(.v10)
        ],
        products: [
            .library(name: "BarcodeScanner", targets: ["BarcodeScanner"])
        ],
        targets: [
            .target(name: "BarcodeScanner", path: "Sources")
        ],
        swiftLanguageVersions: [.v5])