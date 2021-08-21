public protocol CSSAxises: HasValueOfLength {}

/// Defines where the view is placed at the x-axis.
public enum CSSXAxis: CSSAxises {}

public extension Value where Kind == CSSXAxis {
  static let left: Self = "left"
  static let center: Self = "center"
  static let right: Self = "right"
}

/// Defines where the view is placed at the y-axis.
public enum CSSYAxis: CSSAxises {}

public extension Value where Kind == CSSYAxis {
  static let top: Self = "top"
  static let center: Self = "center"
  static let bottom: Self = "bottom"
}

/// Defines where the view is placed at the z-axis.
public enum CSSZAxis: CSSAxises {}