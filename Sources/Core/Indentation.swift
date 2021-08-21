/// A representation of a kind of indentation at a given level.
public struct Indentation {
  /// The kind of the indentation (see `Kind`).
  public let kind: Kind
  /// The level of the indentation (0 = root).
  public let level: Int

  /// Initialize an instance for a given kind of indentation.
  private init(_ kind: Kind) {
    self.kind = kind
    self.level = 0
  }

  private init(_ kind: Kind, _ level: Int) {
    self.kind = kind
    self.level = level
  }

  public static func tabs(_ count: Int) -> Indentation {
    return Indentation(.tabs(count), 0)
  }

  public static func spaces(_ count: Int) -> Indentation {
    return Indentation(.spaces(count), 0)
  }

  public func indented(by levels: Int = 1) -> Indentation {
    return Indentation(kind, level + levels)
  }
}

extension Indentation {
  /// Enum defining various kinds of indentation that a document
  /// can be rendered using.
  public enum Kind: Equatable {
    /// Each level should be indented by a given number of tabs.
    case tabs(Int)
    /// Each level should be indented by a given number of spaces.
    case spaces(Int)

    public var rawValue: String {
      switch self {
      case .tabs:   return "\t"
      case .spaces: return " "
      }
    }
  }

  public var indentation: String {
    return String(repeating: kind.rawValue, count: count * level)
  }

  private var count: Int {
    switch kind {
    case .tabs(let count): return count
    case .spaces(let count): return count
    }
  }
}

extension Indentation: Equatable {
  public static func ==(lhs: Indentation, rhs: Indentation) -> Bool {
    return lhs.kind == rhs.kind && lhs.level == rhs.level
  }
}