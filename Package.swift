// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebSocketEchoServer",
    dependencies: [
         .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "2.3.0"),
         .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", .upToNextMinor(from: "1.7.0")),
         .package(url: "https://github.com/IBM-Swift/Kitura-WebSocket.git", .branch("websocket-nio"))
    ],
    targets: [
    .target(
        name: "WebSocketEchoServer",
        dependencies: ["Kitura", "HeliumLogger", "Kitura-WebSocket"]),
    ]
)
