extension Property {
  @_disfavoredOverload
  public init(_ value: String) {
    self.init(
      value,
      makeDeclarations(
        forValue: value,
        withKey: Self.key,
        onBrowsers: Self.browsers
      )
    )
  }
}
