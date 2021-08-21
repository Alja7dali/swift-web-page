public enum RenderMode {
  case
    release(RenderStyle),
    debug(RenderStyle)
  
  public static let `default`: RenderMode = .release(.inline)
}

public extension RenderMode {
  var isRelease: Bool {
    if case .release = self {
      return true
    } else {
      return false
    }
  }

  func indented() -> RenderMode {
    switch self {
    case let .release(.pretty(indentBy)):
      return .release(.pretty(indentBy.indented()))
    case let .debug(.pretty(indentBy)):
      return .debug(.pretty(indentBy.indented()))
    default: return self
    }
  }
}