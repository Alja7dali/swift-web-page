public protocol HasValueOfDuration: CSSValue {}

extension AnimationDelay: HasValueOfDuration {}
extension AnimationDuration: HasValueOfDuration {}

extension TransitionDelay: HasValueOfDuration {}
extension TransitionDuration: HasValueOfDuration {}

public enum CSSDuration: HasValueOfDuration {}

public extension Value where Kind: HasValueOfDuration {
  static func s(_ value: Int) -> Self { return .init("\(value)s") }

  static func ms(_ value: Int) -> Self { return .init("\(value)ms") }
}