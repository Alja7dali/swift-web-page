public protocol HasValueOfIntegerLiteral {}

public protocol HasValueOfInteger {}//: HasValueOfIntegerLiteral {}

extension Key.ZIndex: HasValueOfInteger {}

extension Property where Kind: HasValueOfInteger {
  public init(_ value: Int) {
    rawValue = value.description
    declarations = makeDeclarations(
      forValue: value.description,
      withKey: Kind.key,
      onBrowsers: Kind.browsers
    )
  }
}


public protocol HasValueOfUnsignedInteger {}//: HasValueOfIntegerLiteral {}

extension Key.FlexGrow: HasValueOfUnsignedInteger {}
extension Key.FlexShrink: HasValueOfUnsignedInteger {}

extension Key.Order: HasValueOfUnsignedInteger {}

extension Key.FontWeight: HasValueOfUnsignedInteger {}

extension Key.ColumnCount: HasValueOfUnsignedInteger {}

extension Property: HasValueOfUnsignedInteger where Kind: HasValueOfUnsignedInteger {
  public init(_ value: UInt) {
    rawValue = value.description
    declarations = makeDeclarations(
      forValue: value.description,
      withKey: Kind.key,
      onBrowsers: Kind.browsers
    )
  }
}

// extension Value: ExpressibleByIntegerLiteral where Kind: HasValueOfIntegerLiteral {
//   public init(integerLiteral value: Int) { rawValue = value.description }
//   public init(integerLiteral value: Int) where Kind: HasValueOfUnsignedInteger { rawValue = abs(value).description }
// }
