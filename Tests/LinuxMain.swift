import XCTest

import Mocha_DiscoveryTests

var tests = [XCTestCaseEntry]()
tests += Mocha_DiscoveryTests.allTests()
XCTMain(tests)
