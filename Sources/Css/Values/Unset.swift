public protocol HasValueOfUnset: CSSValue {}

extension ClipPath: HasValueOfUnset {}

public extension Value where Kind: HasValueOfUnset {
  static var unset: Self { return "unset" }
}