public protocol HasValueOfLength: HasValueOfInherit, HasValueOfAuto, HasValueOfPercentage {}

extension BorderImageWidth: HasValueOfLength {}

extension Margin: HasValueOfLength {}
extension MarginBottom: HasValueOfLength {}
extension MarginLeft: HasValueOfLength {}
extension MarginRight: HasValueOfLength {}
extension MarginTop: HasValueOfLength {}

extension Padding: HasValueOfLength {}
extension PaddingBottom: HasValueOfLength {}
extension PaddingLeft: HasValueOfLength {}
extension PaddingRight: HasValueOfLength {}
extension PaddingTop: HasValueOfLength {}

extension TextIndent: HasValueOfLength {}
extension LetterSpacing: HasValueOfLength {}

extension Top: HasValueOfLength {}
extension Right: HasValueOfLength {}
extension Bottom: HasValueOfLength {}
extension Left: HasValueOfLength {}

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

extension BorderBottomLeftRadius: HasValueOfUnsignedLength {}
extension BorderBottomRightRadius: HasValueOfUnsignedLength {}
extension BorderBottomWidth: HasValueOfUnsignedLength {}
extension BorderImageOutset: HasValueOfUnsignedLength {}
extension BorderLeftWidth: HasValueOfUnsignedLength {}
extension BorderRadius: HasValueOfUnsignedLength {}
extension BorderRightWidth: HasValueOfUnsignedLength {}
extension BorderSpacing: HasValueOfUnsignedLength {}
extension BorderTopLeftRadius: HasValueOfUnsignedLength {}
extension BorderTopRightRadius: HasValueOfUnsignedLength {}
extension BorderTopWidth: HasValueOfUnsignedLength {}
extension BorderWidth: HasValueOfUnsignedLength {}

extension Height: HasValueOfUnsignedLength {}
extension MinHeight: HasValueOfUnsignedLength {}
extension MaxHeight: HasValueOfUnsignedLength {}
extension Width: HasValueOfUnsignedLength {}
extension MinWidth: HasValueOfUnsignedLength {}
extension MaxWidth: HasValueOfUnsignedLength {}

extension FlexBasis: HasValueOfUnsignedLength {}

extension FontSize: HasValueOfUnsignedLength {}

extension ColumnGap: HasValueOfUnsignedLength {}
extension ColumnRuleWidth: HasValueOfUnsignedLength {}
extension ColumnWidth: HasValueOfUnsignedLength {}

extension OutlineOffset: HasValueOfUnsignedLength {}
extension OutlineWidth: HasValueOfUnsignedLength {}

extension LineHeight: HasValueOfUnsignedLength {}

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