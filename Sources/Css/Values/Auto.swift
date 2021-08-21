public protocol HasValueOfAuto: CSSValue {}

extension BackgroundSize: HasValueOfAuto {}

extension BorderBottomLeftRadius: HasValueOfAuto {}
extension BorderBottomRightRadius: HasValueOfAuto {}
extension BorderBottomWidth: HasValueOfAuto {}
extension BorderImageOutset: HasValueOfAuto {}
extension BorderImageWidth: HasValueOfAuto {}
extension BorderLeftWidth: HasValueOfAuto {}
extension BorderRadius: HasValueOfAuto {}
extension BorderRightWidth: HasValueOfAuto {}
extension BorderSpacing: HasValueOfAuto {}
extension BorderTopLeftRadius: HasValueOfAuto {}
extension BorderTopRightRadius: HasValueOfAuto {}
extension BorderTopWidth: HasValueOfAuto {}
extension BorderWidth: HasValueOfAuto {}

extension Height: HasValueOfAuto {}
extension MinHeight: HasValueOfAuto {}
extension MaxHeight: HasValueOfAuto {}
extension Width: HasValueOfAuto {}
extension MinWidth: HasValueOfAuto {}
extension MaxWidth: HasValueOfAuto {}

extension AlignSelf: HasValueOfAuto {}
extension FlexBasis: HasValueOfAuto {}

extension FontKerning: HasValueOfAuto {}
extension FontSize: HasValueOfAuto {}

extension Margin: HasValueOfAuto {}
extension MarginBottom: HasValueOfAuto {}
extension MarginLeft: HasValueOfAuto {}
extension MarginRight: HasValueOfAuto {}
extension MarginTop: HasValueOfAuto {}

extension ColumnCount: HasValueOfAuto {}
extension ColumnFill: HasValueOfAuto {}
extension ColumnGap: HasValueOfAuto {}
extension ColumnRuleWidth: HasValueOfAuto {}
extension ColumnWidth: HasValueOfAuto {}

extension OutlineOffset: HasValueOfAuto {}
extension OutlineWidth: HasValueOfAuto {}

extension Padding: HasValueOfAuto {}
extension PaddingBottom: HasValueOfAuto {}
extension PaddingLeft: HasValueOfAuto {}
extension PaddingRight: HasValueOfAuto {}
extension PaddingTop: HasValueOfAuto {}

extension BreakAfter: HasValueOfAuto {}
extension BreakBefore: HasValueOfAuto {}
extension BreakInside: HasValueOfAuto {}

extension TextAlignLast: HasValueOfAuto {}
extension TextIndent: HasValueOfAuto {}
extension TextJustify: HasValueOfAuto {}

extension LineHeight: HasValueOfAuto {}
extension LetterSpacing: HasValueOfAuto {}

extension Top: HasValueOfAuto {}
extension Right: HasValueOfAuto {}
extension Bottom: HasValueOfAuto {}
extension Left: HasValueOfAuto {}

extension ZIndex: HasValueOfAuto {}

public extension Value where Kind: HasValueOfAuto {
  static var auto: Self { return "auto" }
}