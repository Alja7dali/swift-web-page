public protocol CssPropertyKey: CSSValue {
  static var key: StaticString { get }
  static var browsers: Array<StaticString> { get }
}

extension CssPropertyKey {
  public static var browsers: Array<StaticString> { return [] }
}

public enum Key {
  public enum Animation: CssPropertyKey {
    public static let key: StaticString = "animation"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }
  public enum AnimationDelay: CssPropertyKey {
    public static let key: StaticString = "animation-delay"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }
  public enum AnimationDirection: CssPropertyKey {
    public static let key: StaticString = "animation-direction"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }
  public enum AnimationDuration: CssPropertyKey {
    public static let key: StaticString = "animation-duration"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }
  public enum AnimationFillMode: CssPropertyKey {
    public static let key: StaticString = "animation-fill-mode"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }
  public enum AnimationIterationCount: CssPropertyKey {
    public static let key: StaticString = "animation-iteration-count"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }
  public enum AnimationName: CssPropertyKey {
    public static let key: StaticString = "animation-name"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }
  public enum AnimationPlayState: CssPropertyKey {
    public static let key: StaticString = "animation-play-state"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }
  public enum AnimationTimingFunction: CssPropertyKey {
    public static let key: StaticString = "animation-timing-function"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }

  public enum Background: CssPropertyKey {
    public static let key: StaticString = "background"
  }
  public enum BackgroundAttachment: CssPropertyKey {
    public static let key: StaticString = "background-attachment"
  }
  public enum BackgroundBlendMode: CssPropertyKey {
    public static let key: StaticString = "background-blend-mode"
  }
  public enum BackgroundClip: CssPropertyKey {
    public static let key: StaticString = "background-clip"
  }
  public enum BackgroundColor: CssPropertyKey {
    public static let key: StaticString = "background-color"
  }
  public enum BackgroundImage: CssPropertyKey {
    public static let key: StaticString = "background-image"
  }
  public enum BackgroundOrigin: CssPropertyKey {
    public static let key: StaticString = "background-origin"
  }
  public enum BackgroundPosition: CssPropertyKey {
    public static let key: StaticString = "background-position"
  }
  public enum BackgroundRepeat: CssPropertyKey {
    public static let key: StaticString = "background-repeat"
  }
  public enum BackgroundSize: CssPropertyKey {
    public static let key: StaticString = "background-size"
  }

  public enum Border: CssPropertyKey {
    public static let key: StaticString = "border"
  }
  public enum BorderBottom: CssPropertyKey {
    public static let key: StaticString = "border-bottom"
  }
  public enum BorderBottomColor: CssPropertyKey {
    public static let key: StaticString = "border-bottom-color"
  }
  public enum BorderBottomLeftRadius: CssPropertyKey {
    public static let key: StaticString = "border-bottom-left-radius"
  }
  public enum BorderBottomRightRadius: CssPropertyKey {
    public static let key: StaticString = "border-bottom-right-radius"
  }
  public enum BorderBottomStyle: CssPropertyKey {
    public static let key: StaticString = "border-bottom-style"
  }
  public enum BorderBottomWidth: CssPropertyKey {
    public static let key: StaticString = "border-bottom-width"
  }
  public enum BorderCollapse: CssPropertyKey {
    public static let key: StaticString = "border-collapse"
  }
  public enum BorderColor: CssPropertyKey {
    public static let key: StaticString = "border-color"
  }
  public enum BorderImage: CssPropertyKey {
    public static let key: StaticString = "border-image"
  }
  public enum BorderImageOutset: CssPropertyKey {
    public static let key: StaticString = "border-image-outset"
  }
  public enum BorderImageRepeat: CssPropertyKey {
    public static let key: StaticString = "border-image-repeat"
  }
  public enum BorderImageSlice: CssPropertyKey {
    public static let key: StaticString = "border-image-slice"
  }
  public enum BorderImageSource: CssPropertyKey {
    public static let key: StaticString = "border-image-source"
  }
  public enum BorderImageWidth: CssPropertyKey {
    public static let key: StaticString = "border-image-width"
  }
  public enum BorderLeft: CssPropertyKey {
    public static let key: StaticString = "border-left"
  }
  public enum BorderLeftColor: CssPropertyKey {
    public static let key: StaticString = "border-left-color"
  }
  public enum BorderLeftStyle: CssPropertyKey {
    public static let key: StaticString = "border-left-style"
  }
  public enum BorderLeftWidth: CssPropertyKey {
    public static let key: StaticString = "border-left-width"
  }
  public enum BorderRadius: CssPropertyKey {
    public static let key: StaticString = "border-radius"
  }
  public enum BorderRight: CssPropertyKey {
    public static let key: StaticString = "border-right"
  }
  public enum BorderRightColor: CssPropertyKey {
    public static let key: StaticString = "border-right-color"
  }
  public enum BorderRightStyle: CssPropertyKey {
    public static let key: StaticString = "border-right-style"
  }
  public enum BorderRightWidth: CssPropertyKey {
    public static let key: StaticString = "border-right-width"
  }
  public enum BorderSpacing: CssPropertyKey {
    public static let key: StaticString = "border-spacing"
  }
  public enum BorderStyle: CssPropertyKey {
    public static let key: StaticString = "border-style"
  }
  public enum BorderTop: CssPropertyKey {
    public static let key: StaticString = "border-top"
  }
  public enum BorderTopColor: CssPropertyKey {
    public static let key: StaticString = "border-top-color"
  }
  public enum BorderTopLeftRadius: CssPropertyKey {
    public static let key: StaticString = "border-top-left-radius"
  }
  public enum BorderTopRightRadius: CssPropertyKey {
    public static let key: StaticString = "border-top-right-radius"
  }
  public enum BorderTopStyle: CssPropertyKey {
    public static let key: StaticString = "border-top-style"
  }
  public enum BorderTopWidth: CssPropertyKey {
    public static let key: StaticString = "border-top-width"
  }
  public enum BorderWidth: CssPropertyKey {
    public static let key: StaticString = "border-width"
  }

