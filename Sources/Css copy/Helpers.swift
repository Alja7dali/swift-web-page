internal func clamp<T: Comparable>(_ range: ClosedRange<T>) -> (T) -> T {
  return { value in
    let min = range.lowerBound
    let max = range.upperBound
    return value < min ? min : (value > max ? max : value)
  }
}

internal let degree = clamp(0...359)

internal let fraction = clamp(0.0...1.0)

internal let percentage = clamp(0...100)

internal let uint8Size = clamp(0...255)

internal let hexSize = clamp(0...0xffffff)

internal let naturalNumber = clamp(1...Int.max)

internal func compact<T>(_ arr: Array<Optional<T>>) -> Array<T> {
  return arr.compactMap { $0 }
}

internal func prettyDescription(_ value: Double) -> String {
  let str = value.description
  return str.hasSuffix(".0") ? String(str.dropLast(2)) : str
}