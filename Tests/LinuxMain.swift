import XCTest

import WebSocketEchoServerTests

var tests = [XCTestCaseEntry]()
tests += WebSocketEchoServerTests.allTests()
XCTMain(tests)