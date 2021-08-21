public protocol HasValueOfAuto: CSSValue {}

extension Key.BackgroundSize: HasValueOfAuto {}

extension Key.BorderBottomLeftRadius: HasValueOfAuto {}
extension Key.BorderBottomRightRadius: HasValueOfAuto {}
extension Key.BorderBottomWidth: HasValueOfAuto {}
extension Key.BorderImageOutset: HasValueOfAuto {}
extension Key.BorderImageWidth: HasValueOfAuto {}
extension Key.BorderLeftWidth: HasValueOfAuto {}
extension Key.BorderRadius: HasValueOfAuto {}
extension Key.BorderRightWidth: HasValueOfAuto {}
extension Key.BorderSpacing: HasValueOfAuto {}
extension Key.BorderTopLeftRadius: HasValueOfAuto {}
extension Key.BorderTopRightRadius: HasValueOfAuto {}
extension Key.BorderTopWidth: HasValueOfAuto {}
extension Key.BorderWidth: HasValueOfAuto {}

extension Key.Height: HasValueOfAuto {}
extension Key.MinHeight: HasValueOfAuto {}
extension Key.MaxHeight: HasValueOfAuto {}
extension Key.Width: HasValueOfAuto {}
extension Key.MinWidth: HasValueOfAuto {}
extension Key.MaxWidth: HasValueOfAuto {}

extension Key.AlignSelf: HasValueOfAuto {}
extension Key.FlexBasis: HasValueOfAuto {}

extension Key.FontKerning: HasValueOfAuto {}
extension Key.FontSize: HasValueOfAuto {}

extension Key.Margin: HasValueOfAuto {}
extension Key.MarginBottom: HasValueOfAuto {}
extension Key.MarginLeft: HasValueOfAuto {}
extension Key.MarginRight: HasValueOfAuto {}
extension Key.MarginTop: HasValueOfAuto {}

extension Key.ColumnCount: HasValueOfAuto {}
extension Key.ColumnFill: HasValueOfAuto {}
extension Key.ColumnGap: HasValueOfAuto {}
extension Key.ColumnRuleWidth: HasValueOfAuto {}
extension Key.ColumnWidth: HasValueOfAuto {}

extension Key.OutlineOffset: HasValueOfAuto {}
extension Key.OutlineWidth: HasValueOfAuto {}

extension Key.Padding: HasValueOfAuto {}
extension Key.PaddingBottom: HasValueOfAuto {}
extension Key.PaddingLeft: HasValueOfAuto {}
extension Key.PaddingRight: HasValueOfAuto {}
extension Key.PaddingTop: HasValueOfAuto {}

extension Key.BreakAfter: HasValueOfAuto {}
extension Key.BreakBefore: HasValueOfAuto {}
extension Key.BreakInside: HasValueOfAuto {}

extension Key.TextAlignLast: HasValueOfAuto {}
extension Key.TextIndent: HasValueOfAuto {}
extension Key.TextJustify: HasValueOfAuto {}

extension Key.LineHeight: HasValueOfAuto {}
extension Key.LetterSpacing: HasValueOfAuto {}

extension Key.Top: HasValueOfAuto {}
extension Key.Right: HasValueOfAuto {}
extension Key.Bottom: HasValueOfAuto {}
extension Key.Left: HasValueOfAuto {}

extension Key.ZIndex: HasValueOfAuto {}

public extension Value where Kind: HasValueOfAuto {
  static var auto: Self { return "auto" }
}