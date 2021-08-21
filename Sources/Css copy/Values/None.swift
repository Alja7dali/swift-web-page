public protocol HasValueOfNone: CSSValue {}

extension Key.AnimationFillMode: HasValueOfNone {}

extension Key.BorderImageSource: HasValueOfNone {}

extension Key.Content: HasValueOfNone {}
extension Key.Quotes: HasValueOfNone {}
extension Key.CounterReset: HasValueOfNone {}
extension Key.CounterIncrement: HasValueOfNone {}

extension Key.ListStyleImage: HasValueOfNone {}

extension Key.TextDecorationLine: HasValueOfNone {}

public extension Value where Kind: HasValueOfNone {
  static var none: Self { return "none" }
}