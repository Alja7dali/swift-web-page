public protocol HasValueOfDefault: CSSValue {}

extension Animation: HasValueOfDefault {}
extension AnimationDelay: HasValueOfDefault {}
extension AnimationDirection: HasValueOfDefault {}
extension AnimationDuration: HasValueOfDefault {}
extension AnimationFillMode: HasValueOfDefault {}
extension AnimationIterationCount: HasValueOfDefault {}
extension AnimationName: HasValueOfDefault {}
extension AnimationPlayState: HasValueOfDefault {}
extension AnimationTimingFunction: HasValueOfDefault {}

extension Background: HasValueOfDefault {}
extension BackgroundAttachment: HasValueOfDefault {}
extension BackgroundBlendMode: HasValueOfDefault {}
extension BackgroundClip: HasValueOfDefault {}
extension BackgroundColor: HasValueOfDefault {}
extension BackgroundImage: HasValueOfDefault {}
extension BackgroundOrigin: HasValueOfDefault {}
extension BackgroundPosition: HasValueOfDefault {}
extension BackgroundRepeat: HasValueOfDefault {}
extension BackgroundSize: HasValueOfDefault {}

extension Border: HasValueOfDefault {}
extension BorderBottom: HasValueOfDefault {}
extension BorderBottomColor: HasValueOfDefault {}
extension BorderBottomLeftRadius: HasValueOfDefault {}
extension BorderBottomRightRadius: HasValueOfDefault {}
extension BorderBottomStyle: HasValueOfDefault {}
extension BorderBottomWidth: HasValueOfDefault {}
extension BorderCollapse: HasValueOfDefault {}
extension BorderColor: HasValueOfDefault {}
extension BorderImage: HasValueOfDefault {}
extension BorderImageOutset: HasValueOfDefault {}
extension BorderImageRepeat: HasValueOfDefault {}
extension BorderImageSlice: HasValueOfDefault {}
extension BorderImageSource: HasValueOfDefault {}
extension BorderImageWidth: HasValueOfDefault {}
extension BorderLeft: HasValueOfDefault {}
extension BorderLeftColor: HasValueOfDefault {}
extension BorderLeftStyle: HasValueOfDefault {}
extension BorderLeftWidth: HasValueOfDefault {}
extension BorderRadius: HasValueOfDefault {}
extension BorderRight: HasValueOfDefault {}
extension BorderRightColor: HasValueOfDefault {}
extension BorderRightStyle: HasValueOfDefault {}
extension BorderRightWidth: HasValueOfDefault {}
extension BorderSpacing: HasValueOfDefault {}
extension BorderStyle: HasValueOfDefault {}
extension BorderTop: HasValueOfDefault {}
extension BorderTopColor: HasValueOfDefault {}
extension BorderTopLeftRadius: HasValueOfDefault {}
extension BorderTopRightRadius: HasValueOfDefault {}
extension BorderTopStyle: HasValueOfDefault {}
extension BorderTopWidth: HasValueOfDefault {}
extension BorderWidth: HasValueOfDefault {}

extension Color: HasValueOfDefault {}
extension Opacity: HasValueOfDefault {}

extension Height: HasValueOfDefault {}
extension MinHeight: HasValueOfDefault {}
extension MaxHeight: HasValueOfDefault {}
extension Width: HasValueOfDefault {}
extension MinWidth: HasValueOfDefault {}
extension MaxWidth: HasValueOfDefault {}

extension AlignContent: HasValueOfDefault {}
extension AlignItems: HasValueOfDefault {}
extension AlignSelf: HasValueOfDefault {}
extension Flex: HasValueOfDefault {}
extension FlexBasis: HasValueOfDefault {}
extension FlexDirection: HasValueOfDefault {}
extension FlexFlow: HasValueOfDefault {}
extension FlexGrow: HasValueOfDefault {}
extension FlexShrink: HasValueOfDefault {}
extension FlexWrap: HasValueOfDefault {}
extension JustifyContent: HasValueOfDefault {}
extension Order: HasValueOfDefault {}

extension FontKerning: HasValueOfDefault {}
extension FontSize: HasValueOfDefault {}
extension FontSizeAdjust: HasValueOfDefault {}
extension FontStretch: HasValueOfDefault {}
extension FontStyle: HasValueOfDefault {}
extension FontVariant: HasValueOfDefault {}
extension FontVariantCaps: HasValueOfDefault {}
extension FontWeight: HasValueOfDefault {}

extension Content: HasValueOfDefault {}
extension Quotes: HasValueOfDefault {}
extension CounterReset: HasValueOfDefault {}
extension CounterIncrement: HasValueOfDefault {}

extension ListStyle: HasValueOfDefault {}
extension ListStyleType: HasValueOfDefault {}
extension ListStylePosition: HasValueOfDefault {}
extension ListStyleImage: HasValueOfDefault {}

