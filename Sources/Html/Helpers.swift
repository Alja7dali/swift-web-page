import Foundation

internal enum Escape: Int, Comparable, CaseIterable {
  case
    amp = 0,
    apos,
    quot,
    lt,
    gt

  // The string to replace.
  internal var target: String {
    switch self {
    case .apos: return "\'"
    case .quot: return "\""
    case .amp:  return "&"
    case .lt:   return "<"
    case .gt:   return ">"
    }
  }

  // The string with which to replace target.
  internal var replacement: String {
    switch self {
    case .apos: return "&apos;"
    case .quot: return "&quot;"
    case .amp:  return "&amp;"
    case .lt:   return "&lt;"
    case .gt:   return "&gt;"
    }
  }

  internal static func <(lhs: Escape, rhs: Escape) -> Bool {
    return lhs.rawValue < rhs.rawValue
  }
}

internal extension String {
  func escaped(_ escaping: Escape ...) -> String {
    // Sotring escape keys first, just to make sure avoiding escaping `&` twice..
    return (escaping.isEmpty ? Escape.allCases : escaping).sorted().reduce(into: self) {
      $0 = $0.replacingOccurrences(of: $1.target, with: $1.replacement)
    }
  }

  // func escaped() -> String {
  //   return replacingOccurrences(of: "\'", with: "&apos;")
  //     .replacingOccurrences(of: "\"", with: "&quot;")
  //     .replacingOccurrences(of: "&", with: "&amp;")
  //     .replacingOccurrences(of: "<", with: "&lt;")
  //     .replacingOccurrences(of: ">", with: "&gt;")
  // }
}