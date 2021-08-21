public protocol HasValueOfWidth {}

extension Key.BorderBottomWidth: HasValueOfWidth {}
extension Key.BorderWidth: HasValueOfWidth {}
extension Key.BorderLeftWidth: HasValueOfWidth {}
extension Key.BorderRightWidth: HasValueOfWidth {}
extension Key.BorderTopWidth: HasValueOfWidth {}

extension Property where Kind: HasValueOfWidth {
  public init(_ value: Value<Key.BorderWidth>) {
    self.init(value.rawValue)
  }
}

public protocol HasValueOfStyle {}

extension Key.BorderBottomStyle: HasValueOfStyle {}
extension Key.BorderStyle: HasValueOfStyle {}
extension Key.BorderLeftStyle: HasValueOfStyle {}
extension Key.BorderRightStyle: HasValueOfStyle {}
extension Key.BorderTopStyle: HasValueOfStyle {}

extension Property where Kind: HasValueOfStyle {
  public init(_ value: Value<Key.BorderStyle>) {
    self.init(value.rawValue)
  }
}