public protocol HasValueOfFraction: CSSValue {}

extension Key.Opacity: HasValueOfFraction {}

extension Property where Kind: HasValueOfFraction {
  public init(_ value: Double) {
    rawValue = fraction(abs(value)).description
    declarations = makeDeclarations(
      forValue: rawValue,
      withKey: Kind.key,
      onBrowsers: Kind.browsers
    )
  }
}