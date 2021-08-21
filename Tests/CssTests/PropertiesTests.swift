final class PropertiesTests: XCTestCase {
  func testDefaultAnimation() {
    validate("animation: none 0s ease 0s 1 normal none running", animation(.default))
    validate("animation-delay: 0s", animationDelay(.default))
    validate("animation-direction: normal", animationDirection(.default))
    validate("animation-duration: 0s", animationDuration(.default))
    validate("animation-fill-mode: none", animationFillMode(.default))
    validate("animation-iteration-count: 1", animationIterationCount(.default))
    validate("animation-name: none", animationName(.default))
    validate("animation-play-state: running", animationPlayState(.default))
    validate("animation-timing-function: ease", animationTimingFunction(.default))
  }
  
  func testDefaultBackground() {
    validate("background: transparent none 0% 0% auto repeat padding-box border-box scroll", background(.default))
    validate("background-attachment: scroll", backgroundAttachment(.default))
    validate("background-blend-mode: normal", backgroundBlendMode(.default))
    validate("background-clip: border-box", backgroundClip(.default))
    validate("background-color: transparent", backgroundColor(.default))
    validate("background-image: none", backgroundImage(.default))
    validate("background-origin: padding-box", backgroundOrigin(.default))
    validate("background-position: 0% 0%", backgroundPosition(.default))
    validate("background-repeat: repeat", backgroundRepeat(.default))
    validate("background-size: auto", backgroundSize(.default))
  }
  
  func testDefaultBorder() {
    validate("border: medium none currentColor", border(.default))
    validate("border-bottom: medium none currentColor", borderBottom(.default))
    validate("border-bottom-color: black", borderBottomColor(.default))
    validate("border-bottom-left-radius: 0", borderBottomLeftRadius(.default))
    validate("border-bottom-right-radius: 0", borderBottomRightRadius(.default))
    validate("border-bottom-style: none", borderBottomStyle(.default))
    validate("border-bottom-width: medium", borderBottomWidth(.default))
    validate("border-collapse: separate", borderCollapse(.default))
    validate("border-color: black", borderColor(.default))
    validate("border-image: none 100% 1 0 stretch", borderImage(.default))
    validate("border-image-outset: 0", borderImageOutset(.default))
    validate("border-image-repeat: stretch", borderImageRepeat(.default))
    validate("border-image-slice: 100%", borderImageSlice(.default))
    validate("border-image-source: none", borderImageSource(.default))
    validate("border-image-width: 1", borderImageWidth(.default))
    validate("border-left: medium none currentColor", borderLeft(.default))
    validate("border-left-color: black", borderLeftColor(.default))
    validate("border-left-style: none", borderLeftStyle(.default))
    validate("border-left-width: medium", borderLeftWidth(.default))
    validate("border-radius: 0", borderRadius(.default))
    validate("border-right: medium none currentColor", borderRight(.default))
    validate("border-right-color: black", borderRightColor(.default))
    validate("border-right-style: none", borderRightStyle(.default))
    validate("border-right-width: medium", borderRightWidth(.default))
    validate("border-spacing: 2px", borderSpacing(.default))
    validate("border-style: none", borderStyle(.default))
    validate("border-top: medium none currentColor", borderTop(.default))
    validate("border-top-color: black", borderTopColor(.default))
    validate("border-top-left-radius: 0", borderTopLeftRadius(.default))
    validate("border-top-right-radius: 0", borderTopRightRadius(.default))
    validate("border-top-style: none", borderTopStyle(.default))
    validate("border-top-width: medium", borderTopWidth(.default))
    validate("border-width: medium", borderWidth(.default))
  }
  
  func testDefaultColor() {
    validate("color: black", color(.default))
    validate("opacity: 1", opacity(.default))
  }
  
  func testDefaultDimension() {
    validate("height: auto", height(.default))
    validate("min-height: auto", minHeight(.default))
    validate("max-height: auto", maxHeight(.default))
    validate("width: auto", width(.default))
    validate("min-width: auto", minWidth(.default))
    validate("max-width: auto", maxWidth(.default))
  }
  
  func testDefaultFlexibleBox() {
    validate("align-content: stretch", alignContent(.default))
    validate("align-items: stretch", alignItems(.default))
    validate("align-self: auto", alignSelf(.default))
    validate("flex: 0 1 auto", flex(.default))
    validate("flex-basis: auto", flexBasis(.default))
    validate("flex-direction: row", flexDirection(.default))
    validate("flex-flow: row nowrap", flexFlow(.default))
    validate("flex-grow: 0", flexGrow(.default))
    validate("flex-shrink: 1", flexShrink(.default))
    validate("flex-wrap: nowrap", flexWrap(.default))
    validate("justify-content: flex-start", justifyContent(.default))
    validate("order: 0", order(.default))
  }
  
  func testDefaultFont() {
    /// validate("font: Value<Key.Font>.default.rawValue", font(.default))
    /// validate("font-family: Value<Key.FontFamily>.default.rawValue", fontFamily(.default))
    /// validate("font-feature-settings: Value<Key.FontFeatureSettings>.default.rawValue", fontFeatureSettings(.default))
    validate("font-kerning: auto", fontKerning(.default))
    validate("font-size: medium", fontSize(.default))
    validate("font-size-adjust: none", fontSizeAdjust(.default))
    validate("font-stretch: normal", fontStretch(.default))
    validate("font-style: normal", fontStyle(.default))
    validate("font-variant: normal", fontVariant(.default))
    validate("font-variant-caps: normal", fontVariantCaps(.default))
    validate("font-weight: normal", fontWeight(.default))
  }
  
  func testDefaultGeneratedContent() {
    validate("content: normal", content(.default))
    validate("quotes: none", quotes(.default))
    validate("counter-reset: none", counterReset(.default))
    validate("counter-increment: none", counterIncrement(.default))
  }
  
  func testDefaultList() {
    validate("list-style: disc outside normal", listStyle(.default))
    validate("list-style-type: disc", listStyleType(.default))
    validate("list-style-position: outside", listStylePosition(.default))
    validate("list-style-image: normal", listStyleImage(.default))
  }
  
  func testDefaultMargin() {
    validate("margin: 0", margin(.default))
    validate("margin-bottom: 0", marginBottom(.default))
    validate("margin-left: 0", marginLeft(.default))
    validate("margin-right: 0", marginRight(.default))
    validate("margin-top: 0", marginTop(.default))
  }
  
  func testDefaultMultiColumn() {
    validate("column-count: auto", columnCount(.default))
    validate("column-fill: balance", columnFill(.default))
    validate("column-gap: normal", columnGap(.default))
    validate("column-rule: medium none currentColor", columnRule(.default))
    validate("column-rule-color: invert", columnRuleColor(.default))
    validate("column-rule-style: none", columnRuleStyle(.default))
    validate("column-rule-width: medium", columnRuleWidth(.default))
    validate("column-span: none", columnSpan(.default))
    validate("column-width: auto", columnWidth(.default))
    validate("columns: auto auto", columns(.default))
  }
  
  func testDefaultOutline() {
    validate("outline: medium none invert", outline(.default))
    validate("outline-color: black", outlineColor(.default))
    validate("outline-offset: 0", outlineOffset(.default))
    validate("outline-style: none", outlineStyle(.default))
    validate("outline-width: medium", outlineWidth(.default))
  }
  
  func testDefaultPadding() {
    validate("padding: 0", padding(.default))
    validate("padding-bottom: 0", paddingBottom(.default))
    validate("padding-left: 0", paddingLeft(.default))
    validate("padding-right: 0", paddingRight(.default))
    validate("padding-top: 0", paddingTop(.default))
  }
  
  func testDefaultPrint() {
    validate("break-after: auto", breakAfter(.default))
    validate("break-before: auto", breakBefore(.default))
    validate("break-inside: auto", breakInside(.default))
  }
  
  func testDefaultText() {
    /// validate("text-align: Value<Key.TextAlign>.default.rawValue", textAlign(.default))
    validate("text-align-last: auto", textAlignLast(.default))
    validate("text-decoration: none currentColor solid", textDecoration(.default))
    validate("text-decoration-color: currentColor", textDecorationColor(.default))
    validate("text-decoration-line: none", textDecorationLine(.default))
    validate("text-decoration-style: solid", textDecorationStyle(.default))
    validate("text-indent: 0", textIndent(.default))
    validate("text-justify: auto", textJustify(.default))
    validate("text-overflow: clip", textOverflow(.default))
    validate("text-shadow: none", textShadow(.default))
    validate("text-transform: none", textTransform(.default))
    validate("line-height: normal", lineHeight(.default))
    validate("letter-spacing: normal", letterSpacing(.default))
  }
  
  func testDefaultTransform() {
    validate("backface-visibility: visible", backfaceVisibility(.default))
    validate("transform: none", transform(.default))
    validate("transform-origin: 50% 50% 0", transformOrigin(.default))
    validate("transform-style: flat", transformStyle(.default))
  }
  
  func testDefaultTransition() {
    validate("transition: none 0s ease 0s 1 normal none running", transition(.default))
    validate("transition-delay: 0s", transitionDelay(.default))
    validate("transition-duration: 0s", transitionDuration(.default))
    validate("transition-property: all", transitionProperty(.default))
    validate("transition-timing-function: ease", transitionTimingFunction(.default))
  }
  
  func testDefaultVisualFormatting() {
    validate("display: inline", display(.default))
    validate("position: static", position(.default))
    validate("top: auto", top(.default))
    validate("right: auto", right(.default))
    validate("bottom: auto", bottom(.default))
    validate("left: auto", left(.default))
    validate("float: none", float(.default))
    validate("clear: none", clear(.default))
    validate("z-index: auto", zIndex(.default))
    validate("overflow: visible", overflow(.default))
    validate("overflow-x: visible", overflowX(.default))
    validate("overflow-y: visible", overflowY(.default))
    /// validate("clip-path: Value<Key.ClipPath>.default.rawValue", clipPath(.default))
    validate("visibility: visible", visibility(.default))
    validate("box-decoration-break: slice", boxDecorationBreak(.default))
    validate("box-shadow: none", boxShadow(.default))
    validate("box-sizing: content-box", boxSizing(.default))
    validate("caret-color: auto", caretColor(.default))
    validate("cursor: auto", cursor(.default))
  }

  func testCssProperties() {
    testDefaultAnimation()
    testDefaultBackground()
    testDefaultBorder()
    testDefaultColor()
    testDefaultDimension()
    testDefaultFlexibleBox()
    testDefaultFont()
    testDefaultGeneratedContent()
    testDefaultList()
    testDefaultMargin()
    testDefaultMultiColumn()
    testDefaultOutline()
    testDefaultPadding()
    testDefaultPrint()
    testDefaultText()
    testDefaultTransform()
    testDefaultTransition()
    testDefaultVisualFormatting()
  }

  static var allTests = [
    ("testCssProperties", testCssProperties),
  ]
}

extension Property {
  /// this will avoid rendering the browser support
  func testRender() -> String {
    let key = String(describing: Self.key)
    let value = self.rawValue
    return "\(key): \(value)"
  }
}

private func validate<P: Property>(_ lhs: String, _ rhs: P) {
  XCTAssertEqual(lhs, rhs.testRender())
}