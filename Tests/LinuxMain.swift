import XCTest
import HtmlTests
import CssTests

var tests = [XCTestCaseEntry]()
tests += HtmlTests.allTests()
tests += CssTests.allTests()
XCTMain(tests)