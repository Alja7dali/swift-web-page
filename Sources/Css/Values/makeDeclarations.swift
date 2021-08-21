internal func makeDeclarations(
  forValue value: String,
  withKey key: StaticString,
  onBrowsers browsers: Array<StaticString>
) -> () -> Declarations {
  return {
    let key = String(describing: key)
    let value = value
    var declarations = Declarations()
    var browsersItr = browsers.makeIterator()
    while let browser = browsersItr.next() {
      declarations.append(Declaration("-\(browser)-\(key)", value))
    }
    declarations.append(Declaration(key, value))
    return declarations
  }
}

internal func makeEmptyDeclarations() -> () -> Declarations {
  return {
    return []
  }
}