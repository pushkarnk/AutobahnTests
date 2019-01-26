import Foundation

import KituraWebSocket
import LoggerAPI

class EchoService: WebSocketService {

    public func connected(connection: WebSocketConnection) {}

    public func disconnected(connection: WebSocketConnection, reason: WebSocketCloseReasonCode) {}

    public func received(message: Data, from: WebSocketConnection) {
        from.send(message: message)
    }

    public func received(message: String, from: WebSocketConnection) {
        Log.info("Got message \(message)... sending it back")
        from.send(message: message)
    }
}
