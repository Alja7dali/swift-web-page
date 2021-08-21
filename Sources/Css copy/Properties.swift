/// ------------------------------------------------------------------------ ///
///                                 Animation                                ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Animation 
/// The animation CSS property is a shorthand property for `animation-name`,
/// `animation-duration`, `animation-timing-function`, `animation-delay`,
/// `animation-iteration-count`, `animation-direction`, `animation-fill-mode`
/// and `animation-play-state`.
extension Property where Kind == Key.Animation {
  public init(
    name: Value<Key.AnimationName> = .default,
    duration: Value<Key.AnimationDuration> = .default,
    timingFunction: Value<Key.AnimationTimingFunction> = .default,
    delay: Value<Key.AnimationDelay> = .default,
    iterationCount: Value<Key.AnimationIterationCount> = .default,
    direction: Value<Key.AnimationDirection> = .default,
    fillMode: Value<Key.AnimationFillMode> = .default,
    playState: Value<Key.AnimationPlayState> = .default
  ) {
    self.init([
      name.rawValue,
      duration.rawValue,
      timingFunction.rawValue,
      delay.rawValue,
      iterationCount.rawValue,
      direction.rawValue,
      fillMode.rawValue,
      playState.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationDelay
/// The `animation-delay` CSS property defines when the animation will start
/// (e.g. a value of 2s, indicates that the animation will begin 2 seconds
/// after it is applied). The value of this property can be specified in
/// seconds (s) or milliseconds (ms).
extension Property where Kind == Key.AnimationDelay {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationDirection
/// The `animation-direction` CSS property specifies whether the animation
/// should play in reverse on alternate cycles or not.
extension Property where Kind == Key.AnimationDirection {}

public extension Value where Kind == Key.AnimationDirection {
  static let reverse: Self = "reverse"
  static let alternate: Self = "alternate"
  static let alternateReverse: Self = "alternate-reverse"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationDuration
/// The `animation-duration` CSS property specifies the number of seconds (s)
/// or milliseconds (ms) an animation should take to complete one cycle.
extension Property where Kind == Key.AnimationDuration {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationFillMode
/// The `animation-fill-mode` CSS property specifies how a CSS animation should
/// apply styles to its target before and after it is executing.
extension Property where Kind == Key.AnimationFillMode {}

public extension Value where Kind == Key.AnimationFillMode {
  static let forwards: Self = "forwards"
  static let backwards: Self = "backwards"
  static let both: Self = "both"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationIterationCount
/// The `animation-iteration-count` CSS property specifies the number of times
/// an animation cycle should be played before stopping.
extension Property where Kind == Key.AnimationIterationCount {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationName
/// The `animation-name` CSS property specifies the name of @keyframes defined
/// animations that should be applied to the selected element.
extension Property where Kind == Key.AnimationName {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationPlayState
/// The `animation-play-state` property specifies whether an animation is
/// playing or paused.
extension Property where Kind == Key.AnimationPlayState {}

public extension Value where Kind == Key.AnimationPlayState {
  static let paused: Self = "paused"
  static let running: Self = "running"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationTimingFunction
/// The `animation-timing-function` CSS property specifies how a CSS animation
/// should progress over the duration of each cycle.
extension Property where Kind == Key.AnimationTimingFunction {}

public enum AnimationTimingFunctionPoint: String { case start, end }

public extension Value where Kind == Key.AnimationTimingFunction {
  static let linear: Self = "linear"
  static let ease: Self = "ease"
  static let easeIn: Self = "ease-in"
  static let easeOut: Self = "ease-out"
  static let easeInOut: Self = "ease-in-out"
  static let stepStart: Self = "step-start"
  static let stepEnd: Self = "step-end"

  static func steps(_ count: Int, at point: AnimationTimingFunctionPoint) -> Self {
    return .init("steps(\(naturalNumber(count)),\(point.rawValue))")
  }

  static func cubicBezier(
    _ X1: Double, _ Y1: Double, _ X2: Double, _ Y2: Double
  ) -> Self {
    let x1 = prettyDescription(X1)
    let y1 = prettyDescription(Y1)
    let x2 = prettyDescription(X2)
    let y2 = prettyDescription(Y2)
    return .init("cubic-bezier(\(x1),\(y1),\(x2),\(y2))")
  }
}

/// ------------------------------------------------------------------------ ///
///                                Background                                ///
/// ------------------------------------------------------------------------ ///

/// MARK - Background
/// The background CSS property is a shorthand property for setting the
/// individual background properties i.e. `background-image`,
/// `background-position`, `background-size`, `background-repeat`,
/// `background-attachment`, `background-origin`, `background-clip`
/// and `background-color` in a single declaration.
extension Property where Kind == Key.Background {
  /// TODO: make `repeat: [BackgroundRepeat]` as NonEmptyArray
  public init(
    color: Value<Key.BackgroundColor> = .default,
    image: Value<Key.BackgroundImage> = .default,
    position: Value<Key.BackgroundPosition> = .default,
    size: Value<Key.BackgroundSize> = .default,
    `repeat`: [Value<Key.BackgroundRepeat>] = [.default],
    origin: Value<Key.BackgroundOrigin> = .default,
    clip: Value<Key.BackgroundClip> = .default,
    attachment: Value<Key.BackgroundAttachment> = .default
  ) {
    self.init([
      color.rawValue,
      image.rawValue,
      position.rawValue,
      size.rawValue,
      (`repeat`).map(\.rawValue).joined(separator: " "),
      origin.rawValue,
      clip.rawValue,
      attachment.rawValue
    ].joined(separator: " "))
  }

  @_disfavoredOverload
  public init(
    color: Value<Key.BackgroundColor> = .default,
    image: Value<Key.BackgroundImage> = .default,
    position: Value<Key.BackgroundPosition> = .default,
    size: Value<Key.BackgroundSize> = .default,
    `repeat`: Value<Key.BackgroundRepeat> = .default,
    _ moreRepeatings: Value<Key.BackgroundRepeat> ...,
    origin: Value<Key.BackgroundOrigin> = .default,
    clip: Value<Key.BackgroundClip> = .default,
    attachment: Value<Key.BackgroundAttachment> = .default
  ) {
    self.init(
      color: color,
      image: image,
      position: position,
      size: size,
      repeat: [`repeat`] + moreRepeatings,
      origin: origin,
      clip: clip,
      attachment: attachment
    )
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundAttachment
/// The `background-attachment` CSS property defines whether the background
/// image scrolls with the document, or remains fixed to the viewing area.
extension Property where Kind == Key.BackgroundAttachment {}

public extension Value where Kind == Key.BackgroundAttachment {
  static let scroll: Self = "scroll"
  static let fixed: Self = "scroll"
  static let local: Self = "scroll"
}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundBlendMode
/// The `background-blend-mode` property defines the blending mode of each
/// background layer (color and/or image).
extension Property where Kind == Key.BackgroundBlendMode {}

public extension Value where Kind == Key.BackgroundBlendMode {
  static let multiply: Self = "multiply"
  static let screen: Self = "screen"
  static let overlay: Self = "overlay"
  static let darken: Self = "darken"
  static let lighten: Self = "lighten"
  static let colorDodge: Self = "color-dodge"
  static let saturation: Self = "saturation"
  static let color: Self = "color"
  static let luminosity: Self = "luminosity"
}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundClip
/// The `background-clip` CSS property specifies whether an element's
/// background, either the color or image, extends underneath it's border
/// or not.
extension Property where Kind == Key.BackgroundClip {}

public extension Value where Kind == Key.BackgroundClip {
  static let borderBox: Self = "border-box"
  static let paddingBox: Self = "padding-box"
  static let contentBox: Self = "content-box"
}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundColor
/// The `background-color` CSS property sets the background color of an element.
/// You can set color of the background either through a color value or the
/// keyword transparent.
///
/// The background of an element is the total size of the element, including
/// padding and border (but not the margin). See the box model.
extension Property where Kind == Key.BackgroundColor {}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundImage
/// The `background-image` CSS property sets the background image for an
/// element. It is often more convenient to use the shorthand background\
/// property.
extension Property where Kind == Key.BackgroundImage {
  // The URL to the image. To specify more than one image,
  // separate the URLs with a comma
  public init(url link: String) {
    self.init("url(\"\(link)\")")
  }

  @_disfavoredOverload
  public init(url link: String, _ moreLinks: String ...) {
    self.init(url: [link] + moreLinks)
  }

  /// TODO: make it NonEmptyArray<String>
  public init(url links: Array<String>) {
    self.init(links.map { "url(\"\($0)\")" }.joined(separator: ","))
  }

  /// FIXME
  /// Sets a linear gradient as the background image.
  /// Define at least two colors (top to bottom)
  //case linear-gradient()
  ///
  /// Sets a radial gradient as the background image.
  /// Define at least two colors (center to edges)
  //case radial-gradient()
  ///
  /// Repeats a linear gradient
  //case repeating-linear-gradient()
  ///
  /// Repeats a radial gradient
  //case repeating-radial-gradient()
}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundOrigin
/// The `background-origin` CSS property specifies the positioning area of the
/// background, that is the position of the origin of an image specified using
/// the `background-image` property.
extension Property where Kind == Key.BackgroundOrigin {}

public extension Value where Kind == Key.BackgroundOrigin {
  static let paddingBox: Self = "padding-box"
  static let borderBox: Self = "border-box"
  static let contentBox: Self = "content-box"
}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundPosition
/// The `background-position` CSS property sets the initial position
/// (i.e. origin) of the element's `background-image`. It is often more
/// convenient to use the shorthand background property.
extension Property where Kind == Key.BackgroundPosition {
  /// If you only specify one keyword, the other value will be "center"
  public init(_ x: Value<CSSLength>, _ y: Value<CSSLength> = .auto) {
    self.init("\(x.rawValue) \(y.rawValue)")
  }

  /// The first value is the horizontal position and the second
  /// value is the vertical. The top left corner is 0 0. Units
  /// can be pixels (0px 0px) or any other CSS units. If you only
  /// specify one value, the other value will be 50%. You can
  /// mix % and positions
  public init(_ horizontal: Value<CSSSide>, _ vertical: Value<CSSSide> = .center) {
    self.init("\(horizontal.rawValue) \(vertical.rawValue)")
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundRepeat
/// The `background-repeat` CSS property specifies whether the
/// `background-image` is repeated or tiled after it has been sized and
/// positioned, and how. It is often more convenient to use the shorthand
/// background property.
extension Property where Kind == Key.BackgroundRepeat {
  @_disfavoredOverload
  public init(_ value: Value<Key.BackgroundRepeat>, _ moreValues: Value<Key.BackgroundRepeat> ...) {
    self.init([value] + moreValues)
  }

  /// TODO: make it NonEmptyArray<Value>
  public init(_ values: [Value<Key.BackgroundRepeat>]) {
    self.init(values.map(\.rawValue).joined(separator: " "))
  }
}

public extension Value where Kind == Key.BackgroundRepeat {
  static let `repeat`: Self = "repeat"
  static let repeatX: Self = "repeat-x"
  static let repeatY: Self = "repeat-y"
  static let noRepeat: Self = "no-repeat"
  static let space: Self = "space"
  static let round: Self = "round"
}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundSize
/// The `background-size` CSS property specifies the size of the background
/// images.
extension Property where Kind == Key.BackgroundSize {
  /// Sets the width and height of the background image. The first value sets
  /// the width, the second value sets the height. If only one value is given,
  /// the second is set to "auto"
  public init(_ width: Value<CSSLength>, _ height: Value<CSSLength> = .auto) {
    self.init("\(width.rawValue) \(height.rawValue)")
  }
}

public extension Value where Kind == Key.BackgroundSize {
  static let cover: Self = "cover"
  static let contain: Self = "contain"
}

// /// ------------------------------------------------------------------------ ///
// ///                                   Border                                 ///
// /// ------------------------------------------------------------------------ ///

/// MARK: - Border
/// The `border` property sets the width, style, and color for all four sides
/// of an element's border. It is a shorthand property for setting the
/// individual border properties i.e. z, border-style, and border-color in a
/// single declaration.
extension Property where Kind == Key.Border {
  public init(
    width: Value<Key.BorderWidth> = .medium,
    style: Value<Key.BorderStyle> = .none,
    color: Value<Key.BorderColor> = .black
  ) {
    self.init([
      width.rawValue,
      style.rawValue,
      color.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderBottom
/// The `border-bottom` CSS property sets the width, style, and color of the
/// bottom border of an element. It is a shorthand property for setting the
/// individual bottom border properties i.e. `border-bottom-width`,
/// `border-bottom-style`, and `border-bottom-color` at once.
extension Property where Kind == Key.BorderBottom {
  public init(
    width: Value<Key.BorderWidth> = .medium,
    style: Value<Key.BorderStyle> = .none,
    color: Value<Key.BorderColor> = .black
  ) {
    self.init([
      width.rawValue,
      style.rawValue,
      color.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderBottomColor
/// The `border-bottom-color` CSS property sets the color of an element's
/// bottom border individually. However in many cases the shorthand CSS
/// properties like `border-color` or `border-bottom` are more convenient to
/// use and preferable.
extension Property where Kind == Key.BorderBottomColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderBottomLeftRadius
/// The `border-bottom-left-radius` CSS property sets the rounded shape for the
/// `bottom-left` corner of an element border box.
extension Property where Kind == Key.BorderBottomLeftRadius {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderBottomRightRadius
/// The `border-bottom-right-radius` CSS property sets the rounded shape for
/// the `bottom-right` corner of an element border box.
extension Property where Kind == Key.BorderBottomRightRadius {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderBottomStyle
/// The `border-bottom-style` CSS property sets the style of an element's
/// bottom border individually. However in many cases the shorthand CSS
/// properties like `border-style` or `border-bottom` are more convenient to
/// use and preferable.
extension Property where Kind == Key.BorderBottomStyle {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderBottomWidth
/// The `border-bottom-width` CSS property sets the width of an element's
/// bottom border individually. However in many cases the shorthand CSS
/// properties like `border-width` or `border-bottom` are more convenient to
/// use and preferable.
extension Property where Kind == Key.BorderBottomWidth {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderCollapse
/// The `border-collapse` CSS property specifies whether the cell borders of
/// a table are collapsed in a single border or separated as usual.
///
/// There are two distinct models for setting borders on table cells in CSS.
///
/// ``Separated border model``
/// In this model, each table cell has an individual border.
///
/// Distance between the borders of adjoining cells given by the border-spacing
/// property.
///
/// Note: In the separated borders model only cells (and the table itself) can
///       have borders; rows, columns, row groups, and column groups cannot.
///
/// ``Collapsing border model``
/// In the collapsing borders model, adjacent table cells share borders.
///
/// Note: In the collapsing border model, it is possible to specify borders
///       that surround all or part of a cell, row, row group, column, and
///       column group.
///
/// The `border-collapse` property selects a table's border model. The value
/// separate selects the separated border model. The value collapse selects
/// the collapsing border model.
extension Property where Kind == Key.BorderCollapse {}

public extension Value where Kind == Key.BorderCollapse {
  static let separate: Self = "separate"
  static let collapse: Self = "collapse"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderColor
/// The `border-color` CSS property is a shorthand property for setting the
/// individual border color properties i.e. `border-top-color`,
/// `border-right-color`, `border-bottom-color`, and `border-left-color` in a
/// single declaration.
extension Property where Kind == Key.BorderColor {
  public init(_ topBottom: Value<CSSColor>, _ rightLeft: Value<CSSColor>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSColor>, _ rightLeft: Value<CSSColor>, _ bottom: Value<CSSColor>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSColor>, _ right: Value<CSSColor>, _ bottom: Value<CSSColor>, _ left: Value<CSSColor>) {
    self.init([
      top.rawValue,
      right.rawValue,
      bottom.rawValue,
      left.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderImage
/// The `border-image` CSS property specifies how an image is to be used in
/// place of the border styles. This is a shorthand property for setting
/// `border-image-source`, `border-image-slice`, `border-image-width`,
/// `border-image-outset` and `border-image-repeat` properties at once.
extension Property where Kind == Key.BorderImage {
  public init(
    source: Value<Key.BorderImageSource> = .default,
    slice: Value<Key.BorderImageSlice> = .default,
    width: Value<Key.BorderImageWidth> = .default,
    outset: Value<Key.BorderImageOutset> = .default,
    `repeat`: Value<Key.BorderImageRepeat> = .default
  ) {
    self.init([
      source.rawValue,
      slice.rawValue,
      width.rawValue,
      outset.rawValue,
      `repeat`.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderImageOutset
/// The `border-image-outset` CSS property specifies the amount by which the
/// border image area extends beyond the border box.
extension Property where Kind == Key.BorderImageOutset {
  public init(_ topBottom: Value<CSSUnsignedLength>, _ rightLeft: Value<CSSUnsignedLength>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSUnsignedLength>, _ rightLeft: Value<CSSUnsignedLength>, _ bottom: Value<CSSUnsignedLength>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSUnsignedLength>, _ right: Value<CSSUnsignedLength>, _ bottom: Value<CSSUnsignedLength>, _ left: Value<CSSUnsignedLength>) {
    self.init([
      top.rawValue,
      right.rawValue,
      bottom.rawValue,
      left.rawValue
    ].joined(separator: " "))
  }

  public init(_ topBottom: Double, _ rightLeft: Double) {
    self.init([
      prettyDescription(abs(topBottom)),
      prettyDescription(abs(rightLeft))
    ].joined(separator: " "))
  }

  public init(_ top: Double, _ rightLeft: Double, _ bottom: Double) {
    self.init([
      prettyDescription(abs(top)),
      prettyDescription(abs(rightLeft)),
      prettyDescription(abs(bottom))
    ].joined(separator: " "))
  }

  public init(_ top: Double, _ right: Double, _ bottom: Double, _ left: Double) {
    self.init([
      prettyDescription(abs(top)),
      prettyDescription(abs(right)),
      prettyDescription(abs(bottom)),
      prettyDescription(abs(left))
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderImageRepeat
/// The `border-image-repeat` property specifies whether the border image should
/// be repeated, rounded or stretched.
extension Property where Kind == Key.BorderImageRepeat {}

public extension Value where Kind == Key.BorderImageRepeat {
  static let stretch: Self = "stretch"
  static let `repeat`: Self = "repeat"
  static let round: Self = "round"
  static let space: Self = "space"
}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderImageSlice
/// The `border-image-slice` CSS property divides the image specified by
/// `border-image-source` in nine regions: four corners, four edges, and a
/// middle. It does this by specifying 4 inwards offsets that typically creates
/// a three by three grid.
///
/// The middle part of the border image is discarded and not used by the border
/// itself but is used as a background-image if the fill keyword is present.
extension Property where Kind == Key.BorderImageSlice {
  public init(_ topBottom: Double, _ rightLeft: Double) {
    self.init([
      prettyDescription(topBottom),
      prettyDescription(rightLeft)
    ].joined(separator: " "))
  }

  public init(_ top: Double, _ rightLeft: Double, _ bottom: Double) {
    self.init([
      prettyDescription(top),
      prettyDescription(rightLeft),
      prettyDescription(bottom)
    ].joined(separator: " "))
  }

  public init(_ top: Double, _ right: Double, _ bottom: Double, _ left: Double) {
    self.init([
      prettyDescription(top),
      prettyDescription(right),
      prettyDescription(bottom),
      prettyDescription(left)
    ].joined(separator: " "))
  }

  public init(_ topBottom: Value<CSSPercentage>, _ rightLeft: Value<CSSPercentage>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSPercentage>, _ rightLeft: Value<CSSPercentage>, _ bottom: Value<CSSPercentage>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSPercentage>, _ right: Value<CSSPercentage>, _ bottom: Value<CSSPercentage>, _ left: Value<CSSPercentage>) {
    self.init([
      top.rawValue,
      right.rawValue,
      bottom.rawValue,
      left.rawValue
    ].joined(separator: " "))
  }
}

public extension Value where Kind == Key.BorderImageSlice {
  static let fill: Self = "fill"
}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderImageSource
/// The `border-image-source` CSS property specifies the location of the image
/// to be used for the border, instead of the border styles given by the
/// `border-style` propertiey.
extension Property where Kind == Key.BorderImageSource {
  // The path to the image to be used as a border
  public init(url link: String) {
    self.init("url(\"\(link)\")")
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderImageWidth
/// The `border-image-width` CSS property specifies the width of the border.
extension Property where Kind == Key.BorderImageWidth {
  public init(_ topBottom: Value<CSSLength>, _ rightLeft: Value<CSSLength>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSLength>, _ rightLeft: Value<CSSLength>, _ bottom: Value<CSSLength>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) {
    self.init([
      top.rawValue,
      right.rawValue,
      bottom.rawValue,
      left.rawValue
    ].joined(separator: " "))
  }

  public init(_ topBottom: Double, _ rightLeft: Double) {
    self.init([
      prettyDescription(topBottom),
      prettyDescription(rightLeft)
    ].joined(separator: " "))
  }

  public init(_ top: Double, _ rightLeft: Double, _ bottom: Double) {
    self.init([
      prettyDescription(top),
      prettyDescription(rightLeft),
      prettyDescription(bottom)
    ].joined(separator: " "))
  }

  public init(_ top: Double, _ right: Double, _ bottom: Double, _ left: Double) {
    self.init([
      prettyDescription(top),
      prettyDescription(right),
      prettyDescription(bottom),
      prettyDescription(left)
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderLeft
/// The `border-left` property sets the width, style, and color of the left
/// border of an element. It is a shorthand property for setting the individual
/// left border properties i.e. `border-left-width`, `border-left-style`, and
/// `border-left-color` in a single declaration.
extension Property where Kind == Key.BorderLeft {
  public init(
    width: Value<Key.BorderWidth> = .medium,
    style: Value<Key.BorderStyle> = .none,
    color: Value<Key.BorderColor> = .black
  ) {
    self.init([
      width.rawValue,
      style.rawValue,
      color.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderLeftColor
/// The `border-left-color` CSS property sets the color of an element's left
/// border individually. However in many cases the shorthand CSS properties like
/// `border-color` or `border-left` are more convenient to use and preferable.
extension Property where Kind == Key.BorderLeftColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderLeftStyle
/// The `border-left-style` CSS property sets the style of an element's left
/// border individually. However in many cases the shorthand CSS properties
/// like `border-style` or `border-left` are more convenient to use and
/// preferable.
extension Property where Kind == Key.BorderLeftStyle {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderLeftWidth
/// The `border-left-width` CSS property sets the width of an element's left
/// border individually. However in many cases the shorthand CSS properties like
/// `border-width` or `border-left` are more convenient to use and preferable.
extension Property where Kind == Key.BorderLeftWidth {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderRadius
/// The `border-radius` CSS property sets the rounded shape for the border
/// corners of an element. It is a shorthand property for
/// `border-top-left-radius`, `border-top-right-radius`,
/// `border-bottom-right-radius`, and `border-bottom-left-radius` property.
extension Property where Kind == Key.BorderRadius {
  public init(_ topBottom: Value<CSSUnsignedLength>, _ rightLeft: Value<CSSUnsignedLength>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSUnsignedLength>, _ rightLeft: Value<CSSUnsignedLength>, _ bottom: Value<CSSUnsignedLength>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSUnsignedLength>, _ right: Value<CSSUnsignedLength>, _ bottom: Value<CSSUnsignedLength>, _ left: Value<CSSUnsignedLength>) {
    self.init([
      top.rawValue,
      right.rawValue,
      bottom.rawValue,
      left.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderRight
/// The `border-right` CSS property sets the width, style, and color of the
/// right border of an element. It is a shorthand property for setting the
/// individual right border properties i.e. `border-right-width`,
/// `border-right-style`, and `border-right-color` at once.
extension Property where Kind == Key.BorderRight {
  public init(
    width: Value<Key.BorderWidth> = .medium,
    style: Value<Key.BorderStyle> = .none,
    color: Value<Key.BorderColor> = .black
  ) {
    self.init([
      width.rawValue,
      style.rawValue,
      color.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderRightColor
/// The `border-right-color` property sets the color of an element's right
/// border individually. However in many cases the shorthand CSS properties
/// like `border-color` or `border-right` are more convenient to use and
/// preferable.
extension Property where Kind == Key.BorderRightColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderRightStyle
/// The `border-right-style` CSS property sets the style of an element's right
/// border individually. However in many cases the shorthand CSS properties
/// like `border-style` or `border-right` are more convenient to use and
/// preferable.
extension Property where Kind == Key.BorderRightStyle {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderRightWidth
/// The `border-right-width` CSS property sets the width of an element's right
/// border individually. However in many cases the shorthand CSS properties like
/// `border-width` or `border-right` are more convenient to use and preferable.
extension Property where Kind == Key.BorderRightWidth {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderSpacing
/// The `border-spacing` CSS property sets the spacing between the borders of
/// adjacent table cells using the separated border model. If the collapsing
/// border model is used, this property is ignored. See the `border-collapse`
/// property.
///
/// Specifies the distance between the borders of adjacent cells in px, cm, etc.
/// Negative values are not allowed.
///
///   - If one value is specified, it defines both the horizontal and vertical
///     spacing between cells.
///
///     If two values are specified, the first sets the horizontal spacing and
///   - the second sets the vertical spacing.
///
extension Property where Kind == Key.BorderSpacing {
  public init(_ horizontal: Value<CSSLength>, _ vertical: Value<CSSLength>) {
    self.init("\(horizontal.rawValue) \(vertical.rawValue)")
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderStyle
/// The `border-style` CSS property is a shorthand property for setting the
/// individual border style properties i.e. `border-top-style`,
/// `border-right-style`, `border-bottom-style`, and `border-left-style`
/// in a single declaration.
extension Property where Kind == Key.BorderStyle {
  public init(_ topBottom: Value<Key.BorderStyle>, _ rightLeft: Value<Key.BorderStyle>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<Key.BorderStyle>, _ rightLeft: Value<Key.BorderStyle>, _ bottom: Value<Key.BorderStyle>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<Key.BorderStyle>, _ right: Value<Key.BorderStyle>, _ bottom: Value<Key.BorderStyle>, _ left: Value<Key.BorderStyle>) {
    self.init([
      top.rawValue,
      right.rawValue,
      bottom.rawValue,
      left.rawValue
    ].joined(separator: " "))
  }
}

public extension Value where Kind == Key.BorderStyle {
  static let none: Self = "none"
  static let hidden: Self = "hidden"
  static let dotted: Self = "dotted"
  static let dashed: Self = "dashed"
  static let solid: Self = "solid"
  static let double: Self = "double"
  static let groove: Self = "groove"
  static let ridge: Self = "ridge"
  static let inset: Self = "inset"
  static let outset: Self = "outset"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderTop
/// The `border-top` CSS property sets the width, style, and color of the top
/// border of an element. It is a shorthand property for setting the individual
/// top border properties i.e. `border-top-width`, `border-top-style`, and
/// `border-top-color` in a single declaration.
extension Property where Kind == Key.BorderTop {
  public init(
    width: Value<Key.BorderWidth> = .medium,
    style: Value<Key.BorderStyle> = .none,
    color: Value<Key.BorderColor> = .black
  ) {
    self.init([
      width.rawValue,
      style.rawValue,
      color.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderTopColor
/// The `border-top-color` CSS property sets the color of an element's top
/// border individually. However in many cases the shorthand CSS properties
/// like `border-color` or `border-top` are more convenient to use and
/// preferable.
extension Property where Kind == Key.BorderTopColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderTopLeftRadius
/// The `border-top-left-radius` CSS property sets the rounded shape for the
/// "top-left" corner of an element border box.
extension Property where Kind == Key.BorderTopLeftRadius {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderTopRightRadius
/// The `border-top-right-radius` property sets the rounded shape for the
/// 'top-right' corner of an element border box.
extension Property where Kind == Key.BorderTopRightRadius {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderTopStyle
/// The `border-top-style` CSS property sets the style of an element's top
/// border individually. However in many cases the shorthand CSS properties
/// like `border-style` or `border-top` are more convenient to use and
/// preferable.
extension Property where Kind == Key.BorderTopStyle {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderTopWidth
/// The `border-top-width` property sets the width of an element's top border
/// individually. However in many cases the shorthand CSS properties like
/// `border-width` or `border-top` are more convenient to use and preferable.
extension Property where Kind == Key.BorderTopWidth {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderWidth
/// The `border-width` CSS property is a shorthand property for setting the
/// individual border width properties i.e. `border-top-width`,
/// `border-right-width`, `border-bottom-width`, and `border-left-width`
/// in a single declaration.
extension Property where Kind == Key.BorderWidth {
  public init(_ topBottom: Value<Key.BorderWidth>, _ rightLeft: Value<Key.BorderWidth>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<Key.BorderWidth>, _ rightLeft: Value<Key.BorderWidth>, _ bottom: Value<Key.BorderWidth>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<Key.BorderWidth>, _ right: Value<Key.BorderWidth>, _ bottom: Value<Key.BorderWidth>, _ left: Value<Key.BorderWidth>) {
    self.init([
      top.rawValue,
      right.rawValue,
      bottom.rawValue,
      left.rawValue
    ].joined(separator: " "))
  }
}

public extension Value where Kind == Key.BorderWidth {
  static let medium: Self = "medium"
  static let thin: Self = "thin"
  static let thick: Self = "thick"
}

/// ------------------------------------------------------------------------ ///
///                                 Color                                    ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Color
/// The `color` CSS property sets the color for an element's text content.
extension Property where Kind == Key.Color {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Opacity
/// The `opacity` CSS property specifies the transparency of an element.
extension Property where Kind == Key.Opacity {}

/// ------------------------------------------------------------------------ ///
///                               Dimension                                  ///
/// ------------------------------------------------------------------------ ///

/// MARK: -- Height
/// The `height` CSS property specifies the height of the content area of an
/// element. The content area does not include padding, borders, or margins
/// — see the CSS box model.
extension Property where Kind == Key.Height {}

extension Property where Kind == Key.MinHeight {}

extension Property where Kind == Key.MaxHeight {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- Width
/// The `width` CSS property specifies the width of the content area of an
/// element. The content area does not include padding, borders, or margins
/// — see the CSS box model.
extension Property where Kind == Key.Width {}

extension Property where Kind == Key.MinWidth {}

extension Property where Kind == Key.MaxWidth {}

/// ------------------------------------------------------------------------ ///
///                              FlexibleBox                                 ///
/// ------------------------------------------------------------------------ ///

/// MARK: - AlignContnet
/// The `align-content` CSS property aligns the flexible container's items
/// within the flex container when there is extra space on the cross-axis
/// (vertically).
extension Property where Kind == Key.AlignContent {}

public extension Value where Kind == Key.AlignContent {
  static let stretch: Self = "stretch"
  static let center: Self = "center"
  static let flexStart: Self = "flex-start"
  static let flexEnd: Self = "flex-end"
  static let spaceBetween: Self = "space-between"
  static let spaceAround: Self = "space-around"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - AlignItems
/// The `align-items` property specifies the default alignment for items within
/// the flex container.
extension Property where Kind == Key.AlignItems {}

public extension Value where Kind == Key.AlignItems {
  static let stretch: Self = "stretch"
  static let center: Self = "center"
  static let flexStart: Self = "flex-start"
  static let flexEnd: Self = "flex-end"
  static let baseline: Self = "baseline"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - AlignSelf
/// The `align-self` property specifies the default alignment for items within
/// the flex container.
extension Property where Kind == Key.AlignSelf {}

public extension Value where Kind == Key.AlignSelf {
  static let stretch: Self = "stretch"
  static let center: Self = "center"
  static let flexStart: Self = "flex-start"
  static let flexEnd: Self = "flex-end"
  static let baseline: Self = "baseline"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Flex
/// The `flex` CSS property specifies the components of a flexible length.
/// It is a shorthand property for setting the `flex-grow`, `flex-shrink` and
/// the `flex-basis` properties at once.
extension Property where Kind == Key.Flex {
  public init(
    grow: Value<Key.FlexGrow> = .default,
    shrink: Value<Key.FlexShrink> = .default,
    basis: Value<Key.FlexBasis> = .default
  ) {
    self.init([
      grow.rawValue,
      shrink.rawValue,
      basis.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FlexBasis
/// The `flex-basis` CSS property specifies the initial main size of the flex
/// item.
extension Property where Kind == Key.FlexBasis {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FlexDirection
/// The `flex-direction` CSS property specifies how flex items are placed in
/// the flex container, by setting the direction of the flex container's main
/// axis.
extension Property where Kind == Key.FlexDirection {}

public extension Value where Kind == Key.FlexDirection {
  static let row: Self = "row"
  static let rowReverse: Self = "row-reverse"
  static let column: Self = "column"
  static let columnReverse: Self = "column-reverse"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FlexFlow
/// The `flex-flow` CSS property is a shorthand property for setting the
/// `flex-direction` and `flex-wrap` individual properties at once.
extension Property where Kind == Key.FlexFlow {
  public init(
    direction: Value<Key.FlexDirection> = .default,
    wrap: Value<Key.FlexWrap> = .default
  ) {
    self.init([
      direction.rawValue,
      wrap.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FlexGrow
/// The `flex-grow` CSS property specifies how the flex item will grow
/// relative to the other items inside the flex container.
extension Property where Kind == Key.FlexGrow {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FlexShrink
/// The `flex-shrink` CSS property specifies how the flex item will shrink
/// relative to the other items inside the flex container.
extension Property where Kind == Key.FlexShrink {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FlexWrap
/// The `flex-wrap` CSS property specifies whether the flex items are forced
/// into a single line or they wrap onto multiple lines or columns based on
/// the space available in the flex container.
extension Property where Kind == Key.FlexWrap {}

public extension Value where Kind == Key.FlexWrap {
  static let nowrap: Self = "nowrap"
  static let wrap: Self = "wrap"
  static let wrapReverse: Self = "wrap-reverse"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - JustifyContent
/// The `justify-content` CSS property specifies how flex items are aligned
/// along the main axis of the flex container after any flexible lengths and
/// auto margins have been resolved.
extension Property where Kind == Key.JustifyContent {}

public extension Value where Kind == Key.JustifyContent {
  static let center: Self = "center"
  static let flexStart: Self = "flex-start"
  static let flexEnd: Self = "flex-end"
  static let spaceBetween: Self = "space-between"
  static let spaceAround: Self = "space-around"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Order
/// The `order` CSS property specifies the order in which a flex items are
/// displayed and laid out within a flex container. Elements are laid out by
/// ascending order of the order value. Elements with the same order value are
/// laid out in the order they appear in the source code.
extension Property where Kind == Key.Order {}

/// ------------------------------------------------------------------------ ///
///                                   Font                                   ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Font
/// The `font` property is a shorthand property for:
/// 
///   `font-style`
///   `font-variant`
///   `font-weight`
///   `font-size`/`line-height`
///   `font-family`
/// 
/// The `font-size` and `font-family` values are required. If one of the other
/// values is missing, their default value are used.
extension Property where Kind == Key.Font {
  public init(
    style: Value<Key.FontStyle> = .default,
    variant: Value<Key.FontVariant> = .default,
    weight: Value<Key.FontWeight> = .default,
    size: Value<Key.FontSize>,
    family: Value<Key.FontFamily>
  ) {
    self.init([
      style.rawValue,
      variant.rawValue,
      weight.rawValue,
      size.rawValue,
      family.rawValue
    ].joined(separator: " "))
  }

  public init(
    style: Value<Key.FontStyle> = .default,
    variant: Value<Key.FontVariant> = .default,
    weight: Value<Key.FontWeight> = .default,
    lineHeight: Value<Key.LineHeight>,
    family: Value<Key.FontFamily>
  ) {
    self.init([
      style.rawValue,
      variant.rawValue,
      weight.rawValue,
      lineHeight.rawValue,
      family.rawValue
    ].joined(separator: " "))
  }
}

public extension Value where Kind == Key.Font {
  static let caption: Self = "caption"
  static let icon: Self = "icon"
  static let menu: Self = "menu"
  static let messageBox: Self = "message-box"
  static let smallCaption: Self = "small-caption"
  static let statusBar: Self = "status-bar"
}

/// FIXME: Add font types like `system`, `Times`, `serif`, etc.
/// MARK: -- FontFamily
/// The font-family property specifies the font for an element.
///
/// The font-family property can hold several font names as a "fallback" system.
/// If the browser does not support the first font, it tries the next font.
///
/// There are two types of font family names:
///
///   family-name    - The name of a font-family, like "times", "courier",
///                    "arial", etc.
///   generic-family - The name of a generic-family, like "serif",
///                    "sans-serif", "cursive", "fantasy", "monospace".
///
/// Start with the font you want, and always end with a generic family, to let
/// the browser pick a similar font in the generic family, if no other fonts
/// are available.
extension Property where Kind == Key.FontFamily {}

/// ------------------------------------------------------------------------ ///
/// MARK: - FontFeatureSettings
/// The `font-feature-settings` property allows control over advanced
/// typographic features in OpenType fonts.
extension Property where Kind == Key.FontFeatureSettings {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontKerning
/// The `font-kerning property` controls the usage of the kerning information
/// stored in a font.
///
/// Tip: Kerning defines how letters are spaced.
extension Property where Kind == Key.FontKerning {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontSize
/// The `font-size` CSS property sets the font size for the element's
/// text content.
extension Property where Kind == Key.FontSize {}

public extension Value where Kind == Key.FontSize {
  static let medium: Self = "caption"
  static let xxSmall: Self = "xx-small"
  static let xSmall: Self = "x-small"
  static let small: Self = "small"
  static let large: Self = "large"
  static let xLarge: Self = "x-large"
  static let xxLarge: Self = "xx-large"
  static let smaller: Self = "smaller"
  static let larger: Self = "larger"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontSizeAdjust
/// The `font-size-adjust` CSS property specifies that font size should be
/// chosen based on the height of lowercase letters rather than the height
/// of capital letters.
///
/// When the first-choice of a font-family specified by the author is
/// unavailable font fallback occurs, that may results in bigger or smaller
/// font size. The `font-size-adjust` property is a way to preserve the
/// readability of text in such situation. It does this by adjusting the
/// `font-size` so that the `x-height` is the same regardless of the font used.
extension Property where Kind == Key.FontSizeAdjust {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontStretch
/// The `font-stretch` CSS property selects a normal, condensed, or expanded
/// face from a font.
extension Property where Kind == Key.FontStretch {}

public extension Value where Kind == Key.FontStretch {
  static let normal: Self = "normal"
  static let ultraCondensed: Self = "ultra-condensed"
  static let extraCondensed: Self = "extra-condensed"
  static let condensed: Self = "condensed"
  static let semiCondensed: Self = "semi-condensed"
  static let semiExpanded: Self = "semi-expanded"
  static let expanded: Self = "expanded"
  static let extraExpanded: Self = "extra-expanded"
  static let ultraExpanded: Self = "ultra-expanded"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontStyle
/// This `font-style` CSS property defines the style of font for the element's
/// text content.
extension Property where Kind == Key.FontStyle {}

public extension Value where Kind == Key.FontStyle {
  static let normal: Self = "normal"
  static let italic: Self = "italic"
  static let oblique: Self = "oblique"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontVariant
/// This `font-variant` CSS property sets the variation of the font family.
extension Property where Kind == Key.FontVariant {}

public extension Value where Kind == Key.FontVariant {
  static let normal: Self = "normal"
  static let smallCaps: Self = "small-caps"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontVariantCaps
/// The `font-variant-caps` property controls the usage of alternate glyphs
/// for capital letters.
extension Property where Kind == Key.FontVariantCaps {}

public extension Value where Kind == Key.FontVariantCaps {
  static let unset: Self = "unset"
  static let normal: Self = "normal"
  static let smallCaps: Self = "small-caps"
  static let allSmallCaps: Self = "all-small-caps"
  static let petiteCaps: Self = "petite-caps"
  static let allPetiteCaps: Self = "all-petite-caps"
  static let unicase: Self = "unicase"
  static let titlingCaps: Self = "titling-caps"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontWeight
/// The `font-weight` CSS property sets the weight or boldness of the font.
extension Property where Kind == Key.FontWeight {}

public extension Value where Kind == Key.FontWeight {
  static let normal: Self = "normal"
  static let bold: Self = "bold"
  static let bolder: Self = "bolder"
  static let lighter: Self = "lighter"
}

/// ------------------------------------------------------------------------ ///
///                            GeneratedContent                              ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Content
/// The `content` CSS property is used in combination with the `::before` and
/// `::after` pseudo-elements to generate content in an element.
extension Property where Kind == Key.Content {
  /// This value sets the content as a counter. See the `counter-reset` and
  /// `counter-increment` property for more information.
  public init(counter str: String) {
    self.init("counter(\(str))")
  }

  /// The value of `url()` designates an external resource (such as an image).
  /// If the resource or image can't be displayed, it is either ignored or
  /// some placeholder shows up.
  public init(url str: String) {
    self.init("url(\(str))")
  }

  /// This function inserts the value of specified attribute before or after
  /// the selected element(s). If the subject of the selector does not have
  /// the specified attribute, an empty string will be inserted.
  public init(attr str: String) {
    self.init("attr(\(str))")
  }
}

public extension Value where Kind == Key.Content {
  static let openQuote: Self = "open-quote"
  static let closeQuote: Self = "close-quote"
  static let noOpenQuote: Self = "no-open-quote"
  static let noCloseQuote: Self = "no-close-quote"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Quotes
/// The `quotes` CSS property specifies the quotation marks for the embedded
/// quotations. The quotes characters specified for this property are used for
/// the `open-quote` and `close-quote` values of the content property. 
extension Property where Kind == Key.Quotes {
  /// This value sets the content as a counter. See the `counter-reset` and
  /// `counter-increment` property for more information.
  public init(pairs pair: (String, String), _ morePairs: (String, String)...) {
    self.init(pairs: [pair] + morePairs)
  }

  /// TODO: make it NonEmptyArray
  public init(pairs: Array<(String, String)>) {
    self.init(
      pairs
        .map { "\'\($0.0)\' \'\($0.1)\'" }
        .joined(separator: " ")
    )
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - CounterReset
/// The `counter-reset` CSS property is used in combination with the
/// `counter-increment` property for creating auto-incrementing counters,
/// and with the content property to display the generated counter values.
extension Property where Kind == Key.CounterReset {}

/// ------------------------------------------------------------------------ ///
/// MARK: - CounterIncrement
/// The `counter-increment` CSS property increments one or more counter values.
/// This property is very useful for creating auto-numbering feature.
extension Property where Kind == Key.CounterIncrement {}

/// ------------------------------------------------------------------------ ///
///                                  List                                    ///
/// ------------------------------------------------------------------------ ///

/// MARK: - ListStyle
/// The `list-style` CSS property defines the display style for list items.
/// It is a shorthand property for setting the individual list properties i.e.
/// `list-style-type`, `list-style-position`, and `list-style-image` in a
/// single declaration.
extension Property where Kind == Key.ListStyle {
  public init(
    type: Value<Key.ListStyleType> = .default,
    position: Value<Key.ListStylePosition> = .default,
    image: Value<Key.ListStyleImage> = .default
  ) {
    self.init([
      type.rawValue,
      position.rawValue,
      image.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- ListStyleType
/// The `list-style-type` CSS property specifies the type of marker for the
/// list-items.
extension Property where Kind == Key.ListStyleType {}

public extension Value where Kind == Key.ListStyleType {
  /// Unordered-List-Style-Types
  static let circle: Self = "circle"
  static let disc: Self = "disc"
  static let square: Self = "square"

  /// Ordered-List-Style-Types
  static let armenian: Self = "armenian"
  static let cjkIdeographic: Self = "cjk-ideographic"
  static let decimal: Self = "decimal"
  static let decimalLeadingZero: Self = "decimal-leading-zero"
  static let georgian: Self = "georgian"
  static let hebrew: Self = "hebrew"
  static let hiragana: Self = "hiragana"
  static let hiraganaIroha: Self = "hiragana-iroha"
  static let katakana: Self = "katakana"
  static let katakanaIroha: Self = "katakana-iroha"
  static let lowerAlpha: Self = "lower-alpha"
  static let lowerGreek: Self = "lower-greek"
  static let lowerLatin: Self = "lower-latin"
  static let lowerRoman: Self = "lower-roman"
  static let upperAlpha: Self = "upper-alpha"
  static let upperGreek: Self = "upper-greek"
  static let upperLatin: Self = "upper-latin"
  static let upperRoman: Self = "upper-roman"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- ListStylePosition
/// The `list-style-position` CSS property specifies the position of `list-item`
/// marker with respect to the list item's principal block box.
extension Property where Kind == Key.ListStylePosition {}

public extension Value where Kind == Key.ListStylePosition {
  static let inside: Self = "inside"
  static let outside: Self = "outside"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- ListStyleImage
/// The `list-style-image` CSS property specifies an image to be used as a
/// list-item marker.
extension Property where Kind == Key.ListStyleImage {
  public init(url link: String) {
    self.init("url(\"\(link)\")")
  }
}

/// ------------------------------------------------------------------------ ///
///                                 Margin                                   ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Margin
/// The `margin` CSS property sets the margin on all four sides of the element.
/// It is a shorthand property for `margin-top`, `margin-right`,
/// `margin-bottom`, and `margin-left` property.
extension Property where Kind == Key.Margin {
  public init(_ topBottom: Value<CSSLength>, _ rightLeft: Value<CSSLength>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSLength>, _ rightLeft: Value<CSSLength>, _ bottom: Value<CSSLength>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) {
    self.init([
      top.rawValue,
      right.rawValue,
      bottom.rawValue,
      left.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- MarginBottom
/// The `margin-bottom` CSS property sets the bottom margin of the element.
/// However in many cases the shorthand property margin is more convenient
/// to use and preferable.
extension Property where Kind == Key.MarginBottom {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- MarginLeft
/// The `margin-left` CSS property sets the left margin of the element.
/// However in many cases the shorthand property margin is more convenient
/// to use and preferable.
extension Property where Kind == Key.MarginLeft {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- MarginRight
/// The `margin-right` CSS property sets the right margin of the element.
/// However in many cases the shorthand property margin is more convenient
/// to use and preferable.
extension Property where Kind == Key.MarginRight {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- MarginTop
/// The `margin-top` CSS property sets the top margin of the element.
/// However in many cases the shorthand property margin is more convenient
/// to use and preferable.
extension Property where Kind == Key.MarginTop {}

/// ------------------------------------------------------------------------ ///
///                                  MultiColumn                             ///
/// ------------------------------------------------------------------------ ///

/// MARK: - ColumnCount
/// The `column-count` CSS property specifies the number of columns in a
/// multi-column element.
extension Property where Kind == Key.ColumnCount {}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnFill
/// The `column-fill` CSS property specifies how the column lengths in a
/// multi-column element are affected by the content flow. Contents in a
/// multi-column layout are either balanced, which means that contents
/// in all columns will have the same height or, just take up the room as
/// much as the content needed, when using the value auto.
extension Property where Kind == Key.ColumnFill {}

public extension Value where Kind == Key.ColumnFill {
  static let balance: Self = "inbalanceside"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnGap
/// The `column-gap` CSS property specifies the gap between the columns in a
/// multi-column element. If there is a column-rule between columns, it will
/// appear in the middle of the gap.
extension Property where Kind == Key.ColumnGap {}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnRule
/// The `column-rule` CSS property specifies a straight line, or "rule", to
/// be drawn between each column. It is a shorthand property for setting the
/// individual properties i.e. `column-rule-width`, `column-rule-style` and
/// column`-rule-color` at once.
extension Property where Kind == Key.ColumnRule {
  public init(
    width: Value<Key.ColumnRuleWidth> = .medium,
    style: Value<Key.ColumnRuleStyle> = .none,
    color: Value<Key.ColumnRuleColor> = .black
  ) {
    self.init([
      width.rawValue,
      style.rawValue,
      color.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnRuleColor
/// The `column-rule-color` CSS property sets the color of all the rules
/// drawn between columns in a multi-column layout.
extension Property where Kind == Key.ColumnRuleColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnRuleStyle
/// The `column-rule-style` CSS property sets the style of the rule drawn
/// between the columns in a multi-column layout.
extension Property where Kind == Key.ColumnRuleStyle {}

public extension Value where Kind == Key.ColumnRuleStyle {
  static let none: Self = "none"
  static let hidden: Self = "hidden"
  static let dotted: Self = "dotted"
  static let dashed: Self = "dashed"
  static let solid: Self = "solid"
  static let double: Self = "double"
  static let groove: Self = "groove"
  static let ridge: Self = "ridge"
  static let inset: Self = "inset"
  static let outset: Self = "outset"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnRuleWidth
/// The `column-rule-width` CSS property sets the width of the rule drawn
/// between the columns in a multi-column layout.
extension Property where Kind == Key.ColumnRuleWidth {}

public extension Value where Kind == Key.ColumnRuleWidth {
  static let medium: Self = "medium"
  static let thin: Self = "thin"
  static let thick: Self = "thick"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnSpan
/// The `column-span` CSS property specifies how many columns an element
/// spans across in a multi-column layout. Element that spans more than one
/// column is called a spanning element.
extension Property where Kind == Key.ColumnSpan {}

public extension Value where Kind == Key.ColumnSpan {
  static let all: Self = "all"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnWidth
/// The `column-width` CSS property specifies the optimal width of the
/// columns in a multi-column element. This is not an absolute value; browser
/// may adjust the width of the column depending on the value of other
/// properties, especially column-count.
extension Property where Kind == Key.ColumnWidth {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Columns
/// The `columns` CSS property is a shorthand property for setting both the
/// `column-width` and the `column-count` properties at the same time.
extension Property where Kind == Key.Columns {
  public init(
    width: Value<Key.ColumnWidth> = .default,
    count: Value<Key.ColumnCount> = .default
  ) {
    self.init([
      width.rawValue,
      count.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
///                                  Outline                                 ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Outline
/// The `outline` property sets the width, style, and color for all four sides
/// of an element's outline. It is a shorthand property for setting the
/// individual outline properties i.e. z, outline-style, and outline-color in a
/// single declaration.
extension Property where Kind == Key.Outline {
  public init(
    width: Value<Key.OutlineWidth> = .medium,
    style: Value<Key.OutlineStyle> = .none,
    color: Value<Key.OutlineColor> = .black
  ) {
    self.init([
      width.rawValue,
      style.rawValue,
      color.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- OutlineColor
/// The `outline-color` CSS property sets the color of the outline of an
/// element. However, in many cases the shorthand property outline is more
/// convenient to use and preferable.
extension Property where Kind == Key.OutlineColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- OutlineOffset
/// The `outline-offset` CSS property is used to set the space between an
/// outline and the border edge or simply edge of an element.
extension Property where Kind == Key.OutlineOffset {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- OutlineStyle
/// The `outline-style` CSS property sets the style of the outline of an
/// element. However, in many cases the shorthand propertiey outline is more
/// convenient to use and preferable.
extension Property where Kind == Key.OutlineStyle {}

public extension Value where Kind == Key.OutlineStyle {
  static let none: Self = "none"
  static let hidden: Self = "hidden"
  static let dotted: Self = "dotted"
  static let dashed: Self = "dashed"
  static let solid: Self = "solid"
  static let double: Self = "double"
  static let groove: Self = "groove"
  static let ridge: Self = "ridge"
  static let inset: Self = "inset"
  static let outset: Self = "outset"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- OutlineWidth
/// The `outline-width` CSS property sets the width of the outline of an
/// element. However in many cases the shorthand CSS propertiey outline is
/// more convenient to use and preferable.
extension Property where Kind == Key.OutlineWidth {}

public extension Value where Kind == Key.OutlineWidth {
  static let medium: Self = "medium"
  static let thin: Self = "thin"
  static let thick: Self = "thick"
}

/// ------------------------------------------------------------------------ ///
///                                 Padding                                  ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Padding
/// The `padding` CSS property sets the padding on all four sides of the element.
/// It is a shorthand property for `padding-top`, `padding-right`,
/// `padding-bottom`, and `padding-left` property.
extension Property where Kind == Key.Padding {
  public init(_ topBottom: Value<CSSLength>, _ rightLeft: Value<CSSLength>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSLength>, _ rightLeft: Value<CSSLength>, _ bottom: Value<CSSLength>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<CSSLength>, _ right: Value<CSSLength>, _ bottom: Value<CSSLength>, _ left: Value<CSSLength>) {
    self.init([
      top.rawValue,
      right.rawValue,
      bottom.rawValue,
      left.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- PaddingBottom
/// The `padding-bottom` CSS property sets the bottom padding of the element.
/// However in many cases the shorthand property padding is more convenient
/// to use and preferable.
extension Property where Kind == Key.PaddingBottom {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- PaddingLeft
/// The `padding-left` CSS property sets the left padding of the element.
/// However in many cases the shorthand property padding is more convenient
/// to use and preferable.
extension Property where Kind == Key.PaddingLeft {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- PaddingRight
/// The `padding-right` CSS property sets the right padding of the element.
/// However in many cases the shorthand property padding is more convenient
/// to use and preferable.
extension Property where Kind == Key.PaddingRight {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- PaddingTop
/// The `padding-top` CSS property sets the top padding of the element.
/// However in many cases the shorthand property padding is more convenient
/// to use and preferable.
extension Property where Kind == Key.PaddingTop {}

/// ------------------------------------------------------------------------ ///
///                                   Print                                  ///
/// ------------------------------------------------------------------------ ///

/// MARK: - BreakAfter
/// The `break-after` CSS3 property insert page breaks after an element
/// when printing a document. This properties applies to block-level elements
/// that generate a box. It won't apply on an empty <p> that won't generate a box.
extension Property where Kind == Key.BreakAfter {}

public extension Value where Kind == Key.BreakAfter {
  static let all: Self = "all"
  static let always: Self = "always"
  static let column: Self = "column"
  static let left: Self = "left"
  static let page: Self = "page"
  static let recto: Self = "recto"
  static let region: Self = "region"
  static let right: Self = "right"
  static let verso: Self = "verso"
  static let avoid: Self = "avoid"
  static let avoidColumn: Self = "avoid-column"
  static let avoidPage: Self = "avoid-page"
  static let avoidRegion: Self = "avoid-region"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - BreakBefore
/// The `break-before` CSS3 property insert page breaks before an element
/// when printing a document. This properties applies to block-level elements
/// that generate a box. It won't apply on an empty <p> that won't generate a box.
extension Property where Kind == Key.BreakBefore {}

public extension Value where Kind == Key.BreakBefore {
  static let all: Self = "all"
  static let always: Self = "always"
  static let column: Self = "column"
  static let left: Self = "left"
  static let page: Self = "page"
  static let recto: Self = "recto"
  static let region: Self = "region"
  static let right: Self = "right"
  static let verso: Self = "verso"
  static let avoid: Self = "avoid"
  static let avoidColumn: Self = "avoid-column"
  static let avoidPage: Self = "avoid-page"
  static let avoidRegion: Self = "avoid-region"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - BreakInside
/// The `break-inside` CSS3 property force or prohibit a printing page break
/// inside an element. This properties applies to block-level elements that
/// generate a box. It won't apply on an empty <p> that won't generate a box.
extension Property where Kind == Key.BreakInside {}

public extension Value where Kind == Key.BreakInside {
  static let avoid: Self = "avoid"
  static let avoidColumn: Self = "avoid-column"
  static let avoidPage: Self = "avoid-page"
  static let avoidRegion: Self = "avoid-region"
}

/// ------------------------------------------------------------------------ ///
///                                   Text                                   ///
/// ------------------------------------------------------------------------ ///

/// MARK: - TextAlign
/// The `text-align` CSS property sets the horizontal alignment of the inline
/// content like text and images in its parent block element such as heading
/// or paragraph.
extension Property where Kind == Key.TextAlign {}

public extension Value where Kind == Key.TextAlign {
  static let left: Self = "left"
  static let right: Self = "right"
  static let center: Self = "center"
  static let justify: Self = "justify"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextAlignLast
/// The `text-align-last` CSS property specifies how the last line of a block
/// or a line right before a forced line break is aligned when `text-align`
/// is justify.
extension Property where Kind == Key.TextAlignLast {}

public extension Value where Kind == Key.TextAlignLast {
  static let left: Self = "left"
  static let right: Self = "right"
  static let center: Self = "center"
  static let justify: Self = "justify"
  static let start: Self = "start"
  static let end: Self = "end"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextDecoration
/// The `text-decoration` CSS property specifies the decorations to be applied
/// on the text content of an element such as underline, overline, etc.
extension Property where Kind == Key.TextDecoration {
  public init(
    line: Value<Key.TextDecorationLine> = .none,
    color: Value<Key.TextDecorationColor> = .currentColor,
    style: Value<Key.TextDecorationStyle> = .solid
  ) {
    self.init([
      line.rawValue,
      color.rawValue,
      style.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextDecorationColor
/// The `text-decoration-color` CSS property specifies the color of the
/// `text-decoration-line` (underlines, overlines, linethroughs) set on the
/// element.
extension Property where Kind == Key.TextDecorationColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextDecorationLine
/// The `text-decoration-line` CSS property specifies what kind of line
/// decorations are added to the element. This property can accepts one or
/// more space separated values.
extension Property where Kind == Key.TextDecorationLine {
  @_disfavoredOverload
  public init(_ value: Value<Key.TextDecorationLine>, _ moreValues: Value<Key.TextDecorationLine> ...) {
    self.init([value] + moreValues)
  }

  /// TODO: make it NonEmptyArray
  public init(_ values: Array<Value<Key.TextDecorationLine>>) {
    self.init(values.map(\.rawValue).joined(separator: " "))
  }
}

public extension Value where Kind == Key.TextDecorationLine {
  static let underline: Self = "underline"
  static let overline: Self = "overline"
  static let lineThrough: Self = "line-through"
  static let blink: Self = "blink"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextDecorationStyle
/// The `text-decoration-style` CSS property defines the style of the lines
/// specified by the `text-decoration-line` property.
extension Property where Kind == Key.TextDecorationStyle {}

public extension Value where Kind == Key.TextDecorationStyle {
  static let solid: Self = "solid"
  static let double: Self = "double"
  static let dotted: Self = "dotted"
  static let dashed: Self = "dashed"
  static let wavy: Self = "wavy"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextIndent
/// The `text-indent` CSS property specifies the indent in the first line of
/// text within an element.
extension Property where Kind == Key.TextIndent {}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextJustify
/// The `text-justify` CSS property specifies the justification method to use
/// when the `text-align` property is set to 'justify'.
extension Property where Kind == Key.TextJustify {}

public extension Value where Kind == Key.TextJustify {
  static let interWord: Self = "inter-word"
  static let interCharacter: Self = "inter-character"
  static let distribute: Self = "distribute"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextOverflow
/// The `text-overflow` CSS property determines how the text content will be
/// displayed, when it overflows the block container element that has overflow
/// other than visible.
extension Property where Kind == Key.TextOverflow {}

public extension Value where Kind == Key.TextOverflow {
  static let clip: Self = "clip"
  static let ellipsis: Self = "ellipsis"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextShadow
/// The `text-shadow` CSS property applies one or more text shadow effects to
/// the text content of an element. Each text shadow effect must specify a
/// shadow offset and may optionally specify a blur radius and a shadow color.
extension Property where Kind == Key.TextShadow {
  public init(
    _ hShadow: Value<CSSLength>,
    _ vShadow: Value<CSSLength>,
    _ blurRadius: Value<CSSLength> = .px(0),
    _ color: Value<CSSColor>
  ) {
    self.init([
      hShadow.rawValue,
      vShadow.rawValue,
      blurRadius.rawValue,
      color.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextTransform
/// The `text-transform` CSS property transforms the case of an element's text
/// content.
extension Property where Kind == Key.TextTransform {}

public extension Value where Kind == Key.TextTransform {
  static let capitalize: Self = "capitalize"
  static let uppercase: Self = "uppercase"
  static let lowercase: Self = "lowercase"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - LineHeight
/// The `line-height` CSS property sets the height (also called leading) between
/// lines of text in a block-level element such as a paragraph.
extension Property where Kind == Key.LineHeight {}

/// ------------------------------------------------------------------------ ///
/// MARK: - LetterSpacing
/// The `letter-spacing` property sets the extra spacing between the letters of
/// an element's text.
extension Property where Kind == Key.LetterSpacing {}

/// ------------------------------------------------------------------------ ///
///                                 Transform                                ///
/// ------------------------------------------------------------------------ ///

/// MARK: - BackfaceVisibility
/// The `backface-visibility` CSS property determines whether or not the
/// "back" side of a transformed element is visible when facing the user.
extension Property where Kind == Key.BackfaceVisibility {}

public extension Value where Kind == Key.BackfaceVisibility {
  static let visible: Self = "visible"
  static let hidden: Self = "hidden"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Transform
/// The `transform` CSS property applies a transformation to an element such
/// as translate, rotate, scale etc. in 2D or 3D space.
extension Property where Kind == Key.Transform {
  public init(_ tuple: (Value<Kind>, Bool)) {
    rawValue = tuple.0.rawValue
    declarations = {
      let key = String(describing: Kind.key)
      let (value, is2d) = (tuple.0.rawValue, tuple.1)
      var declarations = Declarations()
      switch is2d {
      case true:
        /// rendering 2d values
        /// ["webkit", "moz", "o", "ms"]
        declarations.append(Declaration("-webkit-\(key)", value))
        declarations.append(Declaration("-moz-\(key)", value))
        declarations.append(Declaration("-o-\(key)", value))
        declarations.append(Declaration("-ms-\(key)", value))
      case false:
        /// rendering 3d values
        /// ["webkit"]
        declarations.append(Declaration("-webkit-\(key)", value))
      }
      declarations.append(Declaration(key, value))
      return declarations
    }
  }
}

extension Value where Kind == Key.Transform {
  // Defines a 2D transformation, using a matrix of six values
  static func matrix(
    _ a: Int, _ b: Int, _ c: Int, _ d: Int, _ e: Int, _ f: Int
  ) -> (Self, Bool) {
    let values = [a,b,c,d,e,f]
      .map(\.description)
      .joined(separator: ",")
    return (.init("matrix(\(values))"), true)
  }

  // Defines a 3D transformation, using a 4x4 matrix of 16 values
  static func matrix3d(
    _ a: Int, _ b: Int, _ c: Int, _ d: Int,
    _ e: Int, _ f: Int, _ g: Int, _ h: Int,
    _ i: Int, _ j: Int, _ k: Int, _ l: Int,
    _ m: Int, _ n: Int, _ o: Int, _ p: Int
  ) -> (Self, Bool) {
    let values = [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p]
      .map(\.description)
      .joined(separator: ",")
    return (.init("matrix3d(\(values))"), false)
  }

  // Defines a 2D translation
  static func translate(
    _ x: Value<CSSLength>, _ y: Value<CSSLength>
  ) -> (Self, Bool) {
    let values = [x,y].map(\.rawValue).joined(separator: ",")
    return (.init("translate(\(values))"), true)
  }

  // Defines a 3D translation
  static func translate3d(
    _ x: Value<CSSLength>, _ y: Value<CSSLength>, _ z: Value<CSSLength>
  ) -> (Self, Bool) {
    let values = [x,y,z].map(\.rawValue).joined(separator: ",")
    return (.init("translate3d(\(values))"), false)
  }

  // Defines a translation, using only the value for the X-axis
  static func translateX(_ x: Value<CSSLength>) -> (Self, Bool) {
    return (.init("translateX(\(x.rawValue))"), true)
  }

  // Defines a translation, using only the value for the Y-axis
  static func translateY(_ y: Value<CSSLength>) -> (Self, Bool) {
    return (.init("translateY(\(y.rawValue))"), true)
  }

  // Defines a 3D translation, using only the value for the Z-axis
  static func translateZ(_ z: Value<CSSLength>) -> (Self, Bool) {
    return (.init("translateZ(\(z.rawValue))"), false)
  }

  // Defines a 2D scale transformation
  static func scale(_ x: Double, _ y: Double) -> (Self, Bool) {
    return (.init("scale(\(x),\(y))"), true)
  }

  // Defines a 3D scale transformation
  static func scale3d(_ x: Double, _ y: Double, _ z: Double) -> (Self, Bool) {
    return (.init("scale3d(\(x),\(y),\(z))"), false)
  }

  // Defines a scale transformation by giving a value for the X-axis
  static func scaleX(_ x: Double) -> (Self, Bool) {
    return (.init("scaleX(\(x))"), true)
  }

  // Defines a scale transformation by giving a value for the Y-axis
  static func scaleY(_ y: Double) -> (Self, Bool) {
    return (.init("scaleY(\(y))"), true)
  }

  // Defines a 3D scale transformation by giving a value for the Z-axis
  static func scaleZ(_ z: Double) -> (Self, Bool) {
    return (.init("scaleZ(\(z))"), false)
  }

  // Defines a 2D rotation, the angle is specified in the parameter
  static func rotate(_ angle: Value<CSSAngle>) -> (Self, Bool) {
    return (.init("rotate(\(angle.rawValue))"), true)
  }

  // Defines a 3D rotation
  static func rotate3d(
    _ x: Double, _ y: Double, _ z: Double, _ angle: Value<CSSAngle>
  ) -> (Self, Bool) {
    return (.init("rotate3d(\(x),\(y),\(z),\(angle.rawValue))"), false)
  }

  // Defines a 3D rotation along the X-axis
  static func rotateX(_ angle: Value<CSSAngle>) -> (Self, Bool) {
    return (.init("rotateX(\(angle.rawValue))"), false)
  }

  // Defines a 3D rotation along the Y-axis
  static func rotateY(_ angle: Value<CSSAngle>) -> (Self, Bool) {
    return (.init("rotateY(\(angle.rawValue))"), false)
  }

  // Defines a 3D rotation along the Z-axis
  static func rotateZ(_ angle: Value<CSSAngle>) -> (Self, Bool) {
    return (.init("rotateZ(\(angle.rawValue))"), false)
  }

  // Defines a 2D skew transformation along the X- and the Y-axis
  static func skew(_ a: Value<CSSAngle>, _ b: Value<CSSAngle>) -> (Self, Bool) {
    return (.init("skew(\(a.rawValue),\(b.rawValue))"), true)
  }

  // Defines a 2D skew transformation along the X-axis
  static func skewX(_ angle: Value<CSSAngle>) -> (Self, Bool) {
    return (.init("skewX(\(angle.rawValue))"), true)
  }

  // Defines a 2D skew transformation along the Y-axis
  static func skewY(_ angle: Value<CSSAngle>) -> (Self, Bool) {
    return (.init("skewY(\(angle.rawValue))"), true)
  }

  // Defines a perspective view for a 3D transformed element
  static func perspective(_ n: Value<CSSLength>) -> (Self, Bool) {
    return (.init("perspective(\(n.rawValue))"), false)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TransformOrigin
/// The `transform-origin` CSS property establish the origin of transformation
/// for an element.
extension Property where Kind == Key.TransformOrigin {
  public init(_ value: Value<Kind>) {
    rawValue = value.rawValue
    declarations = {
      let key = String(describing: Kind.key)
      let value = value.rawValue
      var declarations = Declarations()
      var browsersItr = Kind.browsers.makeIterator()
      while let browser = browsersItr.next() {
        declarations.append(Declaration("-\(browser)-\(key)", value))
      }
      if value.split(separator: " ").count == 2 {
        declarations.append(Declaration("-o-\(key)", value))
        declarations.append(Declaration("-ms-\(key)", value))
      }
      declarations.append(Declaration(key, value))
      return declarations
    }
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TransformStyle
/// The `transform-style` CSS property specifies whether the children of the
/// element are positioned in the 3D-space or are flattened in the plane of
/// the element. If flattened, the child elements will not exist on their own
/// in the 3D-space.
///
/// This property is only applied to child elements that have a transform
/// property specified.
extension Property where Kind == Key.TransformStyle {}

public extension Value where Kind == Key.TransformStyle {
  static let flat: Self = "flat"
  static let preserve3d: Self = "preserve-3d"
}

/// ------------------------------------------------------------------------ ///
///                                Transition                                ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Transition
extension Property where Kind == Key.Transition {
  public init(
    property: Value<Key.TransitionProperty> = .default,
    duration: Value<Key.TransitionDuration> = .default,
    timingFunction: Value<Key.TransitionTimingFunction> = .default,
    delay: Value<Key.TransitionDelay> = .default
  ) {
    self.init([
      property.rawValue,
      duration.rawValue,
      timingFunction.rawValue,
      delay.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- TransitionDelay
extension Property where Kind == Key.TransitionDelay {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- TransitionDuration
extension Property where Kind == Key.TransitionDuration {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- TransitionProperty
extension Property where Kind == Key.TransitionProperty {}

public extension Value where Kind == Key.TransitionProperty {
  static let all: Self = "all"
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- TransitionTimingFunction
/// The `transition-timing-function` CSS property specifies how a CSS transition
/// should progress over the duration of each cycle.
extension Property where Kind == Key.TransitionTimingFunction {}

public enum TransitionTimingFunctionPoint: String { case start, end }

public extension Value where Kind == Key.TransitionTimingFunction {
  static let linear: Self = "linear"
  static let ease: Self = "ease"
  static let easeIn: Self = "ease-in"
  static let easeOut: Self = "ease-out"
  static let easeInOut: Self = "ease-in-out"
  static let stepStart: Self = "step-start"
  static let stepEnd: Self = "step-end"

  static func steps(_ count: Int, at point: TransitionTimingFunctionPoint) -> Self {
    return .init("steps(\(naturalNumber(count)),\(point.rawValue))")
  }

  static func cubicBezier(
    _ X1: Double, _ Y1: Double, _ X2: Double, _ Y2: Double
  ) -> Self {
    let x1 = prettyDescription(X1)
    let y1 = prettyDescription(Y1)
    let x2 = prettyDescription(X2)
    let y2 = prettyDescription(Y2)
    return .init("cubic-bezier(\(x1),\(y1),\(x2),\(y2))")
  }
}

/// ------------------------------------------------------------------------ ///
///                             VisualFormatting                             ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Display
/// The `display` CSS property specifies the type of box generated by an element.
extension Property where Kind == Key.Display {
  public init(_ value: Value<Kind>) {
    rawValue = value.rawValue
    declarations = {
      let key = String(describing: Kind.key)
      let value = value.rawValue
      var declarations = Declarations()
      if value == "flex" || value == "inline-flex" {
        declarations.append(Declaration("-webkit-\(key)", value))
      }
      declarations.append(Declaration(key, value))
      return declarations
    }
  }
}

public extension Value where Kind == Key.Display {
  static let none: Self = "none"
  static let inline: Self = "inline"
  static let block: Self = "block"
  static let contents: Self = "contents"
  static let flex: Self = "flex"
  static let grid: Self = "grid"
  static let inlineBlock: Self = "inline-block"
  static let inlineFlex: Self = "inline-flex"
  static let inlineGrid: Self = "inline-grid"
  static let inlineTable: Self = "inline-table"
  static let listItem: Self = "list-item"
  static let runIn: Self = "run-in"
  static let table: Self = "table"
  static let tableCaption: Self = "table-caption"
  static let tableColumnGroup: Self = "table-column-group"
  static let tableHeaderGroup: Self = "table-header-group"
  static let tableFooterGroup: Self = "table-footer-group"
  static let tableRowGroup: Self = "table-row-group"
  static let tableCell: Self = "table-cell"
  static let tableColumn: Self = "table-column"
  static let tableRow: Self = "table-row"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Position
/// The `position` CSS property specifies how an element is positioned.
extension Property where Kind == Key.Position {}

public extension Value where Kind == Key.Position {
  static let `static`: Self = "static"
  static let relative: Self = "relative"
  static let absolute: Self = "absolute"
  static let fixed: Self = "fixed"
  static let sticky: Self = "sticky"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Top
/// The `top` CSS property specifies the location of the top edge of the
/// positioned element.
extension Property where Kind == Key.Top {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Right
/// The `right` CSS property specifies the location of the right edge of
/// the positioned element.
extension Property where Kind == Key.Right {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Bottom
/// The `bottom` CSS property specifies the location of the bottom edge of
/// the positioned element.
extension Property where Kind == Key.Bottom {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Left
/// The `left` CSS property specifies the location of the left edge of
/// the positioned element.
extension Property where Kind == Key.Left {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Float
/// The `float` CSS property specifies whether a box should float to the left,
/// right, or not at all.
extension Property where Kind == Key.Float {}

public extension Value where Kind == Key.Float {
  static let left: Self = "left"
  static let right: Self = "right"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Clear
/// The `clear` CSS property specifies whether a box should float to the left,
/// right, or not at all.
extension Property where Kind == Key.Clear {}

public extension Value where Kind == Key.Clear {
  static let left: Self = "left"
  static let right: Self = "right"
  static let both: Self = "both"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - ZIndex
/// The `z-index` property specifies the stack order of an element.
///
/// An element with greater stack order is always in front of an element with
/// a lower stack order.
extension Property where Kind == Key.ZIndex {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Overflow
extension Property where Kind == Key.Overflow {}

public extension Value where Kind == Key.Overflow {
  static let visible: Self = "visible"
  static let hidden: Self = "hidden"
  static let scroll: Self = "scroll"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - OverflowX
extension Property where Kind == Key.OverflowX {}

public extension Value where Kind == Key.OverflowX {
  static let visible: Self = "visible"
  static let hidden: Self = "hidden"
  static let scroll: Self = "scroll"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - OverflowY
extension Property where Kind == Key.OverflowY {}

public extension Value where Kind == Key.OverflowY {
  static let visible: Self = "visible"
  static let hidden: Self = "hidden"
  static let scroll: Self = "scroll"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - ClipPath
/// TODO: Implement me
/// https://developer.mozilla.org/en-US/docs/Web/CSS/basic-shape
/// https://developer.mozilla.org/en-US/docs/Web/CSS/clip-path#syntax
/*
  /* Keyword values */
  clip-path: none;

  /* <clip-source> values */
  clip-path: url(resources.svg#c1);

  /* <geometry-box> values */
  clip-path: margin-box;
  clip-path: border-box;
  clip-path: padding-box;
  clip-path: content-box;
  clip-path: fill-box;
  clip-path: stroke-box;
  clip-path: view-box;

  /* <basic-shape> values */
  clip-path: inset(100px 50px);
  clip-path: circle(50px at 0 100px);
  clip-path: ellipse(50px 60px at 0 10% 20%);
  clip-path: polygon(50% 0%, 100% 50%, 50% 100%, 0% 50%);
  clip-path: path('M0.5,1 C0.5,1,0,0.7,0,0.3 A0.25,0.25,1,1,1,0.5,0.3 A0.25,0.25,1,1,1,1,0.3 C1,0.7,0.5,1,0.5,1 Z');

  /* Box and shape values combined */
  clip-path: padding-box circle(50px at 0 100px);

  /* Global values */
  clip-path: inherit;
  clip-path: initial;
  clip-path: unset;
*/
extension Property where Kind == Key.ClipPath {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Visibility
/// The `visibility` property specifies whether or not an element is visible.
///
/// Tip: Hidden elements take up space on the page. Use the display property
/// to both hide and remove an element from the document layout!
extension Property where Kind == Key.Visibility {}

public extension Value where Kind == Key.Visibility {
  static let visible: Self = "visible"
  static let hidden: Self = "hidden"
  static let collapse: Self = "collapse"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - BoxDecorationBreak
extension Property where Kind == Key.BoxDecorationBreak {}

public extension Value where Kind == Key.BoxDecorationBreak {
  static let slice: Self = "slice"
  static let clone: Self = "clone"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - BoxShadow
extension Property where Kind == Key.BoxShadow {
  public init(
    _ hOffset: Value<CSSLength>,
    _ vOffset: Value<CSSLength>,
    _ blurRadius: Optional<Value<CSSLength>> = .none,
    _ spreadRadius: Optional<Value<CSSLength>> = .none,
    _ color: Value<CSSColor> = .black
  ) {
    self.init([
      hOffset.rawValue,
      vOffset.rawValue,
      blurRadius?.rawValue ?? "",
      spreadRadius?.rawValue ?? "",
      color.rawValue
    ].joined(separator: " "))
  }
}

public extension Value where Kind == Key.BoxShadow {
  static let inset: Self = "inset"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - BoxSizing
extension Property where Kind == Key.BoxSizing {}

public extension Value where Kind == Key.BoxSizing {
  static let contentBox: Self = "content-box"
  static let borderBox: Self = "border-box"
}

/// ------------------------------------------------------------------------ ///
/// MARK: - CaretColor
/// The `caret-color` property specifies the color of the cursor (caret)
/// in inputs, textareas, or any element that is editable.
extension Property where Kind == Key.CaretColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Cursor
/// The `cursor` property specifies the mouse cursor to be displayed when
/// pointing over an element.
extension Property where Kind == Key.Cursor {
  public init(url link: String, backup: Value<Key.Cursor> = .default) {
    self.init("url(\"\(link)\"),\(backup.rawValue)")
  }

  /// A comma separated list of URLs to custom cursors.
  /// Note: Always specify a generic cursor at the end of the list, in case none
  /// of the URL-defined cursors can be used
  @_disfavoredOverload
  public init(url link: String, _ moreLinks: String ..., backup: Value<Key.Cursor> = .default) {
    self.init(url: [link] + moreLinks, backup: backup)
  }

  /// TODO: make it NonEmptyArray<String>
  public init(url links: Array<String>, backup: Value<Key.Cursor> = .default) {
    let values = links.map { "url(\"\($0)\")" }.joined(separator: ",")
    self.init("\(values),\(backup.rawValue)")
  }
}

public extension Value where Kind == Key.Cursor {
  static let alias: Self = "alias"
  static let allScroll: Self = "all-scroll"
  static let cell: Self = "cell"
  static let contextMenu: Self = "context-menu"
  static let colResize: Self = "col-resize"
  static let copy: Self = "copy"
  static let crosshair: Self = "crosshair"
  static let defaultCursor: Self = "default"
  static let eResize: Self = "e-resize"
  static let ewResize: Self = "ew-resize"
  static let grab: Self = "grab"
  static let grabbing: Self = "grabbing"
  static let help: Self = "help"
  static let move: Self = "move"
  static let nResize: Self = "n-resize"
  static let neResize: Self = "ne-resize"
  static let neswResize: Self = "nesw-resize"
  static let nsResize: Self = "ns-resize"
  static let nwResize: Self = "nw-resize"
  static let nwseResize: Self = "nwse-resize"
  static let noDrop: Self = "no-drop"
  static let notAllowed: Self = "not-allowed"
  static let pointer: Self = "pointer"
  static let progress: Self = "progress"
  static let rowResize: Self = "row-resize"
  static let sResize: Self = "s-resize"
  static let seResize: Self = "se-resize"
  static let swResize: Self = "sw-resize"
  static let text: Self = "text"
  static let verticalText: Self = "vertical-text"
  static let wResize: Self = "w-resize"
  static let wait: Self = "wait"
  static let zoomIn: Self = "zoom-in"
  static let zoomOut: Self = "zoom-out"
}

