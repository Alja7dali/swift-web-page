public protocol HasValueOfDuration: CSSValue {}

extension Key.AnimationDelay: HasValueOfDuration {}
extension Key.AnimationDuration: HasValueOfDuration {}

extension Key.TransitionDelay: HasValueOfDuration {}
extension Key.TransitionDuration: HasValueOfDuration {}

public enum CSSDuration: HasValueOfDuration {}

public extension Value where Kind: HasValueOfDuration {
  static func s(_ value: Int) -> Self { return .init("\(value)s") }

  static func ms(_ value: Int) -> Self { return .init("\(value)ms") }
}