public protocol HasValueOfFraction: CSSValue {}

extension Opacity: HasValueOfFraction {}

extension Property where Self: HasValueOfFraction {
  public init(_ value: Double) {
    let val = fraction(abs(value)).description
    self.init(
      val,
      makeDeclarations(
        forValue: val,
        withKey: Self.key,
        onBrowsers: Self.browsers
      )
    )
  }
}