extension Margin: HasValueOfDefault {}
extension MarginBottom: HasValueOfDefault {}
extension MarginLeft: HasValueOfDefault {}
extension MarginRight: HasValueOfDefault {}
extension MarginTop: HasValueOfDefault {}

extension ColumnCount: HasValueOfDefault {}
extension ColumnFill: HasValueOfDefault {}
extension ColumnGap: HasValueOfDefault {}
extension ColumnRule: HasValueOfDefault {}
extension ColumnRuleColor: HasValueOfDefault {}
extension ColumnRuleStyle: HasValueOfDefault {}
extension ColumnRuleWidth: HasValueOfDefault {}
extension ColumnSpan: HasValueOfDefault {}
extension ColumnWidth: HasValueOfDefault {}
extension Columns: HasValueOfDefault {}

extension Outline: HasValueOfDefault {}
extension OutlineColor: HasValueOfDefault {}
extension OutlineOffset: HasValueOfDefault {}
extension OutlineStyle: HasValueOfDefault {}
extension OutlineWidth: HasValueOfDefault {}

extension Padding: HasValueOfDefault {}
extension PaddingBottom: HasValueOfDefault {}
extension PaddingLeft: HasValueOfDefault {}
extension PaddingRight: HasValueOfDefault {}
extension PaddingTop: HasValueOfDefault {}

extension BreakAfter: HasValueOfDefault {}
extension BreakBefore: HasValueOfDefault {}
extension BreakInside: HasValueOfDefault {}

extension TextAlignLast: HasValueOfDefault {}
extension TextDecoration: HasValueOfDefault {}
extension TextDecorationColor: HasValueOfDefault {}
extension TextDecorationLine: HasValueOfDefault {}
extension TextDecorationStyle: HasValueOfDefault {}
extension TextIndent: HasValueOfDefault {}
extension TextJustify: HasValueOfDefault {}
extension TextOverflow: HasValueOfDefault {}
extension TextShadow: HasValueOfDefault {}
extension TextTransform: HasValueOfDefault {}
extension LineHeight: HasValueOfDefault {}
extension LetterSpacing: HasValueOfDefault {}

extension BackfaceVisibility: HasValueOfDefault {}
extension Transform: HasValueOfDefault {}
extension TransformOrigin: HasValueOfDefault {}
extension TransformStyle: HasValueOfDefault {}

extension Transition: HasValueOfDefault {}
extension TransitionDelay: HasValueOfDefault {}
extension TransitionDuration: HasValueOfDefault {}
extension TransitionProperty: HasValueOfDefault {}
extension TransitionTimingFunction: HasValueOfDefault {}

extension Display: HasValueOfDefault {}
extension Position: HasValueOfDefault {}
extension Top: HasValueOfDefault {}
extension Right: HasValueOfDefault {}
extension Bottom: HasValueOfDefault {}
extension Left: HasValueOfDefault {}
extension Float: HasValueOfDefault {}
extension Clear: HasValueOfDefault {}
extension ZIndex: HasValueOfDefault {}
extension Overflow: HasValueOfDefault {}
extension OverflowX: HasValueOfDefault {}
extension OverflowY: HasValueOfDefault {}
extension Visibility: HasValueOfDefault {}
extension BoxDecorationBreak: HasValueOfDefault {}
extension BoxShadow: HasValueOfDefault {}
extension BoxSizing: HasValueOfDefault {}
extension CaretColor: HasValueOfDefault {}
extension Cursor: HasValueOfDefault {}

