import Foundation
import Kitura
import KituraWebSocket

let router = Router()

WebSocket.register(service: EchoService(), onPath: "/")

let port = 9001

Kitura.addHTTPServer(onPort: port, with: router)
Kitura.run()
