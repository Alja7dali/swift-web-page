@_exported import XCTest
@_exported @testable import Html

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
  return [
    testCase(AriaTests.allTests),
    testCase(AttributesTests.allTests),
    testCase(BuilderTests.allTests),
    testCase(EventsTests.allTests),
    testCase(MediaTypeTests.allTests),
  ]
}
#endif