public extension Value where Kind: CssPropertyKey & HasValueOfDefault {
  static var `default`: Self {
    switch String(describing: Kind.key) {
    case "animation": return "none 0s ease 0s 1 normal none running"
    case "animation-delay": return "0s"
    case "animation-direction": return "normal"
    case "animation-duration": return "0s"
    case "animation-fill-mode": return "none"
    case "animation-iteration-count": return "1"
    case "animation-name": return "none"
    case "animation-play-state": return "running"
    case "animation-timing-function": return "ease"

    case "background": return "transparent none 0% 0% auto repeat padding-box border-box scroll"
    case "background-attachment": return "scroll"
    case "background-blend-mode": return "normal"
    case "background-clip": return "border-box"
    case "background-color": return "transparent"
    case "background-image": return "none"
    case "background-origin": return "padding-box"
    case "background-position": return "0% 0%"
    case "background-repeat": return "repeat"
    case "background-size": return "auto"

    case "border": return "medium none currentColor"
    case "border-bottom": return "medium none currentColor"
    case "border-bottom-color": return "black"
    case "border-bottom-left-radius": return "0"
    case "border-bottom-right-radius": return "0"
    case "border-bottom-style": return "none"
    case "border-bottom-width": return "medium"
    case "border-collapse": return "separate"
    case "border-color": return "black"
    case "border-image": return "none 100% 1 0 stretch"
    case "border-image-outset": return "0"
    case "border-image-repeat": return "stretch"
    case "border-image-slice": return "100%"
    case "border-image-source": return "none"
    case "border-image-width": return "1"
    case "border-left": return "medium none currentColor"
    case "border-left-color": return "black"
    case "border-left-style": return "none"
    case "border-left-width": return "medium"
    case "border-radius": return "0"
    case "border-right": return "medium none currentColor"
    case "border-right-color": return "black"
    case "border-right-style": return "none"
    case "border-right-width": return "medium"
    case "border-spacing": return "2px"
    case "border-style": return "none"
    case "border-top": return "medium none currentColor"
    case "border-top-color": return "black"
    case "border-top-left-radius": return "0"
    case "border-top-right-radius": return "0"
    case "border-top-style": return "none"
    case "border-top-width": return "medium"
    case "border-width": return "medium"

    case "color": return "black"
    case "opacity": return "1"

    case "height": return "auto"
    case "min-height": return "auto"
    case "max-height": return "auto"
    case "width": return "auto"
    case "min-width": return "auto"
    case "max-width": return "auto"

    case "align-content": return "stretch"
    case "align-items": return "stretch"
    case "align-self": return "auto"
    case "flex": return "0 1 auto"
    case "flex-basis": return "auto"
    case "flex-direction": return "row"
    case "flex-flow": return "row nowrap"
    case "flex-grow": return "0"
    case "flex-shrink": return "1"
    case "flex-wrap": return "nowrap"
    case "justify-content": return "flex-start"
    case "order": return "0"

    case "font": return .init("unset")
    case "font-family": return .init("unset")
    case "font-feature-settings": return .init("unset")
    case "font-kerning": return "auto"
    case "font-size": return "medium"
    case "font-size-adjust": return "none"
    case "font-stretch": return "normal"
    case "font-style": return "normal"
    case "font-variant": return "normal"
    case "font-variant-caps": return "normal"
    case "font-weight": return "normal"

    case "content": return "normal"
    case "quotes": return "none"
    case "counter-reset": return "none"
    case "counter-increment": return "none"

    case "list-style": return "disc outside normal"
    case "list-style-type": return "disc"
    case "list-style-position": return "outside"
    case "list-style-image": return "normal"

    case "margin": return "0"
    case "margin-bottom": return "0"
    case "margin-left": return "0"
    case "margin-right": return "0"
    case "margin-top": return "0"

    case "column-count": return "auto"
    case "column-fill": return "balance"
    case "column-gap": return "normal"
    case "column-rule": return "medium none currentColor"
    case "column-rule-color": return "invert"
    case "column-rule-style": return "none"
    case "column-rule-width": return "medium"
    case "column-span": return "none"
    case "column-width": return "auto"
    case "columns": return "auto auto"

    case "outline": return "medium none invert"
    case "outline-color": return "black"
    case "outline-offset": return "0"
    case "outline-style": return "none"
    case "outline-width": return "medium"

    case "padding": return "0"
    case "padding-bottom": return "0"
    case "padding-left": return "0"
    case "padding-right": return "0"
    case "padding-top": return "0"

    case "break-after": return "auto"
    case "break-before": return "auto"
    case "break-inside": return "auto"

    case "text-align": return .init("unset")
    case "text-align-last": return "auto"
    case "text-decoration": return "none currentColor solid"
    case "text-decoration-color": return "currentColor"
    case "text-decoration-line": return "none"
    case "text-decoration-style": return "solid"
    case "text-indent": return "0"
    case "text-justify": return "auto"
    case "text-overflow": return "clip"
    case "text-shadow": return "none"
    case "text-transform": return "none"
    case "line-height": return "normal"
    case "letter-spacing": return "normal"

    case "backface-visibility": return "visible"
    case "transform": return "none"
    case "transform-origin": return "50% 50% 0"
    case "transform-style": return "flat"

    case "transition": return "none 0s ease 0s 1 normal none running"
    case "transition-delay": return "0s"
    case "transition-duration": return "0s"
    case "transition-property": return "all"
    case "transition-timing-function": return "ease"

    case "display": return "inline"
    case "position": return "static"
    case "top": return "auto"
    case "right": return "auto"
    case "bottom": return "auto"
    case "left": return "auto"
    case "float": return "none"
    case "clear": return "none"
    case "z-index": return "auto"
    case "overflow": return "visible"
    case "overflow-x": return "visible"
    case "overflow-y": return "visible"
    case "clip-path": return .init("unset")
    case "visibility": return "visible"
    case "box-decoration-break": return "slice"
    case "box-shadow": return "none"
    case "box-sizing": return "content-box"
    case "caret-color": return "auto"
    case "cursor": return "auto"

    default: return .init("unset")
    }
  }
}