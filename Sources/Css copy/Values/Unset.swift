public protocol HasValueOfUnset: CSSValue {}

extension Key.ClipPath: HasValueOfUnset {}

public extension Value where Kind: HasValueOfUnset {
  static var unset: Self { return "unset" }
}