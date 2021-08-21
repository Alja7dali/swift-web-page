public protocol HasValueOfInitial: CSSValue {}

extension Animation: HasValueOfInitial {}
extension AnimationDelay: HasValueOfInitial {}
extension AnimationDirection: HasValueOfInitial {}
extension AnimationDuration: HasValueOfInitial {}
extension AnimationFillMode: HasValueOfInitial {}
extension AnimationIterationCount: HasValueOfInitial {}
extension AnimationName: HasValueOfInitial {}
extension AnimationPlayState: HasValueOfInitial {}
extension AnimationTimingFunction: HasValueOfInitial {}

extension Background: HasValueOfInitial {}
extension BackgroundAttachment: HasValueOfInitial {}
extension BackgroundClip: HasValueOfInitial {}
extension BackgroundColor: HasValueOfInitial {}
extension BackgroundImage: HasValueOfInitial {}
extension BackgroundOrigin: HasValueOfInitial {}
extension BackgroundPosition: HasValueOfInitial {}
extension BackgroundRepeat: HasValueOfInitial {}
extension BackgroundSize: HasValueOfInitial {}

extension Border: HasValueOfInitial {}
extension BorderBottom: HasValueOfInitial {}
extension BorderBottomColor: HasValueOfInitial {}
extension BorderBottomLeftRadius: HasValueOfInitial {}
extension BorderBottomRightRadius: HasValueOfInitial {}
extension BorderBottomStyle: HasValueOfInitial {}
extension BorderBottomWidth: HasValueOfInitial {}
extension BorderCollapse: HasValueOfInitial {}
extension BorderColor: HasValueOfInitial {}
extension BorderImage: HasValueOfInitial {}
extension BorderImageOutset: HasValueOfInitial {}
extension BorderImageRepeat: HasValueOfInitial {}
extension BorderImageSlice: HasValueOfInitial {}
extension BorderImageSource: HasValueOfInitial {}
extension BorderImageWidth: HasValueOfInitial {}
extension BorderLeft: HasValueOfInitial {}
extension BorderLeftColor: HasValueOfInitial {}
extension BorderLeftStyle: HasValueOfInitial {}
extension BorderLeftWidth: HasValueOfInitial {}
extension BorderRadius: HasValueOfInitial {}
extension BorderRight: HasValueOfInitial {}
extension BorderRightColor: HasValueOfInitial {}
extension BorderRightStyle: HasValueOfInitial {}
extension BorderRightWidth: HasValueOfInitial {}
extension BorderSpacing: HasValueOfInitial {}
extension BorderStyle: HasValueOfInitial {}
extension BorderTop: HasValueOfInitial {}
extension BorderTopColor: HasValueOfInitial {}
extension BorderTopLeftRadius: HasValueOfInitial {}
extension BorderTopRightRadius: HasValueOfInitial {}
extension BorderTopStyle: HasValueOfInitial {}
extension BorderTopWidth: HasValueOfInitial {}
extension BorderWidth: HasValueOfInitial {}

extension Color: HasValueOfInitial {}
extension Opacity: HasValueOfInitial {}

extension Height: HasValueOfInitial {}
extension MinHeight: HasValueOfInitial {}
extension MaxHeight: HasValueOfInitial {}
extension Width: HasValueOfInitial {}
extension MinWidth: HasValueOfInitial {}
extension MaxWidth: HasValueOfInitial {}

extension AlignContent: HasValueOfInitial {}
extension AlignItems: HasValueOfInitial {}
extension AlignSelf: HasValueOfInitial {}
extension Flex: HasValueOfInitial {}
extension FlexBasis: HasValueOfInitial {}
extension FlexDirection: HasValueOfInitial {}
extension FlexFlow: HasValueOfInitial {}
extension FlexGrow: HasValueOfInitial {}
extension FlexShrink: HasValueOfInitial {}
extension FlexWrap: HasValueOfInitial {}
extension JustifyContent: HasValueOfInitial {}
extension Order: HasValueOfInitial {}

extension Font: HasValueOfInitial {}
extension FontFamily: HasValueOfInitial {}
extension FontKerning: HasValueOfInitial {}
extension FontSize: HasValueOfInitial {}
extension FontSizeAdjust: HasValueOfInitial {}
extension FontStretch: HasValueOfInitial {}
extension FontStyle: HasValueOfInitial {}
extension FontVariant: HasValueOfInitial {}
extension FontVariantCaps: HasValueOfInitial {}
extension FontWeight: HasValueOfInitial {}

