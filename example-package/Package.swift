// swift-tools-version: 5.8
import PackageDescription

let package = Package(
  name: "example-package",
  platforms: [
    .iOS(.v16),
  ],
  products: [
    .library(name: "Example", targets: ["Example"]),
  ],
  targets: [
    .binaryTarget(
      name: "Bindings",
      url: "https://elixxir-bins.s3-us-west-1.amazonaws.com/bindings-ios/iOS-7aa764112851684c94f8e3b692ef07e441d6c3cf.zip",
      checksum: "754d8d8e96c9d03a85831e217da36819cff90ce5b5cfaaa83972bd69314f6946"
    ),
    .target(
      name: "Example",
      dependencies: [
        .target(name: "Bindings"),
      ]
    ),
  ]
)
