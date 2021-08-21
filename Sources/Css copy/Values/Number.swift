public protocol HasValueOfFloatLiteral {}

public protocol HasValueOfNumber {}//: HasValueOfFloatLiteral {}

extension Key.AnimationIterationCount: HasValueOfNumber {}

extension Key.BorderImageSlice: HasValueOfNumber {}

extension Key.BorderImageWidth: HasValueOfNumber {}

extension Property where Kind: HasValueOfNumber {
  public init(_ value: Double) {
    rawValue = prettyDescription(value)
    declarations = makeDeclarations(
      forValue: rawValue,
      withKey: Kind.key,
      onBrowsers: Kind.browsers
    )
  }
}

public protocol HasValueOfUnsignedNumber {}//: HasValueOfFloatLiteral {}

extension Key.BorderImageOutset: HasValueOfUnsignedNumber {}

extension Key.FontSizeAdjust: HasValueOfUnsignedNumber {}

extension Key.LineHeight: HasValueOfUnsignedNumber {}

extension Property: HasValueOfUnsignedNumber where Kind: HasValueOfUnsignedNumber {
  public init(_ value: Double) {
    rawValue = prettyDescription(abs(value))
    declarations = makeDeclarations(
      forValue: rawValue,
      withKey: Kind.key,
      onBrowsers: Kind.browsers
    )
  }
}

// extension Value: ExpressibleByFloatLiteral where Kind: HasValueOfFloatLiteral {
//   public init(floatLiteral value: Double) { rawValue = prettyDescription(value) }
//   public init(floatLiteral value: Double) where Kind: HasValueOfUnsignedNumber { rawValue = prettyDescription(abs(value)) }
// }
