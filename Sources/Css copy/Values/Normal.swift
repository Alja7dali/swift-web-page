public protocol HasValueOfNormal: CSSValue {}

extension Key.AnimationDirection: HasValueOfNormal {}

extension Key.BackgroundBlendMode: HasValueOfNormal {}

extension Key.FontKerning: HasValueOfNormal {}

extension Key.Content: HasValueOfNormal {}

extension Key.ColumnCount: HasValueOfNormal {}

extension Key.LineHeight: HasValueOfNormal {}
extension Key.LetterSpacing: HasValueOfNormal {}

public extension Value where Kind: HasValueOfNormal {
  static var normal: Self { return "normal" }
}