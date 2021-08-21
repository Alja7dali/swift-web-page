postfix operator %

public protocol HasValueOfPercentage: CSSValue {}

extension BorderImageSlice: HasValueOfPercentage {}

public enum CSSPercentage: HasValueOfPercentage {}

public postfix func %<T>(_ value: Double) -> Value<T> where T: HasValueOfPercentage {
  return .init("\(prettyDescription(value))%")
}

public protocol HasValueOfUnsignedPercentage: CSSValue {}

public enum CSSUnsignedPercentage: HasValueOfUnsignedPercentage {}

public postfix func %<T>(_ value: Double) -> Value<T> where T: HasValueOfUnsignedPercentage {
  return .init("\(prettyDescription(abs(value)))%")
}
