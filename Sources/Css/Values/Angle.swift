public protocol HasValueOfAngle: CSSValue {}

/// TODO: provide angle conversion e.g. `Angle.deg(45).makeRadian()`
///       e.g. 90deg = 100grad = 0.25turn ≈ 1.5708rad
public enum CSSAngle: HasValueOfAngle {}

public extension Value where Kind: HasValueOfAngle {
  static func deg(_ value: Double) -> Self {
    return .init("\(value)deg")
  }

  static func grad(_ value: Double) -> Self {
    return .init("\(value)grad")
  }

  static func rad(_ value: Double) -> Self {
    return .init("\(value)rad")
  }

  static func turn(_ value: Double) -> Self {
    return .init("\(value)turn")
  }
}