extension Animation: CssPropertyKey {
  public static var key: StaticString { return "animation" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationDelay: CssPropertyKey {
  public static var key: StaticString { return "animation-delay" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationDirection: CssPropertyKey {
  public static var key: StaticString { return "animation-direction" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationDuration: CssPropertyKey {
  public static var key: StaticString { return "animation-duration" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationFillMode: CssPropertyKey {
  public static var key: StaticString { return "animation-fill-mode" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationIterationCount: CssPropertyKey {
  public static var key: StaticString { return "animation-iteration-count" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationName: CssPropertyKey {
  public static var key: StaticString { return "animation-name" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationPlayState: CssPropertyKey {
  public static var key: StaticString { return "animation-play-state" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension AnimationTimingFunction: CssPropertyKey {
  public static var key: StaticString { return "animation-timing-function" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}

extension Background: CssPropertyKey {
  public static var key: StaticString { return "background" }
}
extension BackgroundAttachment: CssPropertyKey {
  public static var key: StaticString { return "background-attachment" }
}
extension BackgroundBlendMode: CssPropertyKey {
  public static var key: StaticString { return "background-blend-mode" }
}
extension BackgroundClip: CssPropertyKey {
  public static var key: StaticString { return "background-clip" }
}
extension BackgroundColor: CssPropertyKey {
  public static var key: StaticString { return "background-color" }
}
extension BackgroundImage: CssPropertyKey {
  public static var key: StaticString { return "background-image" }
}
extension BackgroundOrigin: CssPropertyKey {
  public static var key: StaticString { return "background-origin" }
}
extension BackgroundPosition: CssPropertyKey {
  public static var key: StaticString { return "background-position" }
}
extension BackgroundRepeat: CssPropertyKey {
  public static var key: StaticString { return "background-repeat" }
}
extension BackgroundSize: CssPropertyKey {
  public static var key: StaticString { return "background-size" }
}

extension Border: CssPropertyKey {
  public static var key: StaticString { return "border" }
}
extension BorderBottom: CssPropertyKey {
  public static var key: StaticString { return "border-bottom" }
}
extension BorderBottomColor: CssPropertyKey {
  public static var key: StaticString { return "border-bottom-color" }
}
extension BorderBottomLeftRadius: CssPropertyKey {
  public static var key: StaticString { return "border-bottom-left-radius" }
}
extension BorderBottomRightRadius: CssPropertyKey {
  public static var key: StaticString { return "border-bottom-right-radius" }
}
extension BorderBottomStyle: CssPropertyKey {
  public static var key: StaticString { return "border-bottom-style" }
}
extension BorderBottomWidth: CssPropertyKey {
  public static var key: StaticString { return "border-bottom-width" }
}
extension BorderCollapse: CssPropertyKey {
  public static var key: StaticString { return "border-collapse" }
}
extension BorderColor: CssPropertyKey {
  public static var key: StaticString { return "border-color" }
}
extension BorderImage: CssPropertyKey {
  public static var key: StaticString { return "border-image" }
}
extension BorderImageOutset: CssPropertyKey {
  public static var key: StaticString { return "border-image-outset" }
}
extension BorderImageRepeat: CssPropertyKey {
  public static var key: StaticString { return "border-image-repeat" }
}
extension BorderImageSlice: CssPropertyKey {
  public static var key: StaticString { return "border-image-slice" }
}
extension BorderImageSource: CssPropertyKey {
  public static var key: StaticString { return "border-image-source" }
}
extension BorderImageWidth: CssPropertyKey {
  public static var key: StaticString { return "border-image-width" }
}
extension BorderLeft: CssPropertyKey {
  public static var key: StaticString { return "border-left" }
}
extension BorderLeftColor: CssPropertyKey {
  public static var key: StaticString { return "border-left-color" }
}
extension BorderLeftStyle: CssPropertyKey {
  public static var key: StaticString { return "border-left-style" }
}
extension BorderLeftWidth: CssPropertyKey {
  public static var key: StaticString { return "border-left-width" }
}
extension BorderRadius: CssPropertyKey {
  public static var key: StaticString { return "border-radius" }
}
extension BorderRight: CssPropertyKey {
  public static var key: StaticString { return "border-right" }
}
extension BorderRightColor: CssPropertyKey {
  public static var key: StaticString { return "border-right-color" }
}
extension BorderRightStyle: CssPropertyKey {
  public static var key: StaticString { return "border-right-style" }
}
extension BorderRightWidth: CssPropertyKey {
  public static var key: StaticString { return "border-right-width" }
}
extension BorderSpacing: CssPropertyKey {
  public static var key: StaticString { return "border-spacing" }
}
extension BorderStyle: CssPropertyKey {
  public static var key: StaticString { return "border-style" }
}
extension BorderTop: CssPropertyKey {
  public static var key: StaticString { return "border-top" }
}
extension BorderTopColor: CssPropertyKey {
  public static var key: StaticString { return "border-top-color" }
}
extension BorderTopLeftRadius: CssPropertyKey {
  public static var key: StaticString { return "border-top-left-radius" }
}
extension BorderTopRightRadius: CssPropertyKey {
  public static var key: StaticString { return "border-top-right-radius" }
}
extension BorderTopStyle: CssPropertyKey {
  public static var key: StaticString { return "border-top-style" }
}
extension BorderTopWidth: CssPropertyKey {
  public static var key: StaticString { return "border-top-width" }
}
extension BorderWidth: CssPropertyKey {
  public static var key: StaticString { return "border-width" }
}

extension Color: CssPropertyKey {
  public static var key: StaticString { return "color" }
}
extension Opacity: CssPropertyKey {
  public static var key: StaticString { return "opacity" }
}

extension Height: CssPropertyKey {
  public static var key: StaticString { return "height" }
}
extension MinHeight: CssPropertyKey {
  public static var key: StaticString { return "min-height" }
}
extension MaxHeight: CssPropertyKey {
  public static var key: StaticString { return "max-height" }
}
extension Width: CssPropertyKey {
  public static var key: StaticString { return "width" }
}
extension MinWidth: CssPropertyKey {
  public static var key: StaticString { return "min-width" }
}
extension MaxWidth: CssPropertyKey {
  public static var key: StaticString { return "max-width" }
}

extension AlignContent: CssPropertyKey {
  public static var key: StaticString { return "align-content" }
  public static var browsers: Array<StaticString> { return ["webkit"] }
}
extension AlignItems: CssPropertyKey {
  public static var key: StaticString { return "align-items" }
  public static var browsers: Array<StaticString> { return ["webkit"] }
}
extension AlignSelf: CssPropertyKey {
  public static var key: StaticString { return "align-self" }
  public static var browsers: Array<StaticString> { return ["webkit"] }
}
extension Flex: CssPropertyKey {
  public static var key: StaticString { return "flex" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FlexBasis: CssPropertyKey {
  public static var key: StaticString { return "flex-basis" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FlexDirection: CssPropertyKey {
  public static var key: StaticString { return "flex-direction" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FlexFlow: CssPropertyKey {
  public static var key: StaticString { return "flex-flow" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FlexGrow: CssPropertyKey {
  public static var key: StaticString { return "flex-grow" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FlexShrink: CssPropertyKey {
  public static var key: StaticString { return "flex-shrink" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FlexWrap: CssPropertyKey {
  public static var key: StaticString { return "flex-wrap" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension JustifyContent: CssPropertyKey {
  public static var key: StaticString { return "justify-content" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension Order: CssPropertyKey {
  public static var key: StaticString { return "order" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}

extension Font: CssPropertyKey {
  public static var key: StaticString { return "font" }
}
extension FontFamily: CssPropertyKey {
  public static var key: StaticString { return "font-family" }
}
extension FontFeatureSettings: CssPropertyKey {
  public static var key: StaticString { return "font-feature-settings" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension FontKerning: CssPropertyKey {
  public static var key: StaticString { return "font-kerning" }
  public static var browsers: Array<StaticString> { return ["webkit"] }
}
extension FontSize: CssPropertyKey {
  public static var key: StaticString { return "font-size" }
}
extension FontSizeAdjust: CssPropertyKey {
  public static var key: StaticString { return "font-size-adjust" }
}
extension FontStretch: CssPropertyKey {
  public static var key: StaticString { return "font-stretch" }
}
extension FontStyle: CssPropertyKey {
  public static var key: StaticString { return "font-style" }
}
extension FontVariant: CssPropertyKey {
  public static var key: StaticString { return "font-variant" }
}
extension FontVariantCaps: CssPropertyKey {
  public static var key: StaticString { return "font-variant-caps" }
}
extension FontWeight: CssPropertyKey {
  public static var key: StaticString { return "font-weight" }
}

extension Content: CssPropertyKey {
  public static var key: StaticString { return "content" }
}
extension Quotes: CssPropertyKey {
  public static var key: StaticString { return "quotes" }
}
extension CounterReset: CssPropertyKey {
  public static var key: StaticString { return "counter-reset" }
}
extension CounterIncrement: CssPropertyKey {
  public static var key: StaticString { return "counter-increment" }
}

extension ListStyle: CssPropertyKey {
  public static var key: StaticString { return "list-style" }
}
extension ListStyleType: CssPropertyKey {
  public static var key: StaticString { return "list-style-type" }
}
extension ListStylePosition: CssPropertyKey {
  public static var key: StaticString { return "list-style-position" }
}
extension ListStyleImage: CssPropertyKey {
  public static var key: StaticString { return "list-style-image" }
}

extension Margin: CssPropertyKey {
  public static var key: StaticString { return "margin" }
}
extension MarginBottom: CssPropertyKey {
  public static var key: StaticString { return "margin-bottom" }
}
extension MarginLeft: CssPropertyKey {
  public static var key: StaticString { return "margin-left" }
}
extension MarginRight: CssPropertyKey {
  public static var key: StaticString { return "margin-right" }
}
extension MarginTop: CssPropertyKey {
  public static var key: StaticString { return "margin-top" }
}

extension ColumnCount: CssPropertyKey {
  public static var key: StaticString { return "column-count" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnFill: CssPropertyKey {
  public static var key: StaticString { return "column-fill" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnGap: CssPropertyKey {
  public static var key: StaticString { return "column-gap" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnRule: CssPropertyKey {
  public static var key: StaticString { return "column-rule" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnRuleColor: CssPropertyKey {
  public static var key: StaticString { return "column-rule-color" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnRuleStyle: CssPropertyKey {
  public static var key: StaticString { return "column-rule-style" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnRuleWidth: CssPropertyKey {
  public static var key: StaticString { return "column-rule-width" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnSpan: CssPropertyKey {
  public static var key: StaticString { return "column-span" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension ColumnWidth: CssPropertyKey {
  public static var key: StaticString { return "column-width" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension Columns: CssPropertyKey {
  public static var key: StaticString { return "columns" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}

extension Outline: CssPropertyKey {
  public static var key: StaticString { return "outline" }
}
extension OutlineColor: CssPropertyKey {
  public static var key: StaticString { return "outline-color" }
}
extension OutlineOffset: CssPropertyKey {
  public static var key: StaticString { return "outline-offset" }
}
extension OutlineStyle: CssPropertyKey {
  public static var key: StaticString { return "outline-style" }
}
extension OutlineWidth: CssPropertyKey {
  public static var key: StaticString { return "outline-width" }
}

extension Padding: CssPropertyKey {
  public static var key: StaticString { return "padding" }
}
extension PaddingBottom: CssPropertyKey {
  public static var key: StaticString { return "padding-bottom" }
}
extension PaddingLeft: CssPropertyKey {
  public static var key: StaticString { return "padding-left" }
}
extension PaddingRight: CssPropertyKey {
  public static var key: StaticString { return "padding-right" }
}
extension PaddingTop: CssPropertyKey {
  public static var key: StaticString { return "padding-top" }
}

extension BreakAfter: CssPropertyKey {
  public static var key: StaticString { return "break-after" }
}
extension BreakBefore: CssPropertyKey {
  public static var key: StaticString { return "break-before" }
}
extension BreakInside: CssPropertyKey {
  public static var key: StaticString { return "break-inside" }
}

extension TextAlign: CssPropertyKey {
  public static var key: StaticString { return "text-align" }
}
extension TextAlignLast: CssPropertyKey {
  public static var key: StaticString { return "text-align-last" }
}
extension TextDecoration: CssPropertyKey {
  public static var key: StaticString { return "text-decoration" }
}
extension TextDecorationColor: CssPropertyKey {
  public static var key: StaticString { return "text-decoration-color" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension TextDecorationLine: CssPropertyKey {
  public static var key: StaticString { return "text-decoration-line" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension TextDecorationStyle: CssPropertyKey {
  public static var key: StaticString { return "text-decoration-style" }
  public static var browsers: Array<StaticString> { return ["moz"] }
}
extension TextIndent: CssPropertyKey {
  public static var key: StaticString { return "text-indent" }
}
extension TextJustify: CssPropertyKey {
  public static var key: StaticString { return "text-justify" }
}
extension TextOverflow: CssPropertyKey {
  public static var key: StaticString { return "text-overflow" }
}
extension TextShadow: CssPropertyKey {
  public static var key: StaticString { return "text-shadow" }
}
extension TextTransform: CssPropertyKey {
  public static var key: StaticString { return "text-transform" }
}
extension LineHeight: CssPropertyKey {
  public static var key: StaticString { return "line-height" }
}
extension LetterSpacing: CssPropertyKey {
  public static var key: StaticString { return "letter-spacing" }
}

extension BackfaceVisibility: CssPropertyKey {
  public static var key: StaticString { return "backface-visibility" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension Transform: CssPropertyKey {
  public static var key: StaticString { return "transform" }
}
extension TransformOrigin: CssPropertyKey {
  public static var key: StaticString { return "transform-origin" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension TransformStyle: CssPropertyKey {
  public static var key: StaticString { return "transform-style" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}

extension Transition: CssPropertyKey {
  public static var key: StaticString { return "transition" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension TransitionDelay: CssPropertyKey {
  public static var key: StaticString { return "transition-delay" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension TransitionDuration: CssPropertyKey {
  public static var key: StaticString { return "transition-duration" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension TransitionProperty: CssPropertyKey {
  public static var key: StaticString { return "transition-property" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}
extension TransitionTimingFunction: CssPropertyKey {
  public static var key: StaticString { return "transition-timing-function" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz", "o"] }
}

extension Display: CssPropertyKey {
  public static var key: StaticString { return "display" }
}
extension Position: CssPropertyKey {
  public static var key: StaticString { return "position" }
}
extension Top: CssPropertyKey {
  public static var key: StaticString { return "top" }
}
extension Right: CssPropertyKey {
  public static var key: StaticString { return "right" }
}
extension Bottom: CssPropertyKey {
  public static var key: StaticString { return "bottom" }
}
extension Left: CssPropertyKey {
  public static var key: StaticString { return "left" }
}
extension Float: CssPropertyKey {
  public static var key: StaticString { return "float" }
}
extension Clear: CssPropertyKey {
  public static var key: StaticString { return "clear" }
}
extension ZIndex: CssPropertyKey {
  public static var key: StaticString { return "z-index" }
}
extension Overflow: CssPropertyKey {
  public static var key: StaticString { return "overflow" }
  public static var browsers: Array<StaticString> { return ["ms"] }
}
extension OverflowX: CssPropertyKey {
  public static var key: StaticString { return "overflow-x" }
  public static var browsers: Array<StaticString> { return ["ms"] }
}
extension OverflowY: CssPropertyKey {
  public static var key: StaticString { return "overflow-y" }
  public static var browsers: Array<StaticString> { return ["ms"] }
}
extension ClipPath: CssPropertyKey {
  public static var key: StaticString { return "clip-path" }
  public static var browsers: Array<StaticString> { return ["webkit"] }
}
extension Visibility: CssPropertyKey {
  public static var key: StaticString { return "visibility" }
}
extension BoxDecorationBreak: CssPropertyKey {
  public static var key: StaticString { return "box-decoration-break" }
  public static var browsers: Array<StaticString> { return ["webkit"] }
}
extension BoxShadow: CssPropertyKey {
  public static var key: StaticString { return "box-shadow" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension BoxSizing: CssPropertyKey {
  public static var key: StaticString { return "box-sizing" }
  public static var browsers: Array<StaticString> { return ["webkit", "moz"] }
}
extension CaretColor: CssPropertyKey {
  public static var key: StaticString { return "caret-color" }
}
extension Cursor: CssPropertyKey {
  public static var key: StaticString { return "cursor" }
}
