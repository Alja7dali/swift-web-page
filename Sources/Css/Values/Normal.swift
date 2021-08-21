public protocol HasValueOfNormal: CSSValue {}

extension AnimationDirection: HasValueOfNormal {}

extension BackgroundBlendMode: HasValueOfNormal {}

extension FontKerning: HasValueOfNormal {}

extension Content: HasValueOfNormal {}

extension ColumnCount: HasValueOfNormal {}

extension LineHeight: HasValueOfNormal {}
extension LetterSpacing: HasValueOfNormal {}

public extension Value where Kind: HasValueOfNormal {
  static var normal: Self { return "normal" }
}