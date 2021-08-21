import Html
import Css

extension Stylesheet: HtmlNode {}

extension Style {
  public init(@CssNodeBuilder _ c: () -> Array<CssNode>) where Content == Stylesheet {
    self.init([], Stylesheet(c))
  }

  public init<A: CssNode>(_ c: A) where Content == Stylesheet {
    self.init([], Stylesheet(c))
  }
}

extension Tag {
  private func appendStyle<P: Property>(_ property: P) -> Self {
    return style(unsafe: property.render())
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Animation
extension Tag {
  public func animation(_ value: Value<Animation>) -> Self {
    return appendStyle(Animation(value))
  }

  public func animation(
    name: Value<AnimationName> = .default,
    duration: Value<AnimationDuration> = .default,
    timingFunction: Value<AnimationTimingFunction> = .default,
    delay: Value<AnimationDelay> = .default,
    iterationCount: Value<AnimationIterationCount> = .default,
    direction: Value<AnimationDirection> = .default,
    fillMode: Value<AnimationFillMode> = .default,
    playState: Value<AnimationPlayState> = .default
  ) -> Self {
    return appendStyle (
      Animation(
        name: name,
        duration: duration,
        timingFunction: timingFunction,
        delay: delay,
        iterationCount: iterationCount,
        direction: direction,
        fillMode: fillMode,
        playState: playState
      )
    )
  }

  public func animationDelay(_ value: Value<AnimationDelay>) -> Self {
    return appendStyle(AnimationDelay(value))
  }

  public func animationDirection(_ value: Value<AnimationDirection>) -> Self {
    return appendStyle(AnimationDirection(value))
  }

  public func animationDuration(_ value: Value<AnimationDuration>) -> Self {
    return appendStyle(AnimationDuration(value))
  }

  public func animationFillMode(_ value: Value<AnimationFillMode>) -> Self {
    return appendStyle(AnimationFillMode(value))
  }

  public func animationIterationCount(_ value: Value<AnimationIterationCount>) -> Self {
    return appendStyle(AnimationIterationCount(value))
  }

  public func animationName(_ value: Value<AnimationName>) -> Self {
    return appendStyle(AnimationName(value))
  }

  public func animationPlayState(_ value: Value<AnimationPlayState>) -> Self {
    return appendStyle(AnimationPlayState(value))
  }

  public func animationTimingFunction(_ value: Value<AnimationTimingFunction>) -> Self {
    return appendStyle(AnimationTimingFunction(value))
  }

  public func animationTimingFunction(steps count: Int, at point: AnimationTimingFunctionPoint = .end) -> Self {
    return appendStyle(AnimationTimingFunction(.steps(count, at: point)))
  }

  public func animationTimingFunction(_ X1: Double, _ Y1: Double, _ X2: Double, _ Y2: Double) -> Self {
    return appendStyle(AnimationTimingFunction(.cubicBezier(X1, Y1, X2, Y2)))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Background
extension Tag {
  public func background(_ value: Value<Background>) -> Self {
    return appendStyle(Background(value))
  }

  public func background(
    color: Value<BackgroundColor> = .default,
    image: Value<BackgroundImage> = .default,
    position: Value<BackgroundPosition> = .default,
    size: Value<BackgroundSize> = .default,
    `repeat`: Value<BackgroundRepeat> = .default,
    _ moreRepeatings: Value<BackgroundRepeat> ...,
    origin: Value<BackgroundOrigin> = .default,
    clip: Value<BackgroundClip> = .default,
    attachment: Value<BackgroundAttachment> = .default
  ) -> Self {
    return appendStyle (
      Background(
        color: color,
        image: image,
        position: position,
        size: size,
        repeat: [`repeat`] + moreRepeatings,
        origin: origin,
        clip: clip,
        attachment: attachment
      )
    )
  }

  public func backgroundAttachment(_ value: Value<BackgroundAttachment>) -> Self {
    return appendStyle(BackgroundAttachment(value))
  }

  public func backgroundBlendMode(_ value: Value<BackgroundBlendMode>) -> Self {
    return appendStyle(BackgroundBlendMode(value))
  }

  public func backgroundClip(_ value: Value<BackgroundClip>) -> Self {
    return appendStyle(BackgroundClip(value))
  }

  public func backgroundColor(_ value: Value<BackgroundColor>) -> Self {
    return appendStyle(BackgroundColor(value))
  }

  public func backgroundImage(_ value: Value<BackgroundImage>) -> Self {
    return appendStyle(BackgroundImage(value))
  }

  public func backgroundOrigin(_ value: Value<BackgroundOrigin>) -> Self {
    return appendStyle(BackgroundOrigin(value))
  }

  public func backgroundPosition(_ value: Value<BackgroundPosition>) -> Self {
    return appendStyle(BackgroundPosition(value))
  }

  public func backgroundPosition(_ x: Value<CSSLength>, _ y: Value<CSSLength> = .auto) -> Self {
    return appendStyle(BackgroundPosition(x, y))
  }

  public func backgroundPosition(_ horizontal: Value<CSSSide>, _ vertical: Value<CSSSide> = .center) -> Self {
    return appendStyle(BackgroundPosition(horizontal, vertical))
  }

  public func backgroundRepeat(
    _ value: Value<BackgroundRepeat>,
    _ moreValues: Value<BackgroundRepeat> ...
  ) -> Self {
    return appendStyle(BackgroundRepeat([value] + moreValues))
  }

  public func backgroundSize(_ value: Value<BackgroundSize>) -> Self {
    return appendStyle(BackgroundSize(value))
  }

  public func backgroundSize(_ width: Value<CSSLength>, _ height: Value<CSSLength> = .auto) -> Self {
    return appendStyle(BackgroundSize(width, height))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Border
extension Tag {
  public func border(_ value: Value<Border>) -> Self {
    return appendStyle(Border(value))
  }

  public func border(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .default
  ) -> Self {
    return appendStyle(Border(width: width, style: style, color: color))
  }

  public func borderBottom(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .default
  ) -> Self {
    return appendStyle(BorderBottom(width: width, style: style, color: color))
  }

  public func borderBottomColor(_ value: Value<BorderBottomColor>) -> Self {
    return appendStyle(BorderBottomColor(value))
  }

  public func borderBottomLeftRadius(_ value: Value<BorderBottomLeftRadius>) -> Self {
    return appendStyle(BorderBottomLeftRadius(value))
  }

  public func borderBottomRightRadius(_ value: Value<BorderBottomRightRadius>) -> Self {
    return appendStyle(BorderBottomRightRadius(value))
  }

  public func borderBottomStyle(_ value: Value<BorderBottomStyle>) -> Self {
    return appendStyle(BorderBottomStyle(value))
  }

  public func borderBottomWidth(_ value: Value<BorderBottomWidth>) -> Self {
    return appendStyle(BorderBottomWidth(value))
  }

  public func borderCollapse(_ value: Value<BorderCollapse>) -> Self {
    return appendStyle(BorderCollapse(value))
  }

  public func borderColor(_ value: Value<BorderColor>) -> Self {
    return appendStyle(BorderColor(value))
  }

  public func borderColor(_ topBottom: Value<CSSColor>, _ leftRight: Value<CSSColor>) -> Self {
    return appendStyle(BorderColor(topBottom, leftRight))
  }

  public func borderColor(_ top: Value<CSSColor>, _ leftRight: Value<CSSColor>, _ bottom: Value<CSSColor>) -> Self {
    return appendStyle(BorderColor(top, leftRight, bottom))
  }

  public func borderColor(_ top: Value<CSSColor>, _ right: Value<CSSColor>, _ bottom: Value<CSSColor>, _ left: Value<CSSColor>) -> Self {
    return appendStyle(BorderColor(top, right, bottom, left))
  }

  public func borderImage(
    source: Value<BorderImageSource> = .default,
    slice: Value<BorderImageSlice> = .default,
    width: Value<BorderImageWidth> = .default,
    outset: Value<BorderImageOutset> = .default,
    `repeat`: Value<BorderImageRepeat> = .default
  ) -> Self {
    return appendStyle (
      BorderImage(
        source: source,
        slice: slice,
        width: width,
        outset: outset,
        repeat: `repeat`
      )
    )
  }

  public func borderImageOutset(_ value: Value<BorderImageOutset>) -> Self {
    return appendStyle(BorderImageOutset(value))
  }

  public func borderImageOutset(_ topBottom: Value<BorderImageOutset>, _ leftRight: Value<BorderImageOutset>) -> Self {
    return appendStyle(BorderImageOutset(topBottom, leftRight))
  }

  public func borderImageOutset(_ top: Value<BorderImageOutset>, _ leftRight: Value<BorderImageOutset>, _ bottom: Value<BorderImageOutset>) -> Self {
    return appendStyle(BorderImageOutset(top, leftRight, bottom))
  }

  public func borderImageOutset(_ top: Value<BorderImageOutset>, _ right: Value<BorderImageOutset>, _ bottom: Value<BorderImageOutset>, _ left: Value<BorderImageOutset>) -> Self {
    return appendStyle(BorderImageOutset(top, right, bottom, left))
  }

  public func borderImageRepeat(_ value: Value<BorderImageRepeat>) -> Self {
    return appendStyle(BorderImageRepeat(value))
  }

  public func borderImageSlice(_ value: Value<BorderImageSlice>) -> Self {
    return appendStyle(BorderImageSlice(value))
  }

  public func borderImageSlice(_ topBottom: Value<BorderImageSlice>, _ leftRight: Value<BorderImageSlice>) -> Self {
    return appendStyle(BorderImageSlice(topBottom, leftRight))
  }

  public func borderImageSlice(_ top: Value<BorderImageSlice>, _ leftRight: Value<BorderImageSlice>, _ bottom: Value<BorderImageSlice>) -> Self {
    return appendStyle(BorderImageSlice(top, leftRight, bottom))
  }

  public func borderImageSlice(_ top: Value<BorderImageSlice>, _ right: Value<BorderImageSlice>, _ bottom: Value<BorderImageSlice>, _ left: Value<BorderImageSlice>) -> Self {
    return appendStyle(BorderImageSlice(top, right, bottom, left))
  }

  public func borderImageSource(_ value: Value<BorderImageSource>) -> Self {
    return appendStyle(BorderImageSource(value))
  }

  public func borderImageWidth(_ value: Value<BorderImageWidth>) -> Self {
    return appendStyle(BorderImageWidth(value))
  }

  public func borderImageWidth(_ topBottom: Value<CSSLength>, _ leftRight: Value<CSSLength>) -> Self {
    return appendStyle(BorderImageWidth(topBottom, leftRight))
  }

  public func borderImageWidth(_ top: Value<CSSLength>, _ leftRight: Value<CSSLength>, _ bottom: Value<CSSLength>) -> Self {
    return appendStyle(BorderImageWidth(top, leftRight, bottom))
  }

  public func borderImageWidth(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) -> Self {
    return appendStyle(BorderImageWidth(top, right, bottom, left))
  }

  public func borderLeft(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .default
  ) -> Self {
    return appendStyle(BorderLeft(width: width, style: style, color: color))
  }

  public func borderLeftColor(_ value: Value<BorderLeftColor>) -> Self {
    return appendStyle(BorderLeftColor(value))
  }

  public func borderLeftStyle(_ value: Value<BorderLeftStyle>) -> Self {
    return appendStyle(BorderLeftStyle(value))
  }

  public func borderLeftWidth(_ value: Value<BorderLeftWidth>) -> Self {
    return appendStyle(BorderLeftWidth(value))
  }

  public func borderRadius(_ value: Value<BorderRadius>) -> Self {
    return appendStyle(BorderRadius(value))
  }

  public func borderRadius(_ topBottom: Value<BorderRadius>, _ leftRight: Value<BorderRadius>) -> Self {
    return appendStyle(BorderRadius(topBottom, leftRight))
  }

  public func borderRadius(_ top: Value<BorderRadius>, _ leftRight: Value<BorderRadius>, _ bottom: Value<BorderRadius>) -> Self {
    return appendStyle(BorderRadius(top, leftRight, bottom))
  }

  public func borderRadius(_ top: Value<BorderRadius>, _ right: Value<BorderRadius>, _ bottom: Value<BorderRadius>, _ left: Value<BorderRadius>) -> Self {
    return appendStyle(BorderRadius(top, right, bottom, left))
  }

  public func borderRight(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .default
  ) -> Self {
    return appendStyle(BorderRight(width: width, style: style, color: color))
  }

  public func borderRightColor(_ value: Value<BorderRightColor>) -> Self {
    return appendStyle(BorderRightColor(value))
  }

  public func borderRightStyle(_ value: Value<BorderRightStyle>) -> Self {
    return appendStyle(BorderRightStyle(value))
  }

  public func borderRightWidth(_ value: Value<BorderRightWidth>) -> Self {
    return appendStyle(BorderRightWidth(value))
  }

  public func borderSpacing(_ value: Value<BorderSpacing>) -> Self {
    return appendStyle(BorderSpacing(value))
  }

  public func borderSpacing(_ horizontal: Value<CSSLength>, _ vertical: Value<CSSLength>) -> Self {
    return appendStyle(BorderSpacing(horizontal, vertical))
  }

  public func borderStyle(_ value: Value<BorderStyle>) -> Self {
    return appendStyle(BorderStyle(value))
  }

  public func borderStyle(_ topBottom: Value<BorderStyle>, _ leftRight: Value<BorderStyle>) -> Self {
    return appendStyle(BorderStyle(topBottom, leftRight))
  }

  public func borderStyle(_ top: Value<BorderStyle>, _ leftRight: Value<BorderStyle>, _ bottom: Value<BorderStyle>) -> Self {
    return appendStyle(BorderStyle(top, leftRight, bottom))
  }

  public func borderStyle(_ top: Value<BorderStyle>, _ right: Value<BorderStyle>, _ bottom: Value<BorderStyle>, _ left: Value<BorderStyle>) -> Self {
    return appendStyle(BorderStyle(top, right, bottom, left))
  }

  public func borderTop(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .default
  ) -> Self {
    return appendStyle(BorderTop(width: width, style: style, color: color))
  }

  public func borderTopColor(_ value: Value<BorderTopColor>) -> Self {
    return appendStyle(BorderTopColor(value))
  }

  public func borderTopLeftRadius(_ value: Value<BorderTopLeftRadius>) -> Self {
    return appendStyle(BorderTopLeftRadius(value))
  }

  public func borderTopRightRadius(_ value: Value<BorderTopRightRadius>) -> Self {
    return appendStyle(BorderTopRightRadius(value))
  }

  public func borderTopStyle(_ value: Value<BorderTopStyle>) -> Self {
    return appendStyle(BorderTopStyle(value))
  }

  public func borderTopWidth(_ value: Value<BorderTopWidth>) -> Self {
    return appendStyle(BorderTopWidth(value))
  }

  public func borderWidth(_ value: Value<BorderWidth>) -> Self {
    return appendStyle(BorderWidth(value))
  }

  public func borderWidth(_ topBottom: Value<BorderWidth>, _ leftRight: Value<BorderWidth>) -> Self {
    return appendStyle(BorderWidth(topBottom, leftRight))
  }

  public func borderWidth(_ top: Value<BorderWidth>, _ leftRight: Value<BorderWidth>, _ bottom: Value<BorderWidth>) -> Self {
    return appendStyle(BorderWidth(top, leftRight, bottom))
  }

  public func borderWidth(_ top: Value<BorderWidth>, _ right: Value<BorderWidth>, _ bottom: Value<BorderWidth>, _ left: Value<BorderWidth>) -> Self {
    return appendStyle(BorderWidth(top, right, bottom, left))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Color
extension Tag {
  public func color(_ value: Value<Color>) -> Self {
    return appendStyle(Color(value))
  }

  public func opacity(_ value: Value<Opacity>) -> Self {
    return appendStyle(Opacity(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Dimension
extension Tag {
  public func height(_ value: Value<Height>) -> Self {
    return appendStyle(Height(value))
  }

  public func minHeight(_ value: Value<MinHeight>) -> Self {
    return appendStyle(MinHeight(value))
  }

  public func maxHeight(_ value: Value<MaxHeight>) -> Self {
    return appendStyle(MaxHeight(value))
  }

  public func width(_ value: Value<Width>) -> Self {
    return appendStyle(Width(value))
  }

  public func minWidth(_ value: Value<MinWidth>) -> Self {
    return appendStyle(MinWidth(value))
  }

  public func maxWidth(_ value: Value<MaxWidth>) -> Self {
    return appendStyle(MaxWidth(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: FlexibleBox
extension Tag {
  public func alignContent(_ value: Value<AlignContent>) -> Self {
    return appendStyle(AlignContent(value))
  }

  public func alignItems(_ value: Value<AlignItems>) -> Self {
    return appendStyle(AlignItems(value))
  }

  public func alignSelf(_ value: Value<AlignSelf>) -> Self {
    return appendStyle(AlignSelf(value))
  }

  public func flex(_ value: Value<Flex>) -> Self {
    return appendStyle(Flex(value))
  }

  public func flex(
    grow: Value<FlexGrow> = .default,
    shrink: Value<FlexShrink> = .default,
    basis: Value<FlexBasis> = .default
  ) -> Self {
    return appendStyle(Flex(grow: grow, shrink: shrink, basis: basis))
  }

  public func flexBasis(_ value: Value<FlexBasis>) -> Self {
    return appendStyle(FlexBasis(value))
  }

  public func flexDirection(_ value: Value<FlexDirection>) -> Self {
    return appendStyle(FlexDirection(value))
  }

  public func flexFlow(_ value: Value<FlexFlow>) -> Self {
    return appendStyle(FlexFlow(value))
  }

  public func flexFlow(
    direction: Value<FlexDirection> = .default,
    wrap: Value<FlexWrap> = .default
  ) -> Self {
    return appendStyle(FlexFlow(direction: direction, wrap: wrap))
  }

  public func flexGrow(_ value: Value<FlexGrow>) -> Self {
    return appendStyle(FlexGrow(value))
  }

  public func flexShrink(_ value: Value<FlexShrink>) -> Self {
    return appendStyle(FlexShrink(value))
  }

  public func flexWrap(_ value: Value<FlexWrap>) -> Self {
    return appendStyle(FlexWrap(value))
  }

  public func justifyContent(_ value: Value<JustifyContent>) -> Self {
    return appendStyle(JustifyContent(value))
  }

  public func order(_ value: Value<Order>) -> Self {
    return appendStyle(Order(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Font
extension Tag {
  public func font(_ value: Value<Font>) -> Self {
    return appendStyle(Font(value))
  }

  public func font(
    style: Value<FontStyle> = .default,
    variant: Value<FontVariant> = .default,
    weight: Value<FontWeight> = .default,
    size: Value<FontSize>,
    family: Value<FontFamily>
  ) -> Self {
    return appendStyle (
      Font(
        style: style,
        variant: variant,
        weight: weight,
        size: size,
        family: family
      )
    )
  }

  public func font(
    style: Value<FontStyle> = .default,
    variant: Value<FontVariant> = .default,
    weight: Value<FontWeight> = .default,
    lineHeight: Value<LineHeight>,
    family: Value<FontFamily>
  ) -> Self {
    return appendStyle(
      Font(
        style: style,
        variant: variant,
        weight: weight,
        lineHeight: lineHeight,
        family: family
      )
    )
  }

  public func fontFamily(_ value: Value<FontFamily>) -> Self {
    return appendStyle(FontFamily(value))
  }

  public func fontFeatureSettings(_ value: String) -> Self {
    return appendStyle(FontFeatureSettings(value))
  }

  public func fontKerning(_ value: Value<FontKerning>) -> Self {
    return appendStyle(FontKerning(value))
  }

  public func fontSize(_ value: Value<FontSize>) -> Self {
    return appendStyle(FontSize(value))
  }

  public func fontSizeAdjust(_ value: Value<FontSizeAdjust>) -> Self {
    return appendStyle(FontSizeAdjust(value))
  }

  public func fontStretch(_ value: Value<FontStretch>) -> Self {
    return appendStyle(FontStretch(value))
  }

  public func fontStyle(_ value: Value<FontStyle>) -> Self {
    return appendStyle(FontStyle(value))
  }

  public func fontVariant(_ value: Value<FontVariant>) -> Self {
    return appendStyle(FontVariant(value))
  }

  public func fontVariantCaps(_ value: Value<FontVariantCaps>) -> Self {
    return appendStyle(FontVariantCaps(value))
  }

  public func fontWeight(_ value: Value<FontWeight>) -> Self {
    return appendStyle(FontWeight(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: GeneratedContent
extension Tag {
  public func content(_ value: Value<Css.Content>) -> Self {
    return appendStyle(Css.Content(value))
  }

  public func quotes(_ value: Value<Quotes>) -> Self {
    return appendStyle(Quotes(value))
  }

  public func counterReset(_ value: Value<CounterReset>) -> Self {
    return appendStyle(CounterReset(value))
  }

  public func counterIncrement(_ value: Value<CounterIncrement>) -> Self {
    return appendStyle(CounterIncrement(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: List

public protocol ContainsLi {}
extension Ol: ContainsLi {}
extension Ul: ContainsLi {}

extension Tag where Self: ContainsLi {
  public func listStyle(_ value: Value<ListStyle>) -> Self {
    return appendStyle(ListStyle(value))
  }

  public func listStyle(
    type: Value<ListStyleType> = .default,
    position: Value<ListStylePosition> = .default,
    image: Value<ListStyleImage> = .default
  ) -> Self {
    return appendStyle(ListStyle(type: type, position: position, image: image))
  }

  public func listStyleType(_ value: Value<ListStyleType>) -> Self {
    return appendStyle(ListStyleType(value))
  }

  public func listStylePosition(_ value: Value<ListStylePosition>) -> Self {
    return appendStyle(ListStylePosition(value))
  }

  public func listStyleImage(_ value: Value<ListStyleImage>) -> Self {
    return appendStyle(ListStyleImage(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Margin
extension Tag {
  public func margin(_ value: Value<Margin>) -> Self {
    return appendStyle(Margin(value))
  }

  public func margin(_ topBottom: Value<CSSLength>, _ leftRight: Value<CSSLength>) -> Self {
    return appendStyle(Margin(topBottom, leftRight))
  }

  public func margin(_ top: Value<CSSLength>, _ leftRight: Value<CSSLength>, _ bottom: Value<CSSLength>) -> Self {
    return appendStyle(Margin(top, leftRight, bottom))
  }

  public func margin(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) -> Self {
    return appendStyle(Margin(top, right, bottom, left))
  }

  public func marginBottom(_ value: Value<MarginBottom>) -> Self {
    return appendStyle(MarginBottom(value))
  }

  public func marginLeft(_ value: Value<MarginLeft>) -> Self {
    return appendStyle(MarginLeft(value))
  }

  public func marginRight(_ value: Value<MarginRight>) -> Self {
    return appendStyle(MarginRight(value))
  }

  public func marginTop(_ value: Value<MarginTop>) -> Self {
    return appendStyle(MarginTop(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: MultiColumn
extension Tag {
  public func columnCount(_ value: Value<ColumnCount>) -> Self {
    return appendStyle(ColumnCount(value))
  }

  public func columnFill(_ value: Value<ColumnFill>) -> Self {
    return appendStyle(ColumnFill(value))
  }

  public func columnGap(_ value: Value<ColumnGap>) -> Self {
    return appendStyle(ColumnGap(value))
  }

  public func columnRule(_ value: Value<ColumnRule>) -> Self {
    return appendStyle(ColumnRule(value))
  }

  public func columnRule(
    width: Value<ColumnRuleWidth> = .medium,
    style: Value<ColumnRuleStyle> = .none,
    color: Value<ColumnRuleColor> = .default
  ) -> Self {
    return appendStyle(ColumnRule(width: width, style: style, color: color))
  }

  public func columnRuleColor(_ value: Value<ColumnRuleColor>) -> Self {
    return appendStyle(ColumnRuleColor(value))
  }

  public func columnRuleStyle(_ value: Value<ColumnRuleStyle>) -> Self {
    return appendStyle(ColumnRuleStyle(value))
  }

  public func columnRuleWidth(_ value: Value<ColumnRuleWidth>) -> Self {
    return appendStyle(ColumnRuleWidth(value))
  }

  public func columnSpan(_ value: Value<ColumnSpan>) -> Self {
    return appendStyle(ColumnSpan(value))
  }

  public func columnWidth(_ value: Value<ColumnWidth>) -> Self {
    return appendStyle(ColumnWidth(value))
  }

  public func columns(_ value: Value<Columns>) -> Self {
    return appendStyle(Columns(value))
  }

  public func columns(
    width: Value<ColumnWidth> = .default,
    count: Value<ColumnCount> = .default
  ) -> Self {
    return appendStyle(Columns(width: width, count: count))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Border
extension Tag {
  public func outline(_ value: Value<Outline>) -> Self {
    return appendStyle(Outline(value))
  }

  public func outline(
    width: Value<OutlineWidth> = .medium,
    style: Value<OutlineStyle> = .none,
    color: Value<OutlineColor> = .default
  ) -> Self {
    return appendStyle(Outline(width: width, style: style, color: color))
  }

  public func outlineColor(_ value: Value<OutlineColor>) -> Self {
    return appendStyle(OutlineColor(value))
  }

  public func outlineOffset(_ value: Value<OutlineOffset>) -> Self {
    return appendStyle(OutlineOffset(value))
  }

  public func outlineStyle(_ value: Value<OutlineStyle>) -> Self {
    return appendStyle(OutlineStyle(value))
  }

  public func outlineWidth(_ value: Value<OutlineWidth>) -> Self {
    return appendStyle(OutlineWidth(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Padding
extension Tag {
  public func padding(_ value: Value<Padding>) -> Self {
    return appendStyle(Padding(value))
  }

  public func padding(_ topBottom: Value<CSSLength>, _ leftRight: Value<CSSLength>) -> Self {
    return appendStyle(Padding(topBottom, leftRight))
  }

  public func padding(_ top: Value<CSSLength>, _ leftRight: Value<CSSLength>, _ bottom: Value<CSSLength>) -> Self {
    return appendStyle(Padding(top, leftRight, bottom))
  }

  public func padding(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) -> Self {
    return appendStyle(Padding(top, right, bottom, left))
  }

  public func paddingBottom(_ value: Value<PaddingBottom>) -> Self {
    return appendStyle(PaddingBottom(value))
  }

  public func paddingLeft(_ value: Value<PaddingLeft>) -> Self {
    return appendStyle(PaddingLeft(value))
  }

  public func paddingRight(_ value: Value<PaddingRight>) -> Self {
    return appendStyle(PaddingRight(value))
  }

  public func paddingTop(_ value: Value<PaddingTop>) -> Self {
    return appendStyle(PaddingTop(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Print
extension Tag {
  public func breakAfter(_ value: Value<BreakAfter>) -> Self {
    return appendStyle(BreakAfter(value))
  }

  public func breakBefore(_ value: Value<BreakBefore>) -> Self {
    return appendStyle(BreakBefore(value))
  }

  public func breakInside(_ value: Value<BreakInside>) -> Self {
    return appendStyle(BreakInside(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Text
extension Tag {
  public func textAlign(_ value: Value<TextAlign>) -> Self {
    return appendStyle(TextAlign(value))
  }

  public func textLastAlign(_ value: Value<TextAlignLast>) -> Self {
    return appendStyle(TextAlignLast(value))
  }

  public func textDecoration(_ value: Value<TextDecoration>) -> Self {
    return appendStyle(TextDecoration(value))
  }

  public func textDecoration(
    line: Value<TextDecorationLine> = .none,
    color: Value<TextDecorationColor> = .currentColor,
    style: Value<TextDecorationStyle> = .solid
  ) -> Self {
    return appendStyle(TextDecoration(line: line, color: color, style: style))
  }

  public func textDecorationColor(_ value: Value<TextDecorationColor>) -> Self {
    return appendStyle(TextDecorationColor(value))
  }

  public func textDecorationLine(
    _ value: Value<TextDecorationLine>,
    _ moreValues: Value<TextDecorationLine> ...
  ) -> Self {
    return appendStyle(TextDecorationLine([value] + moreValues))
  }

  public func textDecorationStyle(_ value: Value<TextDecorationStyle>) -> Self {
    return appendStyle(TextDecorationStyle(value))
  }

  public func textIndent(_ value: Value<TextIndent>) -> Self {
    return appendStyle(TextIndent(value))
  }

  public func textJustify(_ value: Value<TextJustify>) -> Self {
    return appendStyle(TextJustify(value))
  }

  public func textOverflow(_ value: Value<TextOverflow>) -> Self {
    return appendStyle(TextOverflow(value))
  }

  public func textShadow(_ value: Value<TextShadow>) -> Self {
    return appendStyle(TextShadow(value))
  }

  public func textShadow(
    _ hShadow: Value<CSSLength>,
    _ vShadow: Value<CSSLength>,
    _ blurRadius: Value<CSSLength> = .px(0),
    _ color: Value<CSSColor>
  ) -> Self {
    return appendStyle(TextShadow(hShadow, vShadow, blurRadius, color))
  }

  public func textTransform(_ value: Value<TextTransform>) -> Self {
    return appendStyle(TextTransform(value))
  }

  public func lineHeight(_ value: Value<LineHeight>) -> Self {
    return appendStyle(LineHeight(value))
  }

  public func letterSpacing(_ value: Value<LetterSpacing>) -> Self {
    return appendStyle(LetterSpacing(value))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Transform
extension Tag {
  public func backfaceVisibility(_ value: Value<BackfaceVisibility>) -> Self {
    return appendStyle(BackfaceVisibility(value))
  }

  public func transformOrigin(_ value: Value<TransformOrigin>) -> Self {
    return appendStyle(TransformOrigin(value))
  }

  public func transformOrigin(_ x: Value<CSSXAxis>, _ y: Value<CSSYAxis>) -> Self {
    return appendStyle(TransformOrigin(x, y))
  }

  public func transformOrigin(_ x: Value<CSSXAxis>, _ y: Value<CSSYAxis>, _ z: Value<CSSZAxis>) -> Self {
    return appendStyle(TransformOrigin(x, y, z))
  }

  public func transformStyle(_ value: Value<TransformStyle>) -> Self {
    return appendStyle(TransformStyle(value))
  }

  public func transform(_ value: Value<Transform>) -> Self {
    return appendStyle(Transform(value))
  }

  public func transform(_ function: (Value<Transform>, Bool), _ moreFunctions: (Value<Transform>, Bool) ...) -> Self {
    return appendStyle(Transform([function] + moreFunctions))
  }

  public func transform(_ functions: Array<(Value<Transform>, Bool)>) -> Self {
    return appendStyle(Transform(functions))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: Transition
extension Tag {
  public func transition(_ value: Value<Transition>) -> Self {
    return appendStyle(Transition(value))
  }

  public func transition(
    property: Value<TransitionProperty> = .default,
    duration: Value<TransitionDuration> = .default,
    timingFunction: Value<TransitionTimingFunction> = .default,
    delay: Value<TransitionDelay> = .default
  ) -> Self {
    return appendStyle(
      Transition(
        property: property,
        duration: duration,
        timingFunction: timingFunction,
        delay: delay
      )
    )
  }

  public func transitionDelay(_ value: Value<TransitionDelay>) -> Self {
    return appendStyle(TransitionDelay(value))
  }

  public func transitionDuration(_ value: Value<TransitionDuration>) -> Self {
    return appendStyle(TransitionDuration(value))
  }

  public func transitionProperty(_ value: Value<TransitionProperty>) -> Self {
    return appendStyle(TransitionProperty(value))
  }

  public func transitionTimingFunction(_ value: Value<TransitionTimingFunction>) -> Self {
    return appendStyle(TransitionTimingFunction(value))
  }

  public func transitionTimingFunction(steps count: Int, at point: TransitionTimingFunctionPoint = .end) -> Self {
    return appendStyle(TransitionTimingFunction(.steps(count, at: point)))
  }

  public func transitionTimingFunction(_ X1: Double, _ Y1: Double, _ X2: Double, _ Y2: Double) -> Self {
    return appendStyle(TransitionTimingFunction(.cubicBezier(X1, Y1, X2, Y2)))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: VisualFormatting
extension Tag {
  public func display(_ value: Value<Display>) -> Self {
    return appendStyle(Display(value))
  }

  public func position(_ value: Value<Position>) -> Self {
    return appendStyle(Position(value))
  }

  public func top(_ value: Value<Top>) -> Self {
    return appendStyle(Top(value))
  }

  public func right(_ value: Value<Right>) -> Self {
    return appendStyle(Right(value))
  }

  public func bottom(_ value: Value<Bottom>) -> Self {
    return appendStyle(Bottom(value))
  }

  public func left(_ value: Value<Left>) -> Self {
    return appendStyle(Left(value))
  }

  public func float(_ value: Value<Float>) -> Self {
    return appendStyle(Float(value))
  }

  public func clear(_ value: Value<Clear>) -> Self {
    return appendStyle(Clear(value))
  }

  public func zIndex(_ value: Value<ZIndex>) -> Self {
    return appendStyle(ZIndex(value))
  }

  public func overflow(_ value: Value<Overflow>) -> Self {
    return appendStyle(Overflow(value))
  }

  public func overflowX(_ value: Value<OverflowX>) -> Self {
    return appendStyle(OverflowX(value))
  }

  public func overflowY(_ value: Value<OverflowY>) -> Self {
    return appendStyle(OverflowY(value))
  }

  public func clipPath(_ value: String) -> Self {
    return appendStyle(ClipPath(value))
  }

  public func visibility(_ value: Value<Visibility>) -> Self {
    return appendStyle(Visibility(value))
  }

  public func boxDecorationBreak(_ value: Value<BoxDecorationBreak>) -> Self {
    return appendStyle(BoxDecorationBreak(value))
  }

  public func boxShadow(_ value: Value<BoxShadow>) -> Self {
    return appendStyle(BoxShadow(value))
  }

  public func boxShadow(
    _ hShadow: Value<CSSLength>,
    _ vShadow: Value<CSSLength>,
    _ blurRadius: Optional<Value<CSSLength>> = nil,
    _ spreadRadius: Optional<Value<CSSLength>> = nil,
    _ color: Value<CSSColor> = .black
  ) -> Self {
    return appendStyle(BoxShadow(hShadow, vShadow, blurRadius, spreadRadius, color))
  }

  public func boxSizing(_ value: Value<BoxSizing>) -> Self {
    return appendStyle(BoxSizing(value))
  }

  public func caretColor(_ value: Value<CaretColor>) -> Self {
    return appendStyle(CaretColor(value))
  }

  public func cursor(_ value: Value<Cursor>) -> Self {
    return appendStyle(Cursor(value))
  }
}