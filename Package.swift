// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebSocketEchoServer",
    dependencies: [
         .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "2.6.0"),
         .package(url: "https://github.com/IBM-Swift/Kitura-WebSocket.git", .branch("websocket-nio"))
    ],
    targets: [
    .target(
        name: "WebSocketEchoServer",
        dependencies: ["Kitura", "Kitura-WebSocket"]),
    ]
)
