public enum Html4Size {
  case px(Int)
  case pct(Int)

  public var rawValue: String {
    switch self {
    case let .px(size):
      return "\(size)"
    case let .pct(size):
      return "\(size)%"
    }
  }
}

public enum Alignment: String {
  case left
  case right
  case center
  case justify
}

extension Tag {
  public func align(_ value: Alignment) -> Self {
    return push("align", value.rawValue)
  }

  public func border(_ value: Int) -> Self {
    return push("border", String(value))
  }

  public func height(_ value: Html4Size) -> Self {
    return push("height", value.rawValue)
  }
}

public enum VerticalAlignment: String {
  case top
  case middle
  case bottom
  case baseline
}

extension Tag {
  public func valign(_ value: VerticalAlignment) -> Self {
    return push("valign", value.rawValue)
  }

  public func width(_ value: Html4Size) -> Self {
    return push("width", value.rawValue)
  }
}

extension Table {
  public func cellpadding(_ value: Int) -> Self {
    return push("cellpadding", String(value))
  }

  public func cellspacing(_ value: Int) -> Self {
    return push("cellspacing", String(value))
  }
}