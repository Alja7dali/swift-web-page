public protocol HasValueOfNone: CSSValue {}

extension AnimationFillMode: HasValueOfNone {}

extension BackgroundImage: HasValueOfNone {}

extension BorderImageSource: HasValueOfNone {}

extension Content: HasValueOfNone {}
extension Quotes: HasValueOfNone {}
extension CounterReset: HasValueOfNone {}
extension CounterIncrement: HasValueOfNone {}

extension ListStyleImage: HasValueOfNone {}

extension TextDecorationLine: HasValueOfNone {}

public extension Value where Kind: HasValueOfNone {
  static var none: Self { return "none" }
}