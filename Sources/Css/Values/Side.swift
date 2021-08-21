public enum CSSSide: CSSValue {}

public extension Value where Kind == CSSSide {
  static let top: Self = "top"
  static let right: Self = "right"
  static let bottom: Self = "bottom"
  static let left: Self = "left"
  static let center: Self = "center"
}