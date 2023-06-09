// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CxxLogic",
    products: [
            .library(
                name: "cxxLibrary",
                targets: ["cxxLibrary"]),
            .library(
                name: "CxxLogic",
                targets: ["CxxLogic"])
        ],
        targets: [
            .target(
                name: "cxxLibrary",
                swiftSettings: [.interoperabilityMode(.Cxx)]),
            .target(
                name: "CxxLogic",
                dependencies: ["cxxLibrary"],
                swiftSettings: [.interoperabilityMode(.Cxx)])
        ]
)