  public enum Color: CssPropertyKey {
    public static let key: StaticString = "color"
  }
  public enum Opacity: CssPropertyKey {
    public static let key: StaticString = "opacity"
  }

  public enum Height: CssPropertyKey {
    public static let key: StaticString = "height"
  }
  public enum MinHeight: CssPropertyKey {
    public static let key: StaticString = "min-height"
  }
  public enum MaxHeight: CssPropertyKey {
    public static let key: StaticString = "max-height"
  }
  public enum Width: CssPropertyKey {
    public static let key: StaticString = "width"
  }
  public enum MinWidth: CssPropertyKey {
    public static let key: StaticString = "min-width"
  }
  public enum MaxWidth: CssPropertyKey {
    public static let key: StaticString = "max-width"
  }

  public enum AlignContent: CssPropertyKey {
    public static let key: StaticString = "align-content"
    public static let browsers: Array<StaticString> = ["webkit"]
  }
  public enum AlignItems: CssPropertyKey {
    public static let key: StaticString = "align-items"
    public static let browsers: Array<StaticString> = ["webkit"]
  }
  public enum AlignSelf: CssPropertyKey {
    public static let key: StaticString = "align-self"
    public static let browsers: Array<StaticString> = ["webkit"]
  }
  public enum Flex: CssPropertyKey {
    public static let key: StaticString = "flex"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum FlexBasis: CssPropertyKey {
    public static let key: StaticString = "flex-basis"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum FlexDirection: CssPropertyKey {
    public static let key: StaticString = "flex-direction"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum FlexFlow: CssPropertyKey {
    public static let key: StaticString = "flex-flow"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum FlexGrow: CssPropertyKey {
    public static let key: StaticString = "flex-grow"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum FlexShrink: CssPropertyKey {
    public static let key: StaticString = "flex-shrink"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum FlexWrap: CssPropertyKey {
    public static let key: StaticString = "flex-wrap"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum JustifyContent: CssPropertyKey {
    public static let key: StaticString = "justify-content"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum Order: CssPropertyKey {
    public static let key: StaticString = "order"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }

  public enum Font: CssPropertyKey {
    public static let key: StaticString = "font"
  }
  public enum FontFamily: CssPropertyKey {
    public static let key: StaticString = "font-family"
  }
  public enum FontFeatureSettings: CssPropertyKey {
    public static let key: StaticString = "font-feature-settings"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum FontKerning: CssPropertyKey {
    public static let key: StaticString = "font-kerning"
    public static let browsers: Array<StaticString> = ["webkit"]
  }
  public enum FontSize: CssPropertyKey {
    public static let key: StaticString = "font-size"
  }
  public enum FontSizeAdjust: CssPropertyKey {
    public static let key: StaticString = "font-size-adjust"
  }
  public enum FontStretch: CssPropertyKey {
    public static let key: StaticString = "font-stretch"
  }
  public enum FontStyle: CssPropertyKey {
    public static let key: StaticString = "font-style"
  }
  public enum FontVariant: CssPropertyKey {
    public static let key: StaticString = "font-variant"
  }
  public enum FontVariantCaps: CssPropertyKey {
    public static let key: StaticString = "font-variant-caps"
  }
  public enum FontWeight: CssPropertyKey {
    public static let key: StaticString = "font-weight"
  }

  public enum Content: CssPropertyKey {
    public static let key: StaticString = "content"
  }
  public enum Quotes: CssPropertyKey {
    public static let key: StaticString = "quotes"
  }
  public enum CounterReset: CssPropertyKey {
    public static let key: StaticString = "counter-reset"
  }
  public enum CounterIncrement: CssPropertyKey {
    public static let key: StaticString = "counter-increment"
  }

  public enum ListStyle: CssPropertyKey {
    public static let key: StaticString = "list-style"
  }
  public enum ListStyleType: CssPropertyKey {
    public static let key: StaticString = "list-style-type"
  }
  public enum ListStylePosition: CssPropertyKey {
    public static let key: StaticString = "list-style-position"
  }
  public enum ListStyleImage: CssPropertyKey {
    public static let key: StaticString = "list-style-image"
  }

  public enum Margin: CssPropertyKey {
    public static let key: StaticString = "margin"
  }
  public enum MarginBottom: CssPropertyKey {
    public static let key: StaticString = "margin-bottom"
  }
  public enum MarginLeft: CssPropertyKey {
    public static let key: StaticString = "margin-left"
  }
  public enum MarginRight: CssPropertyKey {
    public static let key: StaticString = "margin-right"
  }
  public enum MarginTop: CssPropertyKey {
    public static let key: StaticString = "margin-top"
  }

  public enum ColumnCount: CssPropertyKey {
    public static let key: StaticString = "column-count"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum ColumnFill: CssPropertyKey {
    public static let key: StaticString = "column-fill"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum ColumnGap: CssPropertyKey {
    public static let key: StaticString = "column-gap"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum ColumnRule: CssPropertyKey {
    public static let key: StaticString = "column-rule"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum ColumnRuleColor: CssPropertyKey {
    public static let key: StaticString = "column-rule-color"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum ColumnRuleStyle: CssPropertyKey {
    public static let key: StaticString = "column-rule-style"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum ColumnRuleWidth: CssPropertyKey {
    public static let key: StaticString = "column-rule-width"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum ColumnSpan: CssPropertyKey {
    public static let key: StaticString = "column-span"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum ColumnWidth: CssPropertyKey {
    public static let key: StaticString = "column-width"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum Columns: CssPropertyKey {
    public static let key: StaticString = "columns"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }

  public enum Outline: CssPropertyKey {
    public static let key: StaticString = "outline"
  }
  public enum OutlineColor: CssPropertyKey {
    public static let key: StaticString = "outline-color"
  }
  public enum OutlineOffset: CssPropertyKey {
    public static let key: StaticString = "outline-offset"
  }
  public enum OutlineStyle: CssPropertyKey {
    public static let key: StaticString = "outline-style"
  }
  public enum OutlineWidth: CssPropertyKey {
    public static let key: StaticString = "outline-width"
  }

  public enum Padding: CssPropertyKey {
    public static let key: StaticString = "padding"
  }
  public enum PaddingBottom: CssPropertyKey {
    public static let key: StaticString = "padding-bottom"
  }
  public enum PaddingLeft: CssPropertyKey {
    public static let key: StaticString = "padding-left"
  }
  public enum PaddingRight: CssPropertyKey {
    public static let key: StaticString = "padding-right"
  }
  public enum PaddingTop: CssPropertyKey {
    public static let key: StaticString = "padding-top"
  }

  public enum BreakAfter: CssPropertyKey {
    public static let key: StaticString = "break-after"
  }
  public enum BreakBefore: CssPropertyKey {
    public static let key: StaticString = "break-before"
  }
  public enum BreakInside: CssPropertyKey {
    public static let key: StaticString = "break-inside"
  }

  public enum TextAlign: CssPropertyKey {
    public static let key: StaticString = "text-align"
  }
  public enum TextAlignLast: CssPropertyKey {
    public static let key: StaticString = "text-align-last"
  }
  public enum TextDecoration: CssPropertyKey {
    public static let key: StaticString = "text-decoration"
  }
  public enum TextDecorationColor: CssPropertyKey {
    public static let key: StaticString = "text-decoration-color"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum TextDecorationLine: CssPropertyKey {
    public static let key: StaticString = "text-decoration-line"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum TextDecorationStyle: CssPropertyKey {
    public static let key: StaticString = "text-decoration-style"
    public static let browsers: Array<StaticString> = ["moz"]
  }
  public enum TextIndent: CssPropertyKey {
    public static let key: StaticString = "text-indent"
  }
  public enum TextJustify: CssPropertyKey {
    public static let key: StaticString = "text-justify"
  }
  public enum TextOverflow: CssPropertyKey {
    public static let key: StaticString = "text-overflow"
  }
  public enum TextShadow: CssPropertyKey {
    public static let key: StaticString = "text-shadow"
  }
  public enum TextTransform: CssPropertyKey {
    public static let key: StaticString = "text-transform"
  }
  public enum LineHeight: CssPropertyKey {
    public static let key: StaticString = "line-height"
  }
  public enum LetterSpacing: CssPropertyKey {
    public static let key: StaticString = "letter-spacing"
  }

  public enum BackfaceVisibility: CssPropertyKey {
    public static let key: StaticString = "backface-visibility"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum Transform: CssPropertyKey {
    public static let key: StaticString = "transform"
  }
  public enum TransformOrigin: CssPropertyKey {
    public static let key: StaticString = "transform-origin"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum TransformStyle: CssPropertyKey {
    public static let key: StaticString = "transform-style"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }

  public enum Transition: CssPropertyKey {
    public static let key: StaticString = "transition"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }
  public enum TransitionDelay: CssPropertyKey {
    public static let key: StaticString = "transition-delay"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }
  public enum TransitionDuration: CssPropertyKey {
    public static let key: StaticString = "transition-duration"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }
  public enum TransitionProperty: CssPropertyKey {
    public static let key: StaticString = "transition-property"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }
  public enum TransitionTimingFunction: CssPropertyKey {
    public static let key: StaticString = "transition-timing-function"
    public static let browsers: Array<StaticString> = ["webkit", "moz", "o"]
  }

  public enum Display: CssPropertyKey {
    public static let key: StaticString = "display"
  }
  public enum Position: CssPropertyKey {
    public static let key: StaticString = "position"
  }
  public enum Top: CssPropertyKey {
    public static let key: StaticString = "top"
  }
  public enum Right: CssPropertyKey {
    public static let key: StaticString = "right"
  }
  public enum Bottom: CssPropertyKey {
    public static let key: StaticString = "bottom"
  }
  public enum Left: CssPropertyKey {
    public static let key: StaticString = "left"
  }
  public enum Float: CssPropertyKey {
    public static let key: StaticString = "float"
  }
  public enum Clear: CssPropertyKey {
    public static let key: StaticString = "clear"
  }
  public enum ZIndex: CssPropertyKey {
    public static let key: StaticString = "z-index"
  }
  public enum Overflow: CssPropertyKey {
    public static let key: StaticString = "overflow"
    public static let browsers: Array<StaticString> = ["ms"]
  }
  public enum OverflowX: CssPropertyKey {
    public static let key: StaticString = "overflow-x"
    public static let browsers: Array<StaticString> = ["ms"]
  }
  public enum OverflowY: CssPropertyKey {
    public static let key: StaticString = "overflow-y"
    public static let browsers: Array<StaticString> = ["ms"]
  }
  public enum ClipPath: CssPropertyKey {
    public static let key: StaticString = "clip-path"
    public static let browsers: Array<StaticString> = ["webkit"]
  }
  public enum Visibility: CssPropertyKey {
    public static let key: StaticString = "visibility"
  }
  public enum BoxDecorationBreak: CssPropertyKey {
    public static let key: StaticString = "box-decoration-break"
    public static let browsers: Array<StaticString> = ["webkit"]
  }
  public enum BoxShadow: CssPropertyKey {
    public static let key: StaticString = "box-shadow"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum BoxSizing: CssPropertyKey {
    public static let key: StaticString = "box-sizing"
    public static let browsers: Array<StaticString> = ["webkit", "moz"]
  }
  public enum CaretColor: CssPropertyKey {
    public static let key: StaticString = "caret-color"
  }
  public enum Cursor: CssPropertyKey {
    public static let key: StaticString = "cursor"
  }
}