extension Content: HasValueOfInitial {}
extension Quotes: HasValueOfInitial {}
extension CounterReset: HasValueOfInitial {}
extension CounterIncrement: HasValueOfInitial {}

extension ListStyle: HasValueOfInitial {}
extension ListStyleType: HasValueOfInitial {}
extension ListStylePosition: HasValueOfInitial {}
extension ListStyleImage: HasValueOfInitial {}

extension Margin: HasValueOfInitial {}
extension MarginBottom: HasValueOfInitial {}
extension MarginLeft: HasValueOfInitial {}
extension MarginRight: HasValueOfInitial {}
extension MarginTop: HasValueOfInitial {}

extension ColumnCount: HasValueOfInitial {}
extension ColumnFill: HasValueOfInitial {}
extension ColumnGap: HasValueOfInitial {}
extension ColumnRule: HasValueOfInitial {}
extension ColumnRuleColor: HasValueOfInitial {}
extension ColumnRuleStyle: HasValueOfInitial {}
extension ColumnRuleWidth: HasValueOfInitial {}
extension ColumnSpan: HasValueOfInitial {}
extension ColumnWidth: HasValueOfInitial {}
extension Columns: HasValueOfInitial {}

extension Outline: HasValueOfInitial {}
extension OutlineColor: HasValueOfInitial {}
extension OutlineOffset: HasValueOfInitial {}
extension OutlineStyle: HasValueOfInitial {}
extension OutlineWidth: HasValueOfInitial {}

extension Padding: HasValueOfInitial {}
extension PaddingBottom: HasValueOfInitial {}
extension PaddingLeft: HasValueOfInitial {}
extension PaddingRight: HasValueOfInitial {}
extension PaddingTop: HasValueOfInitial {}

extension BreakAfter: HasValueOfInitial {}
extension BreakBefore: HasValueOfInitial {}
extension BreakInside: HasValueOfInitial {}

extension TextAlign: HasValueOfInitial {}
extension TextAlignLast: HasValueOfInitial {}
extension TextDecoration: HasValueOfInitial {}
extension TextDecorationColor: HasValueOfInitial {}
extension TextDecorationLine: HasValueOfInitial {}
extension TextDecorationStyle: HasValueOfInitial {}
extension TextIndent: HasValueOfInitial {}
extension TextJustify: HasValueOfInitial {}
extension TextOverflow: HasValueOfInitial {}
extension TextShadow: HasValueOfInitial {}
extension TextTransform: HasValueOfInitial {}
extension LineHeight: HasValueOfInitial {}
extension LetterSpacing: HasValueOfInitial {}

extension BackfaceVisibility: HasValueOfInitial {}
extension Transform: HasValueOfInitial {}
extension TransformOrigin: HasValueOfInitial {}
extension TransformStyle: HasValueOfInitial {}

extension Transition: HasValueOfInitial {}
extension TransitionDelay: HasValueOfInitial {}
extension TransitionDuration: HasValueOfInitial {}
extension TransitionProperty: HasValueOfInitial {}
extension TransitionTimingFunction: HasValueOfInitial {}

extension Display: HasValueOfInitial {}
extension Position: HasValueOfInitial {}
extension Top: HasValueOfInitial {}
extension Right: HasValueOfInitial {}
extension Bottom: HasValueOfInitial {}
extension Left: HasValueOfInitial {}
extension Float: HasValueOfInitial {}
extension Clear: HasValueOfInitial {}
extension ZIndex: HasValueOfInitial {}
extension Overflow: HasValueOfInitial {}
extension OverflowX: HasValueOfInitial {}
extension OverflowY: HasValueOfInitial {}
extension ClipPath: HasValueOfInitial {}
extension Visibility: HasValueOfInitial {}
extension BoxDecorationBreak: HasValueOfInitial {}
extension BoxShadow: HasValueOfInitial {}
extension BoxSizing: HasValueOfInitial {}
extension CaretColor: HasValueOfInitial {}
extension Cursor: HasValueOfInitial {}

public extension Value where Kind: HasValueOfInitial {
  static var initial: Self { return "initial" }
}