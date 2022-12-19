// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "xcode-cloud-webhook",
    platforms: [.macOS(.v11)],
    products: [
        .library(
            name: "XcodeCloudWebhook",
            targets: ["XcodeCloudWebhook"]),
        .library(
            name: "XcodeCloudWebhookPayload",
            targets: ["XcodeCloudWebhookPayload"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "XcodeCloudWebhook",
            dependencies: ["XcodeCloudWebhookPayload"]),
        .target(
            name: "XcodeCloudWebhookPayload",
            dependencies: []),
        .testTarget(
            name: "XcodeCloudWebhookTests",
            dependencies: ["XcodeCloudWebhook"]),
    ]
)
