public protocol HasValueOfLength: HasValueOfInherit, HasValueOfAuto, HasValueOfPercentage {}

extension Key.BorderImageWidth: HasValueOfLength {}

extension Key.Margin: HasValueOfLength {}
extension Key.MarginBottom: HasValueOfLength {}
extension Key.MarginLeft: HasValueOfLength {}
extension Key.MarginRight: HasValueOfLength {}
extension Key.MarginTop: HasValueOfLength {}

extension Key.Padding: HasValueOfLength {}
extension Key.PaddingBottom: HasValueOfLength {}
extension Key.PaddingLeft: HasValueOfLength {}
extension Key.PaddingRight: HasValueOfLength {}
extension Key.PaddingTop: HasValueOfLength {}

extension Key.TextIndent: HasValueOfLength {}
extension Key.LetterSpacing: HasValueOfLength {}

extension Key.Top: HasValueOfLength {}
extension Key.Right: HasValueOfLength {}
extension Key.Bottom: HasValueOfLength {}
extension Key.Left: HasValueOfLength {}

public enum CSSLength: HasValueOfLength {}

public extension Value where Kind: HasValueOfLength {
  /// MARK: - AbsoluteLength
  static func cm(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))cm")
  }
  static func mm(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))mm")
  }
  static func `in`(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))in")
  }
  static func px(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))px")
  }
  static func pt(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))pt")
  }
  static func pc(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))pc")
  }

  /// MARK: - RelativeLength
  static func em(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))em")
  }
  static func ex(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))ex")
  }
  static func ch(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))ch")
  }
  static func rem(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))rem")
  }
  static func vw(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))vw")
  }
  static func vh(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))vh")
  }
  static func vmin(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))vmin")
  }
  static func vmax(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))vmax")
  }
  static func pct(_ value: Double) -> Self {
    return .init("\(prettyDescription(value))%")
  }
}

public protocol HasValueOfUnsignedLength: HasValueOfInherit, HasValueOfAuto, HasValueOfUnsignedPercentage {}

extension Key.BorderBottomLeftRadius: HasValueOfUnsignedLength {}
extension Key.BorderBottomRightRadius: HasValueOfUnsignedLength {}
extension Key.BorderBottomWidth: HasValueOfUnsignedLength {}
extension Key.BorderImageOutset: HasValueOfUnsignedLength {}
extension Key.BorderLeftWidth: HasValueOfUnsignedLength {}
extension Key.BorderRadius: HasValueOfUnsignedLength {}
extension Key.BorderRightWidth: HasValueOfUnsignedLength {}
extension Key.BorderSpacing: HasValueOfUnsignedLength {}
extension Key.BorderTopLeftRadius: HasValueOfUnsignedLength {}
extension Key.BorderTopRightRadius: HasValueOfUnsignedLength {}
extension Key.BorderTopWidth: HasValueOfUnsignedLength {}
extension Key.BorderWidth: HasValueOfUnsignedLength {}

extension Key.Height: HasValueOfUnsignedLength {}
extension Key.MinHeight: HasValueOfUnsignedLength {}
extension Key.MaxHeight: HasValueOfUnsignedLength {}
extension Key.Width: HasValueOfUnsignedLength {}
extension Key.MinWidth: HasValueOfUnsignedLength {}
extension Key.MaxWidth: HasValueOfUnsignedLength {}

extension Key.FlexBasis: HasValueOfUnsignedLength {}

extension Key.FontSize: HasValueOfUnsignedLength {}

extension Key.ColumnGap: HasValueOfUnsignedLength {}
extension Key.ColumnRuleWidth: HasValueOfUnsignedLength {}
extension Key.ColumnWidth: HasValueOfUnsignedLength {}

extension Key.OutlineOffset: HasValueOfUnsignedLength {}
extension Key.OutlineWidth: HasValueOfUnsignedLength {}

extension Key.LineHeight: HasValueOfUnsignedLength {}

public enum CSSUnsignedLength: HasValueOfUnsignedLength {}

public extension Value where Kind: HasValueOfUnsignedLength {
  /// MARK: - AbsoluteLength
  static func cm(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))cm")
  }
  static func mm(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))mm")
  }
  static func `in`(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))in")
  }
  static func px(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))px")
  }
  static func pt(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))pt")
  }
  static func pc(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))pc")
  }

  /// MARK: - RelativeLength
  static func em(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))em")
  }
  static func ex(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))ex")
  }
  static func ch(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))ch")
  }
  static func rem(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))rem")
  }
  static func vw(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))vw")
  }
  static func vh(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))vh")
  }
  static func vmin(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))vmin")
  }
  static func vmax(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))vmax")
  }
  static func pct(_ value: Double) -> Self {
    return .init("\(prettyDescription(abs(value)))%")
  }
}