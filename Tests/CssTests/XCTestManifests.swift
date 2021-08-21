@_exported import XCTest
@_exported @testable import Css

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
  return [
    testCase(PropertiesTests.allTests),
    testCase(SelectorsTests.allTests),
  ]
}
#endif