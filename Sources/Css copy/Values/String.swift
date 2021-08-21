extension Property {
  public init(_ value: String) {
    rawValue = value
    declarations = makeDeclarations(
      forValue: value,
      withKey: Kind.key,
      onBrowsers: Kind.browsers
    )
  }
}