// public struct $1: Property {
//   public let rawValue: String
//   public let declarations: () -> Declarations
//   public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
//     self.rawValue = rawValue; self.declarations = declarations
//   }
// }

/// ------------------------------------------------------------------------ ///
///                                 Animation                                ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Animation 
/// The animation CSS property is a shorthand property for `animation-name`,
/// `animation-duration`, `animation-timing-function`, `animation-delay`,
/// `animation-iteration-count`, `animation-direction`, `animation-fill-mode`
/// and `animation-play-state`.
public struct Animation: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Animation {
  public init(
    name: Value<AnimationName> = .default,
    duration: Value<AnimationDuration> = .default,
    timingFunction: Value<AnimationTimingFunction> = .default,
    delay: Value<AnimationDelay> = .default,
    iterationCount: Value<AnimationIterationCount> = .default,
    direction: Value<AnimationDirection> = .default,
    fillMode: Value<AnimationFillMode> = .default,
    playState: Value<AnimationPlayState> = .default
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
public struct AnimationDelay: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension AnimationDelay {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationDirection
/// The `animation-direction` CSS property specifies whether the animation
/// should play in reverse on alternate cycles or not.
public struct AnimationDirection: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension AnimationDirection {}

public extension Value where Kind == AnimationDirection {
  static var reverse: Self { return .init("reverse") }
  static var alternate: Self { return .init("alternate") }
  static var alternateReverse: Self { return .init("alternate-reverse") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationDuration
/// The `animation-duration` CSS property specifies the number of seconds (s)
/// or milliseconds (ms) an animation should take to complete one cycle.
public struct AnimationDuration: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension AnimationDuration {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationFillMode
/// The `animation-fill-mode` CSS property specifies how a CSS animation should
/// apply styles to its target before and after it is executing.
public struct AnimationFillMode: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension AnimationFillMode {}

public extension Value where Kind == AnimationFillMode {
  static var forwards: Self { return .init("forwards") }
  static var backwards: Self { return .init("backwards") }
  static var both: Self { return .init("both") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationIterationCount
/// The `animation-iteration-count` CSS property specifies the number of times
/// an animation cycle should be played before stopping.
public struct AnimationIterationCount: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension AnimationIterationCount {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationName
/// The `animation-name` CSS property specifies the name of @keyframes defined
/// animations that should be applied to the selected element.
public struct AnimationName: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension AnimationName {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationPlayState
/// The `animation-play-state` property specifies whether an animation is
/// playing or paused.
public struct AnimationPlayState: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension AnimationPlayState {}

public extension Value where Kind == AnimationPlayState {
  static var paused: Self { return .init("paused") }
  static var running: Self { return .init("running") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- AnimationTimingFunction
/// The `animation-timing-function` CSS property specifies how a CSS animation
/// should progress over the duration of each cycle.
public struct AnimationTimingFunction: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension AnimationTimingFunction {}

public enum AnimationTimingFunctionPoint: String { case start, end }

public extension Value where Kind == AnimationTimingFunction {
  static var linear: Self { return .init("linear") }
  static var ease: Self { return .init("ease") }
  static var easeIn: Self { return .init("ease-in") }
  static var easeOut: Self { return .init("ease-out") }
  static var easeInOut: Self { return .init("ease-in-out") }
  static var stepStart: Self { return .init("step-start") }
  static var stepEnd: Self { return .init("step-end") }

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
public struct Background: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Background {
  /// TODO: make `repeat: [BackgroundRepeat]` as NonEmptyArray
  @_disfavoredOverload
  public init(
    color: Value<BackgroundColor> = .default,
    image: Value<BackgroundImage> = .default,
    position: Value<BackgroundPosition> = .default,
    size: Value<BackgroundSize> = .default,
    `repeat`: Array<Value<BackgroundRepeat>> = [.default],
    origin: Value<BackgroundOrigin> = .default,
    clip: Value<BackgroundClip> = .default,
    attachment: Value<BackgroundAttachment> = .default
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
    color: Value<BackgroundColor> = .default,
    image: Value<BackgroundImage> = .default,
    position: Value<BackgroundPosition> = .default,
    size: Value<BackgroundSize> = .default,
    `repeat`: Value<BackgroundRepeat> = .default,
    _ moreRepeatings: Value<BackgroundRepeat> ...,
    origin: Value<BackgroundOrigin> = .default,
    clip: Value<BackgroundClip> = .default,
    attachment: Value<BackgroundAttachment> = .default
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
public struct BackgroundAttachment: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BackgroundAttachment {}

public extension Value where Kind == BackgroundAttachment {
  static var scroll: Self { return .init("scroll") }
  static var fixed: Self { return .init("scroll") }
  static var local: Self { return .init("scroll") }
}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundBlendMode
/// The `background-blend-mode` property defines the blending mode of each
/// background layer (color and/or image).
public struct BackgroundBlendMode: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BackgroundBlendMode {}

public extension Value where Kind == BackgroundBlendMode {
  static var multiply: Self { return .init("multiply") }
  static var screen: Self { return .init("screen") }
  static var overlay: Self { return .init("overlay") }
  static var darken: Self { return .init("darken") }
  static var lighten: Self { return .init("lighten") }
  static var colorDodge: Self { return .init("color-dodge") }
  static var saturation: Self { return .init("saturation") }
  static var color: Self { return .init("color") }
  static var luminosity: Self { return .init("luminosity") }
}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundClip
/// The `background-clip` CSS property specifies whether an element's
/// background, either the color or image, extends underneath it's border
/// or not.
public struct BackgroundClip: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BackgroundClip {}

public extension Value where Kind == BackgroundClip {
  static var borderBox: Self { return .init("border-box") }
  static var paddingBox: Self { return .init("padding-box") }
  static var contentBox: Self { return .init("content-box") }
}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundColor
/// The `background-color` CSS property sets the background color of an element.
/// You can set color of the background either through a color value or the
/// keyword transparent.
///
/// The background of an element is the total size of the element, including
/// padding and border (but not the margin). See the box model.
public struct BackgroundColor: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BackgroundColor {}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundImage
/// The `background-image` CSS property sets the background image for an
/// element. It is often more convenient to use the shorthand background\
/// property.
public struct BackgroundImage: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

public extension Value where Kind == BackgroundImage {
  // The URL to the image. To specify more than one image,
  // separate the URLs with a comma
  static func url(_ value: String) -> Self {
    return .init("url(\"\(value)\")")
  }

  @_disfavoredOverload
  static func url(_ value: String, _ moreValues: String ...) -> Self {
    return .url([value] + moreValues)
  }


  /// TODO: make it NonEmptyArray<String>
  static func url(_ values: Array<String>) -> Self {
    return .init(values.map { "url(\"\($0)\")" }.joined(separator: ","))
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
public struct BackgroundOrigin: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BackgroundOrigin {}

public extension Value where Kind == BackgroundOrigin {
  static var paddingBox: Self { return .init("padding-box") }
  static var borderBox: Self { return .init("border-box") }
  static var contentBox: Self { return .init("content-box") }
}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundPosition
/// The `background-position` CSS property sets the initial position
/// (i.e. origin) of the element's `background-image`. It is often more
/// convenient to use the shorthand background property.
public struct BackgroundPosition: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BackgroundPosition {
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
public struct BackgroundRepeat: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BackgroundRepeat {
  @_disfavoredOverload
  public init(_ value: Value<BackgroundRepeat>, _ moreValues: Value<BackgroundRepeat> ...) {
    self.init([value] + moreValues)
  }

  /// TODO: make it NonEmptyArray<Value>
  public init(_ values: Array<Value<BackgroundRepeat>>) {
    self.init(values.map(\.rawValue).joined(separator: " "))
  }
}

public extension Value where Kind == BackgroundRepeat {
  static var `repeat`: Self { return .init("repeat") }
  static var repeatX: Self { return .init("repeat-x") }
  static var repeatY: Self { return .init("repeat-y") }
  static var noRepeat: Self { return .init("no-repeat") }
  static var space: Self { return .init("space") }
  static var round: Self { return .init("round") }
}

/// ------------------------------------------------------------------------ ///
/// MARK -- BackgroundSize
/// The `background-size` CSS property specifies the size of the background
/// images.
public struct BackgroundSize: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BackgroundSize {
  /// Sets the width and height of the background image. The first value sets
  /// the width, the second value sets the height. If only one value is given,
  /// the second is set to "auto"
  public init(_ width: Value<CSSLength>, _ height: Value<CSSLength> = .auto) {
    self.init("\(width.rawValue) \(height.rawValue)")
  }
}

public extension Value where Kind == BackgroundSize {
  static var cover: Self { return .init("cover") }
  static var contain: Self { return .init("contain") }
}

// /// ------------------------------------------------------------------------ ///
// ///                                   Border                                 ///
// /// ------------------------------------------------------------------------ ///

/// MARK: - Border
/// The `border` property sets the width, style, and color for all four sides
/// of an element's border. It is a shorthand property for setting the
/// individual border properties i.e. z, border-style, and border-color in a
/// single declaration.
public struct Border: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Border {
  public init(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .black
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
public struct BorderBottom: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderBottom {
  public init(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .black
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
public struct BorderBottomColor: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderBottomColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderBottomLeftRadius
/// The `border-bottom-left-radius` CSS property sets the rounded shape for the
/// `bottom-left` corner of an element border box.
public struct BorderBottomLeftRadius: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderBottomLeftRadius {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderBottomRightRadius
/// The `border-bottom-right-radius` CSS property sets the rounded shape for
/// the `bottom-right` corner of an element border box.
public struct BorderBottomRightRadius: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderBottomRightRadius {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderBottomStyle
/// The `border-bottom-style` CSS property sets the style of an element's
/// bottom border individually. However in many cases the shorthand CSS
/// properties like `border-style` or `border-bottom` are more convenient to
/// use and preferable.
public struct BorderBottomStyle: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderBottomStyle {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderBottomWidth
/// The `border-bottom-width` CSS property sets the width of an element's
/// bottom border individually. However in many cases the shorthand CSS
/// properties like `border-width` or `border-bottom` are more convenient to
/// use and preferable.
public struct BorderBottomWidth: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderBottomWidth {}

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
public struct BorderCollapse: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderCollapse {}

public extension Value where Kind == BorderCollapse {
  static var separate: Self { return .init("separate") }
  static var collapse: Self { return .init("collapse") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderColor
/// The `border-color` CSS property is a shorthand property for setting the
/// individual border color properties i.e. `border-top-color`,
/// `border-right-color`, `border-bottom-color`, and `border-left-color` in a
/// single declaration.
public struct BorderColor: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderColor {
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
public struct BorderImage: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderImage {
  public init(
    source: Value<BorderImageSource> = .default,
    slice: Value<BorderImageSlice> = .default,
    width: Value<BorderImageWidth> = .default,
    outset: Value<BorderImageOutset> = .default,
    `repeat`: Value<BorderImageRepeat> = .default
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
public struct BorderImageOutset: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderImageOutset {
  public init(_ topBottom: Value<Self>, _ rightLeft: Value<Self>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<Self>, _ rightLeft: Value<Self>, _ bottom: Value<Self>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<Self>, _ right: Value<Self>, _ bottom: Value<Self>, _ left: Value<Self>) {
    self.init([
      top.rawValue,
      right.rawValue,
      bottom.rawValue,
      left.rawValue
    ].joined(separator: " "))
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderImageRepeat
/// The `border-image-repeat` property specifies whether the border image should
/// be repeated, rounded or stretched.
public struct BorderImageRepeat: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderImageRepeat {}

public extension Value where Kind == BorderImageRepeat {
  static var stretch: Self { return .init("stretch") }
  static var `repeat`: Self { return .init("repeat") }
  static var round: Self { return .init("round") }
  static var space: Self { return .init("space") }
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
public struct BorderImageSlice: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderImageSlice {
  public init(_ topBottom: Value<Self>, _ rightLeft: Value<Self>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<Self>, _ rightLeft: Value<Self>, _ bottom: Value<Self>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<Self>, _ right: Value<Self>, _ bottom: Value<Self>, _ left: Value<Self>) {
    self.init([
      top.rawValue,
      right.rawValue,
      bottom.rawValue,
      left.rawValue
    ].joined(separator: " "))
  }
}

public extension Value where Kind == BorderImageSlice {
  static var fill: Self { return .init("fill") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderImageSource
/// The `border-image-source` CSS property specifies the location of the image
/// to be used for the border, instead of the border styles given by the
/// `border-style` propertiey.
public struct BorderImageSource: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

public extension Value where Kind == BorderImageSource {
  // The path to the image to be used as a border
  static func url(_ value: String) -> Self {
    return .init("url(\"\(value)\")")
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderImageWidth
/// The `border-image-width` CSS property specifies the width of the border.
public struct BorderImageWidth: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderImageWidth {
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
public struct BorderLeft: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderLeft {
  public init(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .black
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
public struct BorderLeftColor: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderLeftColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderLeftStyle
/// The `border-left-style` CSS property sets the style of an element's left
/// border individually. However in many cases the shorthand CSS properties
/// like `border-style` or `border-left` are more convenient to use and
/// preferable.
public struct BorderLeftStyle: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderLeftStyle {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderLeftWidth
/// The `border-left-width` CSS property sets the width of an element's left
/// border individually. However in many cases the shorthand CSS properties like
/// `border-width` or `border-left` are more convenient to use and preferable.
public struct BorderLeftWidth: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderLeftWidth {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderRadius
/// The `border-radius` CSS property sets the rounded shape for the border
/// corners of an element. It is a shorthand property for
/// `border-top-left-radius`, `border-top-right-radius`,
/// `border-bottom-right-radius`, and `border-bottom-left-radius` property.
public struct BorderRadius: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderRadius {
  public init(_ topBottom: Value<Self>, _ rightLeft: Value<Self>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<Self>, _ rightLeft: Value<Self>, _ bottom: Value<Self>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<Self>, _ right: Value<Self>, _ bottom: Value<Self>, _ left: Value<Self>) {
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
public struct BorderRight: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderRight {
  public init(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .black
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
public struct BorderRightColor: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderRightColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderRightStyle
/// The `border-right-style` CSS property sets the style of an element's right
/// border individually. However in many cases the shorthand CSS properties
/// like `border-style` or `border-right` are more convenient to use and
/// preferable.
public struct BorderRightStyle: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderRightStyle {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderRightWidth
/// The `border-right-width` CSS property sets the width of an element's right
/// border individually. However in many cases the shorthand CSS properties like
/// `border-width` or `border-right` are more convenient to use and preferable.
public struct BorderRightWidth: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderRightWidth {}

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
public struct BorderSpacing: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderSpacing {
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
public struct BorderStyle: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderStyle {
  public init(_ topBottom: Value<BorderStyle>, _ rightLeft: Value<BorderStyle>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<BorderStyle>, _ rightLeft: Value<BorderStyle>, _ bottom: Value<BorderStyle>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<BorderStyle>, _ right: Value<BorderStyle>, _ bottom: Value<BorderStyle>, _ left: Value<BorderStyle>) {
    self.init([
      top.rawValue,
      right.rawValue,
      bottom.rawValue,
      left.rawValue
    ].joined(separator: " "))
  }
}

public extension Value where Kind == BorderStyle {
  static var none: Self { return .init("none") }
  static var hidden: Self { return .init("hidden") }
  static var dotted: Self { return .init("dotted") }
  static var dashed: Self { return .init("dashed") }
  static var solid: Self { return .init("solid") }
  static var double: Self { return .init("double") }
  static var groove: Self { return .init("groove") }
  static var ridge: Self { return .init("ridge") }
  static var inset: Self { return .init("inset") }
  static var outset: Self { return .init("outset") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderTop
/// The `border-top` CSS property sets the width, style, and color of the top
/// border of an element. It is a shorthand property for setting the individual
/// top border properties i.e. `border-top-width`, `border-top-style`, and
/// `border-top-color` in a single declaration.
public struct BorderTop: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderTop {
  public init(
    width: Value<BorderWidth> = .medium,
    style: Value<BorderStyle> = .none,
    color: Value<BorderColor> = .black
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
public struct BorderTopColor: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderTopColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderTopLeftRadius
/// The `border-top-left-radius` CSS property sets the rounded shape for the
/// "top-left" corner of an element border box.
public struct BorderTopLeftRadius: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderTopLeftRadius {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderTopRightRadius
/// The `border-top-right-radius` property sets the rounded shape for the
/// 'top-right' corner of an element border box.
public struct BorderTopRightRadius: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderTopRightRadius {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderTopStyle
/// The `border-top-style` CSS property sets the style of an element's top
/// border individually. However in many cases the shorthand CSS properties
/// like `border-style` or `border-top` are more convenient to use and
/// preferable.
public struct BorderTopStyle: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderTopStyle {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- BorderTopWidth
/// The `border-top-width` property sets the width of an element's top border
/// individually. However in many cases the shorthand CSS properties like
/// `border-width` or `border-top` are more convenient to use and preferable.
public struct BorderTopWidth: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderTopWidth {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- BorderWidth
/// The `border-width` CSS property is a shorthand property for setting the
/// individual border width properties i.e. `border-top-width`,
/// `border-right-width`, `border-bottom-width`, and `border-left-width`
/// in a single declaration.
public struct BorderWidth: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BorderWidth {
  public init(_ topBottom: Value<BorderWidth>, _ rightLeft: Value<BorderWidth>) {
    self.init([
      topBottom.rawValue,
      rightLeft.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<BorderWidth>, _ rightLeft: Value<BorderWidth>, _ bottom: Value<BorderWidth>) {
    self.init([
      top.rawValue,
      rightLeft.rawValue,
      bottom.rawValue
    ].joined(separator: " "))
  }

  public init(_ top: Value<BorderWidth>, _ right: Value<BorderWidth>, _ bottom: Value<BorderWidth>, _ left: Value<BorderWidth>) {
    self.init([
      top.rawValue,
      right.rawValue,
      bottom.rawValue,
      left.rawValue
    ].joined(separator: " "))
  }
}

public extension Value where Kind == BorderWidth {
  static var medium: Self { return .init("medium") }
  static var thin: Self { return .init("thin") }
  static var thick: Self { return .init("thick") }
}

/// ------------------------------------------------------------------------ ///
///                                 Color                                    ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Color
/// The `color` CSS property sets the color for an element's text content.
public struct Color: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Color {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Opacity
/// The `opacity` CSS property specifies the transparency of an element.
public struct Opacity: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Opacity {}

/// ------------------------------------------------------------------------ ///
///                               Dimension                                  ///
/// ------------------------------------------------------------------------ ///

/// MARK: -- Height
/// The `height` CSS property specifies the height of the content area of an
/// element. The content area does not include padding, borders, or margins
/// — see the CSS box model.
public struct Height: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Height {}

public struct MinHeight: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension MinHeight {}

public struct MaxHeight: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension MaxHeight {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- Width
/// The `width` CSS property specifies the width of the content area of an
/// element. The content area does not include padding, borders, or margins
/// — see the CSS box model.
public struct Width: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Width {}

public struct MinWidth: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension MinWidth {}

public struct MaxWidth: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension MaxWidth {}

/// ------------------------------------------------------------------------ ///
///                              FlexibleBox                                 ///
/// ------------------------------------------------------------------------ ///

/// MARK: - AlignContnet
/// The `align-content` CSS property aligns the flexible container's items
/// within the flex container when there is extra space on the cross-axis
/// (vertically).
public struct AlignContent: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension AlignContent {}

public extension Value where Kind == AlignContent {
  static var stretch: Self { return .init("stretch") }
  static var center: Self { return .init("center") }
  static var flexStart: Self { return .init("flex-start") }
  static var flexEnd: Self { return .init("flex-end") }
  static var spaceBetween: Self { return .init("space-between") }
  static var spaceAround: Self { return .init("space-around") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - AlignItems
/// The `align-items` property specifies the default alignment for items within
/// the flex container.
public struct AlignItems: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension AlignItems {}

public extension Value where Kind == AlignItems {
  static var stretch: Self { return .init("stretch") }
  static var center: Self { return .init("center") }
  static var flexStart: Self { return .init("flex-start") }
  static var flexEnd: Self { return .init("flex-end") }
  static var baseline: Self { return .init("baseline") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - AlignSelf
/// The `align-self` property specifies the default alignment for items within
/// the flex container.
public struct AlignSelf: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension AlignSelf {}

public extension Value where Kind == AlignSelf {
  static var stretch: Self { return .init("stretch") }
  static var center: Self { return .init("center") }
  static var flexStart: Self { return .init("flex-start") }
  static var flexEnd: Self { return .init("flex-end") }
  static var baseline: Self { return .init("baseline") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Flex
/// The `flex` CSS property specifies the components of a flexible length.
/// It is a shorthand property for setting the `flex-grow`, `flex-shrink` and
/// the `flex-basis` properties at once.
public struct Flex: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Flex {
  public init(
    grow: Value<FlexGrow> = .default,
    shrink: Value<FlexShrink> = .default,
    basis: Value<FlexBasis> = .default
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
public struct FlexBasis: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FlexBasis {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FlexDirection
/// The `flex-direction` CSS property specifies how flex items are placed in
/// the flex container, by setting the direction of the flex container's main
/// axis.
public struct FlexDirection: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FlexDirection {}

public extension Value where Kind == FlexDirection {
  static var row: Self { return .init("row") }
  static var rowReverse: Self { return .init("row-reverse") }
  static var column: Self { return .init("column") }
  static var columnReverse: Self { return .init("column-reverse") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FlexFlow
/// The `flex-flow` CSS property is a shorthand property for setting the
/// `flex-direction` and `flex-wrap` individual properties at once.
public struct FlexFlow: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FlexFlow {
  public init(
    direction: Value<FlexDirection> = .default,
    wrap: Value<FlexWrap> = .default
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
public struct FlexGrow: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FlexGrow {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FlexShrink
/// The `flex-shrink` CSS property specifies how the flex item will shrink
/// relative to the other items inside the flex container.
public struct FlexShrink: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FlexShrink {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FlexWrap
/// The `flex-wrap` CSS property specifies whether the flex items are forced
/// into a single line or they wrap onto multiple lines or columns based on
/// the space available in the flex container.
public struct FlexWrap: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FlexWrap {}

public extension Value where Kind == FlexWrap {
  static var nowrap: Self { return .init("nowrap") }
  static var wrap: Self { return .init("wrap") }
  static var wrapReverse: Self { return .init("wrap-reverse") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - JustifyContent
/// The `justify-content` CSS property specifies how flex items are aligned
/// along the main axis of the flex container after any flexible lengths and
/// auto margins have been resolved.
public struct JustifyContent: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension JustifyContent {}

public extension Value where Kind == JustifyContent {
  static var center: Self { return .init("center") }
  static var flexStart: Self { return .init("flex-start") }
  static var flexEnd: Self { return .init("flex-end") }
  static var spaceBetween: Self { return .init("space-between") }
  static var spaceAround: Self { return .init("space-around") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Order
/// The `order` CSS property specifies the order in which a flex items are
/// displayed and laid out within a flex container. Elements are laid out by
/// ascending order of the order value. Elements with the same order value are
/// laid out in the order they appear in the source code.
public struct Order: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Order {}

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
public struct Font: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Font {
  public init(
    style: Value<FontStyle> = .default,
    variant: Value<FontVariant> = .default,
    weight: Value<FontWeight> = .default,
    size: Value<FontSize>,
    family: Value<FontFamily>
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
    style: Value<FontStyle> = .default,
    variant: Value<FontVariant> = .default,
    weight: Value<FontWeight> = .default,
    lineHeight: Value<LineHeight>,
    family: Value<FontFamily>
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

public extension Value where Kind == Font {
  static var caption: Self { return .init("caption") }
  static var icon: Self { return .init("icon") }
  static var menu: Self { return .init("menu") }
  static var messageBox: Self { return .init("message-box") }
  static var smallCaption: Self { return .init("small-caption") }
  static var statusBar: Self { return .init("status-bar") }
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
public struct FontFamily: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FontFamily {}

/// ------------------------------------------------------------------------ ///
/// MARK: - FontFeatureSettings
/// The `font-feature-settings` property allows control over advanced
/// typographic features in OpenType fonts.
public struct FontFeatureSettings: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FontFeatureSettings {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontKerning
/// The `font-kerning property` controls the usage of the kerning information
/// stored in a font.
///
/// Tip: Kerning defines how letters are spaced.
public struct FontKerning: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FontKerning {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontSize
/// The `font-size` CSS property sets the font size for the element's
/// text content.
public struct FontSize: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FontSize {}

public extension Value where Kind == FontSize {
  static var medium: Self { return .init("caption") }
  static var xxSmall: Self { return .init("xx-small") }
  static var xSmall: Self { return .init("x-small") }
  static var small: Self { return .init("small") }
  static var large: Self { return .init("large") }
  static var xLarge: Self { return .init("x-large") }
  static var xxLarge: Self { return .init("xx-large") }
  static var smaller: Self { return .init("smaller") }
  static var larger: Self { return .init("larger") }
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
public struct FontSizeAdjust: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FontSizeAdjust {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontStretch
/// The `font-stretch` CSS property selects a normal, condensed, or expanded
/// face from a font.
public struct FontStretch: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FontStretch {}

public extension Value where Kind == FontStretch {
  static var normal: Self { return .init("normal") }
  static var ultraCondensed: Self { return .init("ultra-condensed") }
  static var extraCondensed: Self { return .init("extra-condensed") }
  static var condensed: Self { return .init("condensed") }
  static var semiCondensed: Self { return .init("semi-condensed") }
  static var semiExpanded: Self { return .init("semi-expanded") }
  static var expanded: Self { return .init("expanded") }
  static var extraExpanded: Self { return .init("extra-expanded") }
  static var ultraExpanded: Self { return .init("ultra-expanded") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontStyle
/// This `font-style` CSS property defines the style of font for the element's
/// text content.
public struct FontStyle: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FontStyle {}

public extension Value where Kind == FontStyle {
  static var normal: Self { return .init("normal") }
  static var italic: Self { return .init("italic") }
  static var oblique: Self { return .init("oblique") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontVariant
/// This `font-variant` CSS property sets the variation of the font family.
public struct FontVariant: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FontVariant {}

public extension Value where Kind == FontVariant {
  static var normal: Self { return .init("normal") }
  static var smallCaps: Self { return .init("small-caps") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontVariantCaps
/// The `font-variant-caps` property controls the usage of alternate glyphs
/// for capital letters.
public struct FontVariantCaps: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FontVariantCaps {}

public extension Value where Kind == FontVariantCaps {
  static var unset: Self { return .init("unset") }
  static var normal: Self { return .init("normal") }
  static var smallCaps: Self { return .init("small-caps") }
  static var allSmallCaps: Self { return .init("all-small-caps") }
  static var petiteCaps: Self { return .init("petite-caps") }
  static var allPetiteCaps: Self { return .init("all-petite-caps") }
  static var unicase: Self { return .init("unicase") }
  static var titlingCaps: Self { return .init("titling-caps") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- FontWeight
/// The `font-weight` CSS property sets the weight or boldness of the font.
public struct FontWeight: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension FontWeight {}

public extension Value where Kind == FontWeight {
  static var normal: Self { return .init("normal") }
  static var bold: Self { return .init("bold") }
  static var bolder: Self { return .init("bolder") }
  static var lighter: Self { return .init("lighter") }
}

/// ------------------------------------------------------------------------ ///
///                            GeneratedContent                              ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Content
/// The `content` CSS property is used in combination with the `::before` and
/// `::after` pseudo-elements to generate content in an element.
public struct Content: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

public extension Value where Kind == Content {
  /// This value sets the content as a counter. See the `counter-reset` and
  /// `counter-increment` property for more information.
  static func counter(_ value: String) -> Self { return .init("counter(\"\(value)\")") }
  
  /// The value of `url()` designates an external resource (such as an image).
  /// If the resource or image can't be displayed, it is either ignored or
  /// some placeholder shows up.
  static func url(_ value: String) -> Self { return .init("url(\"\(value)\")") }
  
  /// This function inserts the value of specified attribute before or after
  /// the selected element(s). If the subject of the selector does not have
  /// the specified attribute, an empty string will be inserted.
  static func attr(_ value: String) -> Self { return .init("attr(\"\(value)\")") }
}

public extension Value where Kind == Content {
  static var openQuote: Self { return .init("open-quote") }
  static var closeQuote: Self { return .init("close-quote") }
  static var noOpenQuote: Self { return .init("no-open-quote") }
  static var noCloseQuote: Self { return .init("no-close-quote") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Quotes
/// The `quotes` CSS property specifies the quotation marks for the embedded
/// quotations. The quotes characters specified for this property are used for
/// the `open-quote` and `close-quote` values of the content property. 
public struct Quotes: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

public extension Value where Kind == Quotes {
  /// This value sets the content as a counter. See the `counter-reset` and
  /// `counter-increment` property for more information.
  static func pairs(_ value: (String, String), _ moreValues: (String, String)...) -> Self {
    return .pairs([value] + moreValues)
  }

  /// TODO: make it NonEmptyArray
  static func pairs(_ values: Array<(String, String)>) -> Self {
    return self.init(
      values
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
public struct CounterReset: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension CounterReset {}

/// ------------------------------------------------------------------------ ///
/// MARK: - CounterIncrement
/// The `counter-increment` CSS property increments one or more counter values.
/// This property is very useful for creating auto-numbering feature.
public struct CounterIncrement: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension CounterIncrement {}

/// ------------------------------------------------------------------------ ///
///                                  List                                    ///
/// ------------------------------------------------------------------------ ///

/// MARK: - ListStyle
/// The `list-style` CSS property defines the display style for list items.
/// It is a shorthand property for setting the individual list properties i.e.
/// `list-style-type`, `list-style-position`, and `list-style-image` in a
/// single declaration.
public struct ListStyle: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ListStyle {
  public init(
    type: Value<ListStyleType> = .default,
    position: Value<ListStylePosition> = .default,
    image: Value<ListStyleImage> = .default
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
public struct ListStyleType: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ListStyleType {}

public extension Value where Kind == ListStyleType {
  /// Unordered-List-Style-Types
  static var circle: Self { return .init("circle") }
  static var disc: Self { return .init("disc") }
  static var square: Self { return .init("square") }

  /// Ordered-List-Style-Types
  static var armenian: Self { return .init("armenian") }
  static var cjkIdeographic: Self { return .init("cjk-ideographic") }
  static var decimal: Self { return .init("decimal") }
  static var decimalLeadingZero: Self { return .init("decimal-leading-zero") }
  static var georgian: Self { return .init("georgian") }
  static var hebrew: Self { return .init("hebrew") }
  static var hiragana: Self { return .init("hiragana") }
  static var hiraganaIroha: Self { return .init("hiragana-iroha") }
  static var katakana: Self { return .init("katakana") }
  static var katakanaIroha: Self { return .init("katakana-iroha") }
  static var lowerAlpha: Self { return .init("lower-alpha") }
  static var lowerGreek: Self { return .init("lower-greek") }
  static var lowerLatin: Self { return .init("lower-latin") }
  static var lowerRoman: Self { return .init("lower-roman") }
  static var upperAlpha: Self { return .init("upper-alpha") }
  static var upperGreek: Self { return .init("upper-greek") }
  static var upperLatin: Self { return .init("upper-latin") }
  static var upperRoman: Self { return .init("upper-roman") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- ListStylePosition
/// The `list-style-position` CSS property specifies the position of `list-item`
/// marker with respect to the list item's principal block box.
public struct ListStylePosition: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ListStylePosition {}

public extension Value where Kind == ListStylePosition {
  static var inside: Self { return .init("inside") }
  static var outside: Self { return .init("outside") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- ListStyleImage
/// The `list-style-image` CSS property specifies an image to be used as a
/// list-item marker.
public struct ListStyleImage: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

public extension Value where Kind == ListStyleImage {
  static func url(_ value: String) -> Self { return .init("url(\"\(value)\")") }
}

/// ------------------------------------------------------------------------ ///
///                                 Margin                                   ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Margin
/// The `margin` CSS property sets the margin on all four sides of the element.
/// It is a shorthand property for `margin-top`, `margin-right`,
/// `margin-bottom`, and `margin-left` property.
public struct Margin: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Margin {
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
public struct MarginBottom: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension MarginBottom {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- MarginLeft
/// The `margin-left` CSS property sets the left margin of the element.
/// However in many cases the shorthand property margin is more convenient
/// to use and preferable.
public struct MarginLeft: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension MarginLeft {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- MarginRight
/// The `margin-right` CSS property sets the right margin of the element.
/// However in many cases the shorthand property margin is more convenient
/// to use and preferable.
public struct MarginRight: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension MarginRight {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- MarginTop
/// The `margin-top` CSS property sets the top margin of the element.
/// However in many cases the shorthand property margin is more convenient
/// to use and preferable.
public struct MarginTop: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension MarginTop {}

/// ------------------------------------------------------------------------ ///
///                                  MultiColumn                             ///
/// ------------------------------------------------------------------------ ///

/// MARK: - ColumnCount
/// The `column-count` CSS property specifies the number of columns in a
/// multi-column element.
public struct ColumnCount: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ColumnCount {}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnFill
/// The `column-fill` CSS property specifies how the column lengths in a
/// multi-column element are affected by the content flow. Contents in a
/// multi-column layout are either balanced, which means that contents
/// in all columns will have the same height or, just take up the room as
/// much as the content needed, when using the value auto.
public struct ColumnFill: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ColumnFill {}

public extension Value where Kind == ColumnFill {
  static var balance: Self { return .init("inbalanceside") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnGap
/// The `column-gap` CSS property specifies the gap between the columns in a
/// multi-column element. If there is a column-rule between columns, it will
/// appear in the middle of the gap.
public struct ColumnGap: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ColumnGap {}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnRule
/// The `column-rule` CSS property specifies a straight line, or "rule", to
/// be drawn between each column. It is a shorthand property for setting the
/// individual properties i.e. `column-rule-width`, `column-rule-style` and
/// column`-rule-color` at once.
public struct ColumnRule: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ColumnRule {
  public init(
    width: Value<ColumnRuleWidth> = .medium,
    style: Value<ColumnRuleStyle> = .none,
    color: Value<ColumnRuleColor> = .black
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
public struct ColumnRuleColor: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ColumnRuleColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnRuleStyle
/// The `column-rule-style` CSS property sets the style of the rule drawn
/// between the columns in a multi-column layout.
public struct ColumnRuleStyle: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ColumnRuleStyle {}

public extension Value where Kind == ColumnRuleStyle {
  static var none: Self { return .init("none") }
  static var hidden: Self { return .init("hidden") }
  static var dotted: Self { return .init("dotted") }
  static var dashed: Self { return .init("dashed") }
  static var solid: Self { return .init("solid") }
  static var double: Self { return .init("double") }
  static var groove: Self { return .init("groove") }
  static var ridge: Self { return .init("ridge") }
  static var inset: Self { return .init("inset") }
  static var outset: Self { return .init("outset") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnRuleWidth
/// The `column-rule-width` CSS property sets the width of the rule drawn
/// between the columns in a multi-column layout.
public struct ColumnRuleWidth: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ColumnRuleWidth {}

public extension Value where Kind == ColumnRuleWidth {
  static var medium: Self { return .init("medium") }
  static var thin: Self { return .init("thin") }
  static var thick: Self { return .init("thick") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnSpan
/// The `column-span` CSS property specifies how many columns an element
/// spans across in a multi-column layout. Element that spans more than one
/// column is called a spanning element.
public struct ColumnSpan: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ColumnSpan {}

public extension Value where Kind == ColumnSpan {
  static var all: Self { return .init("all") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - ColumnWidth
/// The `column-width` CSS property specifies the optimal width of the
/// columns in a multi-column element. This is not an absolute value; browser
/// may adjust the width of the column depending on the value of other
/// properties, especially column-count.
public struct ColumnWidth: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ColumnWidth {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Columns
/// The `columns` CSS property is a shorthand property for setting both the
/// `column-width` and the `column-count` properties at the same time.
public struct Columns: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Columns {
  public init(
    width: Value<ColumnWidth> = .default,
    count: Value<ColumnCount> = .default
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
public struct Outline: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Outline {
  public init(
    width: Value<OutlineWidth> = .medium,
    style: Value<OutlineStyle> = .none,
    color: Value<OutlineColor> = .black
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
public struct OutlineColor: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension OutlineColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: --- OutlineOffset
/// The `outline-offset` CSS property is used to set the space between an
/// outline and the border edge or simply edge of an element.
public struct OutlineOffset: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension OutlineOffset {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- OutlineStyle
/// The `outline-style` CSS property sets the style of the outline of an
/// element. However, in many cases the shorthand propertiey outline is more
/// convenient to use and preferable.
public struct OutlineStyle: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension OutlineStyle {}

public extension Value where Kind == OutlineStyle {
  static var none: Self { return .init("none") }
  static var hidden: Self { return .init("hidden") }
  static var dotted: Self { return .init("dotted") }
  static var dashed: Self { return .init("dashed") }
  static var solid: Self { return .init("solid") }
  static var double: Self { return .init("double") }
  static var groove: Self { return .init("groove") }
  static var ridge: Self { return .init("ridge") }
  static var inset: Self { return .init("inset") }
  static var outset: Self { return .init("outset") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- OutlineWidth
/// The `outline-width` CSS property sets the width of the outline of an
/// element. However in many cases the shorthand CSS propertiey outline is
/// more convenient to use and preferable.
public struct OutlineWidth: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension OutlineWidth {}

public extension Value where Kind == OutlineWidth {
  static var medium: Self { return .init("medium") }
  static var thin: Self { return .init("thin") }
  static var thick: Self { return .init("thick") }
}

/// ------------------------------------------------------------------------ ///
///                                 Padding                                  ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Padding
/// The `padding` CSS property sets the padding on all four sides of the element.
/// It is a shorthand property for `padding-top`, `padding-right`,
/// `padding-bottom`, and `padding-left` property.
public struct Padding: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Padding {
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
public struct PaddingBottom: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension PaddingBottom {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- PaddingLeft
/// The `padding-left` CSS property sets the left padding of the element.
/// However in many cases the shorthand property padding is more convenient
/// to use and preferable.
public struct PaddingLeft: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension PaddingLeft {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- PaddingRight
/// The `padding-right` CSS property sets the right padding of the element.
/// However in many cases the shorthand property padding is more convenient
/// to use and preferable.
public struct PaddingRight: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension PaddingRight {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- PaddingTop
/// The `padding-top` CSS property sets the top padding of the element.
/// However in many cases the shorthand property padding is more convenient
/// to use and preferable.
public struct PaddingTop: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension PaddingTop {}

/// ------------------------------------------------------------------------ ///
///                                   Print                                  ///
/// ------------------------------------------------------------------------ ///

/// MARK: - BreakAfter
/// The `break-after` CSS3 property insert page breaks after an element
/// when printing a document. This properties applies to block-level elements
/// that generate a box. It won't apply on an empty <p> that won't generate a box.
public struct BreakAfter: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BreakAfter {}

public extension Value where Kind == BreakAfter {
  static var all: Self { return .init("all") }
  static var always: Self { return .init("always") }
  static var column: Self { return .init("column") }
  static var left: Self { return .init("left") }
  static var page: Self { return .init("page") }
  static var recto: Self { return .init("recto") }
  static var region: Self { return .init("region") }
  static var right: Self { return .init("right") }
  static var verso: Self { return .init("verso") }
  static var avoid: Self { return .init("avoid") }
  static var avoidColumn: Self { return .init("avoid-column") }
  static var avoidPage: Self { return .init("avoid-page") }
  static var avoidRegion: Self { return .init("avoid-region") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - BreakBefore
/// The `break-before` CSS3 property insert page breaks before an element
/// when printing a document. This properties applies to block-level elements
/// that generate a box. It won't apply on an empty <p> that won't generate a box.
public struct BreakBefore: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BreakBefore {}

public extension Value where Kind == BreakBefore {
  static var all: Self { return .init("all") }
  static var always: Self { return .init("always") }
  static var column: Self { return .init("column") }
  static var left: Self { return .init("left") }
  static var page: Self { return .init("page") }
  static var recto: Self { return .init("recto") }
  static var region: Self { return .init("region") }
  static var right: Self { return .init("right") }
  static var verso: Self { return .init("verso") }
  static var avoid: Self { return .init("avoid") }
  static var avoidColumn: Self { return .init("avoid-column") }
  static var avoidPage: Self { return .init("avoid-page") }
  static var avoidRegion: Self { return .init("avoid-region") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - BreakInside
/// The `break-inside` CSS3 property force or prohibit a printing page break
/// inside an element. This properties applies to block-level elements that
/// generate a box. It won't apply on an empty <p> that won't generate a box.
public struct BreakInside: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BreakInside {}

public extension Value where Kind == BreakInside {
  static var avoid: Self { return .init("avoid") }
  static var avoidColumn: Self { return .init("avoid-column") }
  static var avoidPage: Self { return .init("avoid-page") }
  static var avoidRegion: Self { return .init("avoid-region") }
}

/// ------------------------------------------------------------------------ ///
///                                   Text                                   ///
/// ------------------------------------------------------------------------ ///

/// MARK: - TextAlign
/// The `text-align` CSS property sets the horizontal alignment of the inline
/// content like text and images in its parent block element such as heading
/// or paragraph.
public struct TextAlign: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TextAlign {}

public extension Value where Kind == TextAlign {
  static var left: Self { return .init("left") }
  static var right: Self { return .init("right") }
  static var center: Self { return .init("center") }
  static var justify: Self { return .init("justify") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextAlignLast
/// The `text-align-last` CSS property specifies how the last line of a block
/// or a line right before a forced line break is aligned when `text-align`
/// is justify.
public struct TextAlignLast: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TextAlignLast {}

public extension Value where Kind == TextAlignLast {
  static var left: Self { return .init("left") }
  static var right: Self { return .init("right") }
  static var center: Self { return .init("center") }
  static var justify: Self { return .init("justify") }
  static var start: Self { return .init("start") }
  static var end: Self { return .init("end") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextDecoration
/// The `text-decoration` CSS property specifies the decorations to be applied
/// on the text content of an element such as underline, overline, etc.
public struct TextDecoration: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TextDecoration {
  public init(
    line: Value<TextDecorationLine> = .none,
    color: Value<TextDecorationColor> = .currentColor,
    style: Value<TextDecorationStyle> = .solid
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
public struct TextDecorationColor: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TextDecorationColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextDecorationLine
/// The `text-decoration-line` CSS property specifies what kind of line
/// decorations are added to the element. This property can accepts one or
/// more space separated values.
public struct TextDecorationLine: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TextDecorationLine {
  @_disfavoredOverload
  public init(_ value: Value<TextDecorationLine>, _ moreValues: Value<TextDecorationLine> ...) {
    self.init([value] + moreValues)
  }

  /// TODO: make it NonEmptyArray
  public init(_ values: Array<Value<TextDecorationLine>>) {
    self.init(values.map(\.rawValue).joined(separator: " "))
  }
}

public extension Value where Kind == TextDecorationLine {
  static var underline: Self { return .init("underline") }
  static var overline: Self { return .init("overline") }
  static var lineThrough: Self { return .init("line-through") }
  static var blink: Self { return .init("blink") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextDecorationStyle
/// The `text-decoration-style` CSS property defines the style of the lines
/// specified by the `text-decoration-line` property.
public struct TextDecorationStyle: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TextDecorationStyle {}

public extension Value where Kind == TextDecorationStyle {
  static var solid: Self { return .init("solid") }
  static var double: Self { return .init("double") }
  static var dotted: Self { return .init("dotted") }
  static var dashed: Self { return .init("dashed") }
  static var wavy: Self { return .init("wavy") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextIndent
/// The `text-indent` CSS property specifies the indent in the first line of
/// text within an element.
public struct TextIndent: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TextIndent {}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextJustify
/// The `text-justify` CSS property specifies the justification method to use
/// when the `text-align` property is set to 'justify'.
public struct TextJustify: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TextJustify {}

public extension Value where Kind == TextJustify {
  static var interWord: Self { return .init("inter-word") }
  static var interCharacter: Self { return .init("inter-character") }
  static var distribute: Self { return .init("distribute") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextOverflow
/// The `text-overflow` CSS property determines how the text content will be
/// displayed, when it overflows the block container element that has overflow
/// other than visible.
public struct TextOverflow: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TextOverflow {}

public extension Value where Kind == TextOverflow {
  static var clip: Self { return .init("clip") }
  static var ellipsis: Self { return .init("ellipsis") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TextShadow
/// The `text-shadow` CSS property applies one or more text shadow effects to
/// the text content of an element. Each text shadow effect must specify a
/// shadow offset and may optionally specify a blur radius and a shadow color.
public struct TextShadow: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TextShadow {
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
public struct TextTransform: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TextTransform {}

public extension Value where Kind == TextTransform {
  static var capitalize: Self { return .init("capitalize") }
  static var uppercase: Self { return .init("uppercase") }
  static var lowercase: Self { return .init("lowercase") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - LineHeight
/// The `line-height` CSS property sets the height (also called leading) between
/// lines of text in a block-level element such as a paragraph.
public struct LineHeight: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension LineHeight {}

/// ------------------------------------------------------------------------ ///
/// MARK: - LetterSpacing
/// The `letter-spacing` property sets the extra spacing between the letters of
/// an element's text.
public struct LetterSpacing: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension LetterSpacing {}

/// ------------------------------------------------------------------------ ///
///                                 Transform                                ///
/// ------------------------------------------------------------------------ ///

/// MARK: - BackfaceVisibility
/// The `backface-visibility` CSS property determines whether or not the
/// "back" side of a transformed element is visible when facing the user.
public struct BackfaceVisibility: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BackfaceVisibility {}

public extension Value where Kind == BackfaceVisibility {
  static var visible: Self { return .init("visible") }
  static var hidden: Self { return .init("hidden") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Transform
/// The `transform` CSS property applies a transformation to an element such
/// as translate, rotate, scale etc. in 2D or 3D space.
public struct Transform: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Transform {
  public init(_ function: (Value<Self>, Bool), _ moreFunctions: (Value<Self>, Bool) ...) {
    self.init([function] + moreFunctions)
  }

  public init(_ functions: Array<(Value<Self>, Bool)>) {
    var allValues: Array<String> = []
    var a2dValues: Array<String> = []
    var a3dValues: Array<String> = []
    for (value, is2d) in functions {
      if is2d {
        a2dValues.append(value.rawValue)
      } else {
        a3dValues.append(value.rawValue)
      }
      allValues.append(value.rawValue)
    }
    
    rawValue = allValues.joined(separator: " ")
    declarations = {
      let key = String(describing: Self.key)
      var declarations = Declarations()
      if a2dValues.count > 1 {
        /// rendering 2d values
        /// ["webkit", "moz", "o", "ms"]
        let val = a2dValues.joined(separator: " ")
        declarations.append(Declaration("-webkit-\(key)", val))
        declarations.append(Declaration("-moz-\(key)", val))
        declarations.append(Declaration("-o-\(key)", val))
        declarations.append(Declaration("-ms-\(key)", val))
      }
      if a3dValues.count > 1 {
        /// rendering 3d values
        /// ["webkit"]
        declarations.append(Declaration("-webkit-\(key)", a3dValues.joined(separator: " ")))
      }
      if allValues.count > 1 {
        declarations.append(Declaration(key, allValues.joined(separator: " ")))
      }
      return declarations
    }
  }
}

// Defines a 2D transformation, using a matrix of six values
public func matrix(
  _ a: Int, _ b: Int, _ c: Int, _ d: Int, _ e: Int, _ f: Int
) -> (Value<Transform>, Bool) {
  let values = [a,b,c,d,e,f]
    .map(\.description)
    .joined(separator: ",")
  return (.init("matrix(\(values))"), true)
}

// Defines a 3D transformation, using a 4x4 matrix of 16 values
public func matrix3d(
  _ a: Int, _ b: Int, _ c: Int, _ d: Int,
  _ e: Int, _ f: Int, _ g: Int, _ h: Int,
  _ i: Int, _ j: Int, _ k: Int, _ l: Int,
  _ m: Int, _ n: Int, _ o: Int, _ p: Int
) -> (Value<Transform>, Bool) {
  let values = [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p]
    .map(\.description)
    .joined(separator: ",")
  return (.init("matrix3d(\(values))"), false)
}

// Defines a 2D translation
public func translate(
  _ x: Value<CSSLength>, _ y: Value<CSSLength>
) -> (Value<Transform>, Bool) {
  let values = [x,y].map(\.rawValue).joined(separator: ",")
  return (.init("translate(\(values))"), true)
}

// Defines a 3D translation
public func translate3d(
  _ x: Value<CSSLength>, _ y: Value<CSSLength>, _ z: Value<CSSLength>
) -> (Value<Transform>, Bool) {
  let values = [x,y,z].map(\.rawValue).joined(separator: ",")
  return (.init("translate3d(\(values))"), false)
}

// Defines a translation, using only the value for the X-axis
public func translateX(_ x: Value<CSSLength>) -> (Value<Transform>, Bool) {
  return (.init("translateX(\(x.rawValue))"), true)
}

// Defines a translation, using only the value for the Y-axis
public func translateY(_ y: Value<CSSLength>) -> (Value<Transform>, Bool) {
  return (.init("translateY(\(y.rawValue))"), true)
}

// Defines a 3D translation, using only the value for the Z-axis
public func translateZ(_ z: Value<CSSLength>) -> (Value<Transform>, Bool) {
  return (.init("translateZ(\(z.rawValue))"), false)
}

// Defines a 2D scale transformation
public func scale(_ x: Double, _ y: Double) -> (Value<Transform>, Bool) {
  return (.init("scale(\(x),\(y))"), true)
}

// Defines a 3D scale transformation
public func scale3d(_ x: Double, _ y: Double, _ z: Double) -> (Value<Transform>, Bool) {
  return (.init("scale3d(\(x),\(y),\(z))"), false)
}

// Defines a scale transformation by giving a value for the X-axis
public func scaleX(_ x: Double) -> (Value<Transform>, Bool) {
  return (.init("scaleX(\(x))"), true)
}

// Defines a scale transformation by giving a value for the Y-axis
public func scaleY(_ y: Double) -> (Value<Transform>, Bool) {
  return (.init("scaleY(\(y))"), true)
}

// Defines a 3D scale transformation by giving a value for the Z-axis
public func scaleZ(_ z: Double) -> (Value<Transform>, Bool) {
  return (.init("scaleZ(\(z))"), false)
}

// Defines a 2D rotation, the angle is specified in the parameter
public func rotate(_ angle: Value<CSSAngle>) -> (Value<Transform>, Bool) {
  return (.init("rotate(\(angle.rawValue))"), true)
}

// Defines a 3D rotation
public func rotate3d(
  _ x: Double, _ y: Double, _ z: Double, _ angle: Value<CSSAngle>
) -> (Value<Transform>, Bool) {
  return (.init("rotate3d(\(x),\(y),\(z),\(angle.rawValue))"), false)
}

// Defines a 3D rotation along the X-axis
public func rotateX(_ angle: Value<CSSAngle>) -> (Value<Transform>, Bool) {
  return (.init("rotateX(\(angle.rawValue))"), false)
}

// Defines a 3D rotation along the Y-axis
public func rotateY(_ angle: Value<CSSAngle>) -> (Value<Transform>, Bool) {
  return (.init("rotateY(\(angle.rawValue))"), false)
}

// Defines a 3D rotation along the Z-axis
public func rotateZ(_ angle: Value<CSSAngle>) -> (Value<Transform>, Bool) {
  return (.init("rotateZ(\(angle.rawValue))"), false)
}

// Defines a 2D skew transformation along the X- and the Y-axis
public func skew(_ a: Value<CSSAngle>, _ b: Value<CSSAngle>) -> (Value<Transform>, Bool) {
  return (.init("skew(\(a.rawValue),\(b.rawValue))"), true)
}

// Defines a 2D skew transformation along the X-axis
public func skewX(_ angle: Value<CSSAngle>) -> (Value<Transform>, Bool) {
  return (.init("skewX(\(angle.rawValue))"), true)
}

// Defines a 2D skew transformation along the Y-axis
public func skewY(_ angle: Value<CSSAngle>) -> (Value<Transform>, Bool) {
  return (.init("skewY(\(angle.rawValue))"), true)
}

// Defines a perspective view for a 3D transformed element
public func perspective(_ n: Value<CSSLength>) -> (Value<Transform>, Bool) {
  return (.init("perspective(\(n.rawValue))"), false)
}

/// ------------------------------------------------------------------------ ///
/// MARK: - TransformOrigin
/// The `transform-origin` CSS property establish the origin of transformation
/// for an element.
public struct TransformOrigin: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TransformOrigin {
  public init(_ x: Value<CSSXAxis>, _ y: Value<CSSYAxis>) {
    let value = "\(x.rawValue) \(y.rawValue)"
    rawValue = value
    declarations = {
      let key = String(describing: Self.key)
      var declarations = Declarations()
      var browsersItr = Self.browsers.makeIterator()
      while let browser = browsersItr.next() {
        declarations.append(Declaration("-\(browser)-\(key)", value))
      }
      declarations.append(Declaration("-o-\(key)", value))
      declarations.append(Declaration("-ms-\(key)", value))
      declarations.append(Declaration(key, value))
      return declarations
    }
  }
  
  public init(_ x: Value<CSSXAxis>, _ y: Value<CSSYAxis>, _ z: Value<CSSZAxis>) {
    let value = "\(x.rawValue) \(y.rawValue) \(z.rawValue)"
    rawValue = value
    declarations = {
      let key = String(describing: Self.key)
      var declarations = Declarations()
      var browsersItr = Self.browsers.makeIterator()
      while let browser = browsersItr.next() {
        declarations.append(Declaration("-\(browser)-\(key)", value))
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
public struct TransformStyle: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TransformStyle {}

public extension Value where Kind == TransformStyle {
  static var flat: Self { return .init("flat") }
  static var preserve3d: Self { return .init("preserve-3d") }
}

/// ------------------------------------------------------------------------ ///
///                                Transition                                ///
/// ------------------------------------------------------------------------ ///

/// MARK: - Transition
public struct Transition: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Transition {
  public init(
    property: Value<TransitionProperty> = .default,
    duration: Value<TransitionDuration> = .default,
    timingFunction: Value<TransitionTimingFunction> = .default,
    delay: Value<TransitionDelay> = .default
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
public struct TransitionDelay: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TransitionDelay {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- TransitionDuration
public struct TransitionDuration: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TransitionDuration {}

/// ------------------------------------------------------------------------ ///
/// MARK: -- TransitionProperty
public struct TransitionProperty: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TransitionProperty {}

public extension Value where Kind == TransitionProperty {
  static var all: Self { return .init("all") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: -- TransitionTimingFunction
/// The `transition-timing-function` CSS property specifies how a CSS transition
/// should progress over the duration of each cycle.
public struct TransitionTimingFunction: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension TransitionTimingFunction {}

public enum TransitionTimingFunctionPoint: String { case start, end }

public extension Value where Kind == TransitionTimingFunction {
  static var linear: Self { return .init("linear") }
  static var ease: Self { return .init("ease") }
  static var easeIn: Self { return .init("ease-in") }
  static var easeOut: Self { return .init("ease-out") }
  static var easeInOut: Self { return .init("ease-in-out") }
  static var stepStart: Self { return .init("step-start") }
  static var stepEnd: Self { return .init("step-end") }

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
public struct Display: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Display {
  public init(_ value: Value<Self>) {
    rawValue = value.rawValue
    declarations = {
      let key = String(describing: Self.key)
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

public extension Value where Kind == Display {
  static var none: Self { return .init("none") }
  static var inline: Self { return .init("inline") }
  static var block: Self { return .init("block") }
  static var contents: Self { return .init("contents") }
  static var flex: Self { return .init("flex") }
  static var grid: Self { return .init("grid") }
  static var inlineBlock: Self { return .init("inline-block") }
  static var inlineFlex: Self { return .init("inline-flex") }
  static var inlineGrid: Self { return .init("inline-grid") }
  static var inlineTable: Self { return .init("inline-table") }
  static var listItem: Self { return .init("list-item") }
  static var runIn: Self { return .init("run-in") }
  static var table: Self { return .init("table") }
  static var tableCaption: Self { return .init("table-caption") }
  static var tableColumnGroup: Self { return .init("table-column-group") }
  static var tableHeaderGroup: Self { return .init("table-header-group") }
  static var tableFooterGroup: Self { return .init("table-footer-group") }
  static var tableRowGroup: Self { return .init("table-row-group") }
  static var tableCell: Self { return .init("table-cell") }
  static var tableColumn: Self { return .init("table-column") }
  static var tableRow: Self { return .init("table-row") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Position
/// The `position` CSS property specifies how an element is positioned.
public struct Position: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Position {}

public extension Value where Kind == Position {
  static var `static`: Self { return .init("static") }
  static var relative: Self { return .init("relative") }
  static var absolute: Self { return .init("absolute") }
  static var fixed: Self { return .init("fixed") }
  static var sticky: Self { return .init("sticky") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Top
/// The `top` CSS property specifies the location of the top edge of the
/// positioned element.
public struct Top: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Top {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Right
/// The `right` CSS property specifies the location of the right edge of
/// the positioned element.
public struct Right: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Right {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Bottom
/// The `bottom` CSS property specifies the location of the bottom edge of
/// the positioned element.
public struct Bottom: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Bottom {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Left
/// The `left` CSS property specifies the location of the left edge of
/// the positioned element.
public struct Left: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Left {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Float
/// The `float` CSS property specifies whether a box should float to the left,
/// right, or not at all.
public struct Float: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Float {}

public extension Value where Kind == Float {
  static var left: Self { return .init("left") }
  static var right: Self { return .init("right") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - Clear
/// The `clear` CSS property specifies whether a box should float to the left,
/// right, or not at all.
public struct Clear: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Clear {}

public extension Value where Kind == Clear {
  static var left: Self { return .init("left") }
  static var right: Self { return .init("right") }
  static var both: Self { return .init("both") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - ZIndex
/// The `z-index` property specifies the stack order of an element.
///
/// An element with greater stack order is always in front of an element with
/// a lower stack order.
public struct ZIndex: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ZIndex {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Overflow
public struct Overflow: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Overflow {}

public extension Value where Kind == Overflow {
  static var visible: Self { return .init("visible") }
  static var hidden: Self { return .init("hidden") }
  static var scroll: Self { return .init("scroll") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - OverflowX
public struct OverflowX: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension OverflowX {}

public extension Value where Kind == OverflowX {
  static var visible: Self { return .init("visible") }
  static var hidden: Self { return .init("hidden") }
  static var scroll: Self { return .init("scroll") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - OverflowY
public struct OverflowY: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension OverflowY {}

public extension Value where Kind == OverflowY {
  static var visible: Self { return .init("visible") }
  static var hidden: Self { return .init("hidden") }
  static var scroll: Self { return .init("scroll") }
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
public struct ClipPath: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension ClipPath {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Visibility
/// The `visibility` property specifies whether or not an element is visible.
///
/// Tip: Hidden elements take up space on the page. Use the display property
/// to both hide and remove an element from the document layout!
public struct Visibility: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension Visibility {}

public extension Value where Kind == Visibility {
  static var visible: Self { return .init("visible") }
  static var hidden: Self { return .init("hidden") }
  static var collapse: Self { return .init("collapse") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - BoxDecorationBreak
public struct BoxDecorationBreak: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BoxDecorationBreak {}

public extension Value where Kind == BoxDecorationBreak {
  static var slice: Self { return .init("slice") }
  static var clone: Self { return .init("clone") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - BoxShadow
public struct BoxShadow: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BoxShadow {
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

public extension Value where Kind == BoxShadow {
  static var inset: Self { return .init("inset") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - BoxSizing
public struct BoxSizing: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension BoxSizing {}

public extension Value where Kind == BoxSizing {
  static var contentBox: Self { return .init("content-box") }
  static var borderBox: Self { return .init("border-box") }
}

/// ------------------------------------------------------------------------ ///
/// MARK: - CaretColor
/// The `caret-color` property specifies the color of the cursor (caret)
/// in inputs, textareas, or any element that is editable.
public struct CaretColor: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

extension CaretColor {}

/// ------------------------------------------------------------------------ ///
/// MARK: - Cursor
/// The `cursor` property specifies the mouse cursor to be displayed when
/// pointing over an element.
public struct Cursor: Property {
  public let rawValue: String
  public let declarations: () -> Declarations
  public init(_ rawValue: String, _ declarations: @escaping () -> Declarations) {
    self.rawValue = rawValue; self.declarations = declarations
  }
}

public extension Value where Kind == Cursor {
  static func url(_ value: String, backup: Value<Cursor> = .default) -> Self {
    return .init("url(\"\(value)\"),\(backup.rawValue)")
  }

  /// A comma separated list of URLs to custom cursors.
  /// Note: Always specify a generic cursor at the end of the list, in case none
  /// of the URL-defined cursors can be used
  @_disfavoredOverload
  static func url(_ value: String, _ moreValues: String ..., backup: Value<Cursor> = .default) -> Self {
    return .url([value] + moreValues, backup: backup)
  }


  /// TODO: make it NonEmptyArray<String>
  static func url(_ values: Array<String>, backup: Value<Cursor> = .default) -> Self {
    let vals = values.map { "url(\"\($0)\")" }.joined(separator: ",")
    return .init("\(vals),\(backup.rawValue)")
  }
}

public extension Value where Kind == Cursor {
  static var alias: Self { return .init("alias") }
  static var allScroll: Self { return .init("all-scroll") }
  static var cell: Self { return .init("cell") }
  static var contextMenu: Self { return .init("context-menu") }
  static var colResize: Self { return .init("col-resize") }
  static var copy: Self { return .init("copy") }
  static var crosshair: Self { return .init("crosshair") }
  static var defaultCursor: Self { return .init("default") }
  static var eResize: Self { return .init("e-resize") }
  static var ewResize: Self { return .init("ew-resize") }
  static var grab: Self { return .init("grab") }
  static var grabbing: Self { return .init("grabbing") }
  static var help: Self { return .init("help") }
  static var move: Self { return .init("move") }
  static var nResize: Self { return .init("n-resize") }
  static var neResize: Self { return .init("ne-resize") }
  static var neswResize: Self { return .init("nesw-resize") }
  static var nsResize: Self { return .init("ns-resize") }
  static var nwResize: Self { return .init("nw-resize") }
  static var nwseResize: Self { return .init("nwse-resize") }
  static var noDrop: Self { return .init("no-drop") }
  static var notAllowed: Self { return .init("not-allowed") }
  static var pointer: Self { return .init("pointer") }
  static var progress: Self { return .init("progress") }
  static var rowResize: Self { return .init("row-resize") }
  static var sResize: Self { return .init("s-resize") }
  static var seResize: Self { return .init("se-resize") }
  static var swResize: Self { return .init("sw-resize") }
  static var text: Self { return .init("text") }
  static var verticalText: Self { return .init("vertical-text") }
  static var wResize: Self { return .init("w-resize") }
  static var wait: Self { return .init("wait") }
  static var zoomIn: Self { return .init("zoom-in") }
  static var zoomOut: Self { return .init("zoom-out") }
}
