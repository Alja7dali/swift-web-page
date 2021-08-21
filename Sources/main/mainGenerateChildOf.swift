// // // import Css

// // // let stylesheet = Stylesheet {
// // //   Import("url(\'./icon.png\'")
// // //   Selector("a") {
// // //     BorderWidth(.thin)
// // //     BackgroundColor(.blue())
// // //     Color(.red())
// // //   }
// // // }

// // // print(stylesheet.debugRender())


// // // // print(BorderColor(.red()))


// // // // let s = Selector("*") {

// // // //   /////////////////////////////////////
// // // //   ///           Animation           ///
// // // //   /////////////////////////////////////

// // // //   // animation(
// // // //   //   name: "Yallo",
// // // //   //   duration: .ms(42),
// // // //   //   timingFunction: .easeIn,
// // // //   //   delay: .ms(-500),
// // // //   //   iterationCount: .default, // 1
// // // //   //   direction: .alternateReverse,
// // // //   //   fillMode: .backwards,
// // // //   //   playState: .paused
// // // //   // )

// // // //   // animationName("Yallo")
// // // //   animationDuration(.ms(42))
// // // //   // animationTimingFunction(.easeIn)
// // // //   // animationDelay(.ms(-500))
// // // //   // animationIterationCount(.default) // 1
// // // //   // animationDirection(.alternateReverse)
// // // //   // animationFillMode(.backwards)
// // // //   // animationPlayState(.paused)

// // // //   /////////////////////////////////////
// // // //   ///           Background          ///
// // // //   /////////////////////////////////////

// // // //   // background(
// // // //   //   color: .transparent,
// // // //   //   image: .none,
// // // //   //   position: .default,
// // // //   //   size: .auto,
// // // //   //   repeat: .repeat,
// // // //   //   origin: .paddingBox,
// // // //   //   clip: .borderBox,
// // // //   //   attachment: .scroll
// // // //   // )

// // // //   // backgroundColor(.transparent)
// // // //   // backgroundImage(.none)
// // // //   // backgroundPosition(.default)
// // // //   // backgroundSize(.auto)
// // // //   // backgroundRepeat(.repeat)
// // // //   // backgroundOrigin(.paddingBox)
// // // //   // backgroundClip(.borderBox)
// // // //   // backgroundAttachment(.scroll)

// // // //   // backgroundBlendMode(.normal)

// // // //   /////////////////////////////////////
// // // //   ///             Border            ///
// // // //   /////////////////////////////////////

// // // //   // border(.width: .medium, style: .none, color: default)
  
// // // //   // borderWidth(.thin)
// // // //   // borderWidth(.thin, thick)
// // // //   // borderWidth(.thin, .thick, medium)
// // // //   // borderWidth(.thin, .thick, .medium, default)

// // // //   // borderStyle(.dotted)
// // // //   // borderStyle(.dotted, ridge)
// // // //   // borderStyle(.dotted, .ridge, double)
// // // //   // borderStyle(.dotted, .ridge, .double, groove)

// // // //   // borderColor(.pink)
// // // //   // borderColor(.pink, hotPink)
// // // //   // borderColor(.pink, .hotPink, deepPink)
// // // //   // borderColor(.pink, .hotPink, .deepPink, lightPink)

// // // //   // borderTop(.width: .medium, style: .none, color: default)
// // // //   // borderTopWidth(.thin)
// // // //   // borderTopStyle(.solid)
// // // //   // borderTopColor(.gray)

// // // //   // borderRight(.width: .medium, style: .none, color: default)
// // // //   // borderRightWidth(.thin)
// // // //   // borderRightStyle(.solid)
// // // //   // borderRightColor(.gray)

// // // //   // borderBottom(.width: .medium, style: .none, color: default)
// // // //   // borderBottomWidth(.thin)
// // // //   // borderBottomStyle(.solid)
// // // //   // borderBottomColor(.gray)

// // // //   // borderLeft(.width: .medium, style: .none, color: default)
// // // //   // borderLeftWidth(.thin)
// // // //   // borderLeftStyle(.solid)
// // // //   // borderLeftColor(.gray)

// // // //   // borderCollapse(.separate)

// // // //   // borderSpacing(10%)
// // // //   // // borderSpacing(10%, .px(20))

// // // //   // borderImage(
// // // //   //   source: .url("/img/myImage.jpeg"),
// // // //   //   slice:  4.2,
// // // //   //   width:  .em(2),
// // // //   //   outset: .px(13),
// // // //   //   repeat: .round
// // // //   // )

// // // //   // // borderImageSource(.url("/img/yourImage.jpeg"))

// // // //   // // borderImageSlice(10%)
// // // //   // // borderImageSlice(10%, 2.3)
// // // //   // // borderImageSlice(10%, 2.3, 12)
// // // //   // // borderImageSlice(10%, 2.3, 12, 21)

// // // //   // // borderImageWidth(.px(10))
// // // //   // // borderImageWidth(.px(10), 23%)
// // // //   // // borderImageWidth(.px(10), 23%, .em(12))
// // // //   // // borderImageWidth(.px(10), 23%, .em(12), .ch(21))

// // // //   // // borderImageOutset(.px(10))
// // // //   // // borderImageOutset(.px(10), 2.3)
// // // //   // // borderImageOutset(.px(10), 2.3, .em(12))
// // // //   // // borderImageOutset(.px(10), 2.3, .em(12), .ch(21))

// // // //   // // borderImageRepeat(.space)

// // // //   // borderRadius(.px(10))
// // // //   // // borderRadius(.px(10), 23%)
// // // //   // // borderRadius(.px(10), 23%, .em(12))
// // // //   // // borderRadius(.px(10), 23%, .em(12), .ch(21))

// // // //   // // borderTopLeftRadius(.pct(25)) // 25%
// // // //   // // borderTopRightRadius(25%)
// // // //   // // borderBottomLeftRadius(.pct(25)) // 25%
// // // //   // // borderBottomRightRadius(25%)

// // // //   // /////////////////////////////////////
// // // //   // ///             Color             ///
// // // //   // /////////////////////////////////////

// // // //   // color(.red)
// // // //   // opacity(0.25)

// // // //   // /////////////////////////////////////
// // // //   // ///           Dimension           ///
// // // //   // /////////////////////////////////////

// // // //   // height(50%)
// // // //   // minHeight(.pt(50))
// // // //   // maxHeight(.px(50))

// // // //   // width(50%)
// // // //   // minWidth(.pt(50))
// // // //   // maxWidth(.px(50))

// // // //   // /////////////////////////////////////
// // // //   // ///       Generated Content       ///
// // // //   // /////////////////////////////////////

// // // //   // content("\"[\" counter(myCounterId) \"]\"")
// // // //   // // content(.counter("myCounterId")) //: .counter(myCounter);

// // // //   // quotes(.pairs(("[", "]"), ("{", "}")))
// // // //   // // quotes(("[", "]"), ("{", "}"))

// // // //   // counterIncrement("myCounterId")
// // // //   // counterReset("myCounterId -1")

// // // //   // /////////////////////////////////////
// // // //   // ///          Grid Layout          ///
// // // //   // /////////////////////////////////////
// // // //   // /*       Not Implemented Yet       */
// // // //   // /////////////////////////////////////

// // // //   // /////////////////////////////////////
// // // //   // ///       FlexibleBoxLayout       ///
// // // //   // /////////////////////////////////////

// // // //   // alignContent(.stretch)
// // // //   // alignItems(.center)
// // // //   // alignSelf(.baseline)

// // // //   // flex(
// // // //   //   grow: 2,
// // // //   //   shrink: 1,
// // // //   //   basis: 20%
// // // //   // )

// // // //   // // flexGrow(.default)
// // // //   // // flexShrink(.default)
// // // //   // // flexBasis(.default)

// // // //   // flexFlow(
// // // //   //   direction: .rowReverse,
// // // //   //   wrap: .wrap
// // // //   // )

// // // //   // // flexDirection(.column)
// // // //   // // flexWrap(.nowrap)

// // // //   // justifyContent(.center)
// // // //   // order(2)

// // // //   // /////////////////////////////////////
// // // //   // ///             Font              ///
// // // //   // /////////////////////////////////////

// // // //   // font(.caption)

// // // //   // font(
// // // //   //   style: .italic,
// // // //   //   variant: .smallCaps,
// // // //   //   weight: 600,
// // // //   //   size: 50%,
// // // //   //   family: "times"
// // // //   // )

// // // //   // // font(
// // // //   // //   style: .italic,
// // // //   // //   variant: .smallCaps,
// // // //   // //   weight: 600,
// // // //   // //   lineHeight: 50%,
// // // //   // //   family: "times"
// // // //   // // )

// // // //   // // fontStyle(.oblique)
// // // //   // // fontVariant(.normal)
// // // //   // // fontWeight(.lighter)
// // // //   // // fontSize(.smaller)
// // // //   // // fontFamily("monospace")

// // // //   // fontFeatureSettings("\"smcp\" on")
// // // //   // fontKerning(.normal)
// // // //   // fontSizeAdjust(41.9)
// // // //   // fontStretch(.semiExpanded)
// // // //   // fontVariantCaps(.allSmallCaps)

// // // //   // /////////////////////////////////////
// // // //   // ///             List              ///
// // // //   // /////////////////////////////////////

// // // //   // listStyle(type: .square, position: .outside, image: .url("/img/myImage.png"))

// // // //   // // listStyleType(.lowerRoman)
// // // //   // // listStylePosition(.inside)
// // // //   // // listStyleImage(.none)

// // // //   // /////////////////////////////////////
// // // //   // ///            Margin             ///
// // // //   // /////////////////////////////////////

// // // //   // margin(.px(10))
// // // //   // // margin(.px(10), 23%)
// // // //   // // margin(.px(10), 23%, .em(12))
// // // //   // // margin(.px(10), 23%, .em(12), .ch(21))
  
// // // //   // // marginTop(.px(10))
// // // //   // // marginRight(.px(10))
// // // //   // // marginBottom(.px(10))
// // // //   // // marginLeft(.px(10))

// // // //   // /////////////////////////////////////
// // // //   // ///       MultiColumnLayout       ///
// // // //   // /////////////////////////////////////

// // // //   // columns(width: .px(100), count: 12)
// // // //   // columnWidth(.px(100))
// // // //   // .columnCount(12)

// // // //   // columnRule(.width: .medium, style: .none, color: default)
// // // //   // // columnRuleWidth(.thin)
// // // //   // // columnRuleStyle(.solid)
// // // //   // // columnRuleColor(.gray)

// // // //   // columnSpan(.all)
// // // //   // columnFill(.balance)
// // // //   // columnGap(10%)

// // // //   // /////////////////////////////////////
// // // //   // ///            Outline            ///
// // // //   // /////////////////////////////////////

// // // //   // outline(.width: .medium, style: .none, color: default)
// // // //   // // outlineWidth(.thin)
// // // //   // // outlineStyle(.solid)
// // // //   // // outlineColor(.gray)

// // // //   // outlineOffset(10%)

// // // //   // /////////////////////////////////////
// // // //   // ///            Padding            ///
// // // //   // /////////////////////////////////////

// // // //   // padding(.px(10))
// // // //   // padding(.px(10), 23%)
// // // //   // padding(.px(10), 23%, .em(12))
// // // //   // padding(.px(10), 23%, .em(12), .ch(21))

// // // //   // // paddingTop(.px(10))
// // // //   // // paddingRight(.px(10))
// // // //   // // paddingBottom(.px(10))
// // // //   // // paddingLeft(.px(10))

// // // //   // /////////////////////////////////////
// // // //   // ///             Print             ///
// // // //   // /////////////////////////////////////
// // // //   // breakAfter(.right)
// // // //   // breakBefore(.left)
// // // //   // breakInside(.avoidColumn)

// // // //   // /////////////////////////////////////
// // // //   // ///             Table             ///
// // // //   // /////////////////////////////////////
// // // //   // /*       Not Implemented Yet       */
// // // //   // /////////////////////////////////////

// // // //   // /////////////////////////////////////
// // // //   // ///             Text              ///
// // // //   // /////////////////////////////////////

// // // //   // textAlign(.justify)
// // // //   // textLastAlign(.end)
// // // //   // textDecoration(.line: .blink, color: .blanchedAlmond, style: wavy)

// // // //   // // textDecorationLine(.overline)
// // // //   // // textDecorationColor(.blanchedAlmond)
// // // //   // // textDecorationStyle(.dotted)

// // // //   // textIndent(10%)
// // // //   // textJustify(.distribute)
// // // //   // textOverflow(.ellipsis)
// // // //   // textShadow(.px(20), .px(30), .px(5), deepSkyBlue)
// // // //   // textTransform(.capitalize)
  
// // // //   // lineHeight(.px(50))
// // // //   // letterSpacing(.px(1))

// // // //   // /////////////////////////////////////
// // // //   // ///           Transform           ///
// // // //   // /////////////////////////////////////
// // // //   // backfaceVisibility(.hidden)

// // // //   // transformOrigin(.default)
// // // //   // // transformOrigin(.px(10), px(-10))
// // // //   // // transformOrigin(.px(10), px(-10), .px(20))

// // // //   // transformStyle(.preserve3d)

// // // //   // transform(.translate(.px(10), .px(10)), scale(1.5, 2))

// // // //   // /////////////////////////////////////
// // // //   // ///          Transition           ///
// // // //   // /////////////////////////////////////

// // // //   // transition(
// // // //   //   property: "background",
// // // //   //   duration: .ms(500),
// // // //   //   timingFunction: .easeIn,
// // // //   //   delay: .ms(125)
// // // //   // )

// // // //   // // transitionProperty(.all)
// // // //   // // transitionDuration(.ms(250))
// // // //   // // transitionTimingFunction(.linear)
// // // //   // // transitionDelay(.s(1))

// // // //   // /////////////////////////////////////
// // // //   // ///       Visual formatting       ///
// // // //   // /////////////////////////////////////

// // // //   // display(.block)
// // // //   // position(.static)

// // // //   // top(.px(10))
// // // //   // right(.px(10))
// // // //   // bottom(.px(10))
// // // //   // left(.px(10))

// // // //   // // /// the helper `edges` function comes with four signatures and
// // // //   // // /// it will assigne top, right, left, and right separately.
// // // //   // // /// allSides
// // // //   // // edges(10%)
// // // //   // // /// topBottom, leftRight
// // // //   // // edges(10%, 20%)
// // // //   // // /// top, leftRight, bottom
// // // //   // // edges(10%, 20%, 30%)
// // // //   // // /// top, right, bottom, left
// // // //   // // edges(10%, .px(20), .px(100), .px(50))

// // // //   // float(.left)

// // // //   // clear(.both)

// // // //   // zIndex(-1000)

// // // //   // overflow(.hidden)
// // // //   // overflowX(.hidden)
// // // //   // overflowY(.visible)

// // // //   // visibility(.collapse)

// // // //   // boxDecorationBreak(.slice)
// // // //   // boxShadow(.px(100), .px(50), 50%, 25%, red)
// // // //   // boxSizing(.borderBox)

// // // //   // caretColor(.orangeRed)

// // // //   // cursor(.zoomIn)
// // // // }

// // // // print(s.debugRender())



// // import Swep

// // let renderMode: RenderMode = .release(.pretty(.spaces(2)))

// // let darkGithubStyle = style(renderMode) {
// //   selector("body") {
// //     margin(.px(0), .auto)
// //     backgroundColor(.black())
// //     fontFamily("Georgia, Palatino, serif")
// //     color(.hex(0xEEE))
// //     lineHeight(1)
// //     maxWidth(.px(960))
// //     padding(.px(30))
// //   }
// //   selector("h1, h2, h3, h4") {
// //     fontWeight(400)
// //   }
// //   selector("h1, h2, h3, h4, h5, p") {
// //     marginBottom(.px(24))
// //     padding(.px(0))
// //   }
// //   selector("h1") {
// //     fontSize(.px(48))
// //   }
// //   selector("h2") {
// //     fontSize(.px(36))
// //     margin(.px(24), .px(0), .px(6))
// //   }
// //   selector("h3") {
// //     fontSize(.px(24))
// //   }
// //   selector("h4") {
// //     fontSize(.px(21))
// //   }
// //   selector("h5") {
// //     fontSize(.px(18))
// //   }
// //   selector("a") {
// //     color(.hex(0x61BFC1))
// //     margin(.px(0))
// //     padding(.px(0))
// //     textDecorationLine(.none)
// //     // verticalAlignment(.underline)
// //   }
// //   selector("a:hover") {
// //     textDecorationLine(.underline)
// //   }
// //   selector("a:visited") {
// //     color(.hex(0x466B6C))
// //   }
// //   selector("ul, ol") {
// //     margin(.px(0))
// //     padding(.px(0))
// //   }
// //   selector("li") {
// //     lineHeight(.px(24))
// //   }
// //   selector("li ul, li ul") {
// //     marginLeft(.px(24))
// //   }
// //   selector("p, ul, ol") {
// //     fontSize(.px(16))
// //     lineHeight(.px(24))
// //     maxWidth(.px(540))
// //   }
// //   selector("pre") {
// //     padding(.px(0), .px(24))
// //     maxWidth(.px(800))
// //     // whiteSpace(.prewrap)
// //   }
// //   selector("code") {
// //     fontFamily("Consolas, Monaco, Andale Mono, monospace")
// //     lineHeight(1.5)
// //     fontSize(.px(13))
// //   }
// //   selector("aside") {
// //     display(.block)
// //     float(.right)
// //     width(.px(390))
// //   }
// //   selector("blockquote") {
// //     borderLeft(
// //       width: .em(5),
// //       style: .solid,
// //       color: .hex(0xEEE)
// //     )
// //     padding(.px(0), .em(2))
// //     marginLeft(.px(0))
// //     maxWidth(.px(476))
// //   }
// //   selector("blockquote cite") {
// //     fontSize(.px(14))
// //     lineHeight(.px(20))
// //     color(.hex(0xBFBFBF))
// //   }
// //   selector("blockquote cite:before") {
// //     content("\'\\2014 \\00A0\'")
// //   }
// //   selector("blockquote p") {
// //     color(.hex(0x666))
// //     maxWidth(.px(460))
// //   }
// //   selector("hr") {
// //     width(.px(540))
// //     textAlign(.left)
// //     margin(.px(0), .auto, .px(0), .px(0))
// //     color(.hex(0x999))
// //   }
// // }

// // let page = document {
// //   html {
// //     head {
// //       title("Hello!")
// //       darkGithubStyle
// //     }
// //     body {
// //       p("Hide me pls!")
// //         .display(.none)
// //       h1("Welcome!")
// //       p("Welcome to you & who has come here before.")
// //       p {
// //         text("This is a paragraph with ")
// //         em("some")
// //         text(" inline formatting and ")
// //         a("a link")
// //           .href("https://example.org")
// //         text("!")
// //       }
// //       p {
// //         text("Here's an ")
// //         strong("ordered")
// //         text(" list:")
// //       }
// //       ol {
// //         li("Eat")
// //         li("Code")
// //         li("Sleep")
// //         li("Repeat")
// //       }
// //       p("And \"unordered\":")
// //       ul {
// //         li("Milk")
// //         li("Eggs")
// //         li("Coffee")
// //       }
// //       p("They said:")
// //       blockquote("Code to the interface you wish you had not the interface you were given.")
// //       script("alert(\"hello!\");")
// //     }
// //   }
// // }

// // // let dummy =       ol {
// // //         div("Eat")
// // //         div("Code")
// // //         div("Sleep")
// // //         div("Repeat")
// // //       }

// // print(page.render(renderMode))


// // // print(darkGithubStyle.render())




// // // print(
// // //       a("a link")
// // //       .href("https://example.org")
// // // )





// fileprivate func childOfBuilderGenerator() {
//   let childOf = [
//     "Any",
//     "Audio",
//     "Colgroup",
//     "Details",
//     "Dl",
//     "Fieldset",
//     "Figure",
//     "Head",
//     "Map",
//     "Object",
//     "Ol",
//     "Optgroup",
//     "Picture",
//     "Select",
//     // "Table",
//     "Tbody",
//     "Tfoot",
//     "Thead",
//     // "Tr",
//     "Ul",
//     "Video"
//   ]
  
//   print(
//   """
//   /// DO NOT EDIT THIS FILE MANUALLY
  
//   /// MARK: ChildOfDocument
//   public extension HtmlNodeBuilder {
//     @_disfavoredOverload
//     static func buildBlock(
//       _ v0: Element<Tag.Html>
//     ) -> ChildOf<Document> {
//       return .init(v0)
//     }
//   }
  
//   /// MARK: ChildOfHtml
//   public extension HtmlNodeBuilder {
//     @_disfavoredOverload
//     static func buildBlock(
//       _ v0: Element<Tag.Head>
//     ) -> ChildOf<Html> {
//       return .init(v0)
//     }
//     static func buildBlock(
//       _ v0: Element<Tag.Body>
//     ) -> ChildOf<Html> {
//       return .init(v0)
//     }
//     @_disfavoredOverload
//     static func buildBlock(
//       _ v0: Element<Tag.Head>, _ v1: Element<Tag.Body>
//     ) -> ChildOf<Html> {
//       return .init(Tuple<(Element<Tag.Head>, Element<Tag.Body>)>((v0, v1)))
//     }
//   }
  
//   """
//   )
//   for c in childOf {
//       print("/// MARK: ChildOf\(c)")
//       print("public typealias ChildOf\(c)Node = ChildOf\(c) & HtmlNode")
//       print("extension ChildOf: ChildOf\(c) where Parent == \(c) {}")
//       print("public extension HtmlNodeBuilder {")
//       // print("  static func buildOptional<N: ChildOf\(c)Node>(_ node: Optional<N>) -> ChildOf<\(c)> {")
//       // print("    return .init(node ?? Empty())")
//       // print("  }")
//       print("  static func buildEither<N: ChildOf\(c)Node>(first node: N) -> ChildOf<\(c)> {")
//       print("    return .init(node)")
//       print("  }")
//       print("  static func buildEither<N: ChildOf\(c)Node>(second node: N) -> ChildOf<\(c)> {")
//       print("    return .init(node)")
//       print("  }")
//       print("  static func buildArray<N: ChildOf\(c)Node>(_ nodes: Array<N>) -> ChildOf<\(c)> {")
//       print("    return .init(nodes)")
//       print("  }")
//       print("  static func buildLimitedAvailability<N: ChildOf\(c)Node>(_ node: N) -> ChildOf<\(c)> {")
//       print("    return .init(node)")
//       print("  }")
//       print("  static func buildBlock() -> ChildOf<\(c)> {")
//       print("    return .init(Empty())")
//       print("  }")
//       print("  static func buildBlock<N: ChildOf\(c)Node>(_ nodes: N ...) -> ChildOf<\(c)> {")
//       print("    return .init(nodes)")
//       print("  }")
//     for i in 1...41 {
//       var generic = ""
//       var parameters = ""
//       var returnType = ""
//       var returnValue = ""
//       for j in 0...i {
//         generic += "T\(j): ChildOf\(c)Node, "
//         parameters += "_ v\(j): T\(j), "
//         returnType += "T\(j), "
//         returnValue += "v\(j), "
//       }
//       print("  @_disfavoredOverload")
//       print("  static func buildBlock<\(generic.dropLast(2))>(")
//       print("    \(parameters.dropLast(2))")
//       print("  ) -> ChildOf<\(c)> {")
//       print("    return .init( Tuple<(\(returnType.dropLast(2)))>( (\(returnValue.dropLast(2))) ) )")
//       print("  }")
//     }
//       print("}")
//       print()
//   }
// }

// childOfBuilderGenerator()













// // import Css

// // print("equal(\"animation: \(Value<Key.Animation>.default.rawValue)\", Animation(.default))")
// // print("equal(\"animation-delay: \(Value<Key.AnimationDelay>.default.rawValue)\", AnimationDelay(.default))")
// // print("equal(\"animation-direction: \(Value<Key.AnimationDirection>.default.rawValue)\", AnimationDirection(.default))")
// // print("equal(\"animation-duration: \(Value<Key.AnimationDuration>.default.rawValue)\", AnimationDuration(.default))")
// // print("equal(\"animation-fill-mode: \(Value<Key.AnimationFillMode>.default.rawValue)\", AnimationFillMode(.default))")
// // print("equal(\"animation-iteration-count: \(Value<Key.AnimationIterationCount>.default.rawValue)\", AnimationIterationCount(.default))")
// // print("equal(\"animation-name: \(Value<Key.AnimationName>.default.rawValue)\", AnimationName(.default))")
// // print("equal(\"animation-play-state: \(Value<Key.AnimationPlayState>.default.rawValue)\", AnimationPlayState(.default))")
// // print("equal(\"animation-timing-function: \(Value<Key.AnimationTimingFunction>.default.rawValue)\", AnimationTimingFunction(.default))")
// // print()
// // print("equal(\"background: \(Value<Key.Background>.default.rawValue)\", Background(.default))")
// // print("equal(\"background-attachment: \(Value<Key.BackgroundAttachment>.default.rawValue)\", BackgroundAttachment(.default))")
// // print("equal(\"background-blend-mode: \(Value<Key.BackgroundBlendMode>.default.rawValue)\", BackgroundBlendMode(.default))")
// // print("equal(\"background-clip: \(Value<Key.BackgroundClip>.default.rawValue)\", BackgroundClip(.default))")
// // print("equal(\"background-color: \(Value<Key.BackgroundColor>.default.rawValue)\", BackgroundColor(.default))")
// // print("equal(\"background-image: \(Value<Key.BackgroundImage>.default.rawValue)\", BackgroundImage(.default))")
// // print("equal(\"background-origin: \(Value<Key.BackgroundOrigin>.default.rawValue)\", BackgroundOrigin(.default))")
// // print("equal(\"background-position: \(Value<Key.BackgroundPosition>.default.rawValue)\", BackgroundPosition(.default))")
// // print("equal(\"background-repeat: \(Value<Key.BackgroundRepeat>.default.rawValue)\", BackgroundRepeat(.default))")
// // print("equal(\"background-size: \(Value<Key.BackgroundSize>.default.rawValue)\", BackgroundSize(.default))")
// // print()
// // print("equal(\"border: \(Value<Key.Border>.default.rawValue)\", Border(.default))")
// // print("equal(\"border-bottom: \(Value<Key.BorderBottom>.default.rawValue)\", BorderBottom(.default))")
// // print("equal(\"border-bottom-color: \(Value<Key.BorderBottomColor>.default.rawValue)\", BorderBottomColor(.default))")
// // print("equal(\"border-bottom-left-radius: \(Value<Key.BorderBottomLeftRadius>.default.rawValue)\", BorderBottomLeftRadius(.default))")
// // print("equal(\"border-bottom-right-radius: \(Value<Key.BorderBottomRightRadius>.default.rawValue)\", BorderBottomRightRadius(.default))")
// // print("equal(\"border-bottom-style: \(Value<Key.BorderBottomStyle>.default.rawValue)\", BorderBottomStyle(.default))")
// // print("equal(\"border-bottom-width: \(Value<Key.BorderBottomWidth>.default.rawValue)\", BorderBottomWidth(.default))")
// // print("equal(\"border-collapse: \(Value<Key.BorderCollapse>.default.rawValue)\", BorderCollapse(.default))")
// // print("equal(\"border-color: \(Value<Key.BorderColor>.default.rawValue)\", BorderColor(.default))")
// // print("equal(\"border-image: \(Value<Key.BorderImage>.default.rawValue)\", BorderImage(.default))")
// // print("equal(\"border-image-outset: \(Value<Key.BorderImageOutset>.default.rawValue)\", BorderImageOutset(.default))")
// // print("equal(\"border-image-repeat: \(Value<Key.BorderImageRepeat>.default.rawValue)\", BorderImageRepeat(.default))")
// // print("equal(\"border-image-slice: \(Value<Key.BorderImageSlice>.default.rawValue)\", BorderImageSlice(.default))")
// // print("equal(\"border-image-source: \(Value<Key.BorderImageSource>.default.rawValue)\", BorderImageSource(.default))")
// // print("equal(\"border-image-width: \(Value<Key.BorderImageWidth>.default.rawValue)\", BorderImageWidth(.default))")
// // print("equal(\"border-left: \(Value<Key.BorderLeft>.default.rawValue)\", BorderLeft(.default))")
// // print("equal(\"border-left-color: \(Value<Key.BorderLeftColor>.default.rawValue)\", BorderLeftColor(.default))")
// // print("equal(\"border-left-style: \(Value<Key.BorderLeftStyle>.default.rawValue)\", BorderLeftStyle(.default))")
// // print("equal(\"border-left-width: \(Value<Key.BorderLeftWidth>.default.rawValue)\", BorderLeftWidth(.default))")
// // print("equal(\"border-radius: \(Value<Key.BorderRadius>.default.rawValue)\", BorderRadius(.default))")
// // print("equal(\"border-right: \(Value<Key.BorderRight>.default.rawValue)\", BorderRight(.default))")
// // print("equal(\"border-right-color: \(Value<Key.BorderRightColor>.default.rawValue)\", BorderRightColor(.default))")
// // print("equal(\"border-right-style: \(Value<Key.BorderRightStyle>.default.rawValue)\", BorderRightStyle(.default))")
// // print("equal(\"border-right-width: \(Value<Key.BorderRightWidth>.default.rawValue)\", BorderRightWidth(.default))")
// // print("equal(\"border-spacing: \(Value<Key.BorderSpacing>.default.rawValue)\", BorderSpacing(.default))")
// // print("equal(\"border-style: \(Value<Key.BorderStyle>.default.rawValue)\", BorderStyle(.default))")
// // print("equal(\"border-top: \(Value<Key.BorderTop>.default.rawValue)\", BorderTop(.default))")
// // print("equal(\"border-top-color: \(Value<Key.BorderTopColor>.default.rawValue)\", BorderTopColor(.default))")
// // print("equal(\"border-top-left-radius: \(Value<Key.BorderTopLeftRadius>.default.rawValue)\", BorderTopLeftRadius(.default))")
// // print("equal(\"border-top-right-radius: \(Value<Key.BorderTopRightRadius>.default.rawValue)\", BorderTopRightRadius(.default))")
// // print("equal(\"border-top-style: \(Value<Key.BorderTopStyle>.default.rawValue)\", BorderTopStyle(.default))")
// // print("equal(\"border-top-width: \(Value<Key.BorderTopWidth>.default.rawValue)\", BorderTopWidth(.default))")
// // print("equal(\"border-width: \(Value<Key.BorderWidth>.default.rawValue)\", BorderWidth(.default))")
// // print()
// // print("equal(\"color: \(Value<Key.Color>.default.rawValue)\", Color(.default))")
// // print("equal(\"opacity: \(Value<Key.Opacity>.default.rawValue)\", Opacity(.default))")
// // print()
// // print("equal(\"height: \(Value<Key.Height>.default.rawValue)\", Height(.default))")
// // print("equal(\"min-height: \(Value<Key.MinHeight>.default.rawValue)\", MinHeight(.default))")
// // print("equal(\"max-height: \(Value<Key.MaxHeight>.default.rawValue)\", MaxHeight(.default))")
// // print("equal(\"width: \(Value<Key.Width>.default.rawValue)\", Width(.default))")
// // print("equal(\"min-width: \(Value<Key.MinWidth>.default.rawValue)\", MinWidth(.default))")
// // print("equal(\"max-width: \(Value<Key.MaxWidth>.default.rawValue)\", MaxWidth(.default))")
// // print()
// // print("equal(\"align-content: \(Value<Key.AlignContent>.default.rawValue)\", AlignContent(.default))")
// // print("equal(\"align-items: \(Value<Key.AlignItems>.default.rawValue)\", AlignItems(.default))")
// // print("equal(\"align-self: \(Value<Key.AlignSelf>.default.rawValue)\", AlignSelf(.default))")
// // print("equal(\"flex: \(Value<Key.Flex>.default.rawValue)\", Flex(.default))")
// // print("equal(\"flex-basis: \(Value<Key.FlexBasis>.default.rawValue)\", FlexBasis(.default))")
// // print("equal(\"flex-direction: \(Value<Key.FlexDirection>.default.rawValue)\", FlexDirection(.default))")
// // print("equal(\"flex-flow: \(Value<Key.FlexFlow>.default.rawValue)\", FlexFlow(.default))")
// // print("equal(\"flex-grow: \(Value<Key.FlexGrow>.default.rawValue)\", FlexGrow(.default))")
// // print("equal(\"flex-shrink: \(Value<Key.FlexShrink>.default.rawValue)\", FlexShrink(.default))")
// // print("equal(\"flex-wrap: \(Value<Key.FlexWrap>.default.rawValue)\", FlexWrap(.default))")
// // print("equal(\"justify-content: \(Value<Key.JustifyContent>.default.rawValue)\", JustifyContent(.default))")
// // print("equal(\"order: \(Value<Key.Order>.default.rawValue)\", Order(.default))")
// // print()
// // print("/// equal(\"font: Value<Key.Font>.default.rawValue\", Font(.default))")
// // print("/// equal(\"font-family: Value<Key.FontFamily>.default.rawValue\", FontFamily(.default))")
// // print("/// equal(\"font-feature-settings: Value<Key.FontFeatureSettings>.default.rawValue\", FontFeatureSettings(.default))")
// // print("equal(\"font-kerning: \(Value<Key.FontKerning>.default.rawValue)\", FontKerning(.default))")
// // print("equal(\"font-size: \(Value<Key.FontSize>.default.rawValue)\", FontSize(.default))")
// // print("equal(\"font-size-adjust: \(Value<Key.FontSizeAdjust>.default.rawValue)\", FontSizeAdjust(.default))")
// // print("equal(\"font-stretch: \(Value<Key.FontStretch>.default.rawValue)\", FontStretch(.default))")
// // print("equal(\"font-style: \(Value<Key.FontStyle>.default.rawValue)\", FontStyle(.default))")
// // print("equal(\"font-variant: \(Value<Key.FontVariant>.default.rawValue)\", FontVariant(.default))")
// // print("equal(\"font-variant-caps: \(Value<Key.FontVariantCaps>.default.rawValue)\", FontVariantCaps(.default))")
// // print("equal(\"font-weight: \(Value<Key.FontWeight>.default.rawValue)\", FontWeight(.default))")
// // print()
// // print("equal(\"content: \(Value<Key.Content>.default.rawValue)\", Content(.default))")
// // print("equal(\"quotes: \(Value<Key.Quotes>.default.rawValue)\", Quotes(.default))")
// // print("equal(\"counter-reset: \(Value<Key.CounterReset>.default.rawValue)\", CounterReset(.default))")
// // print("equal(\"counter-increment: \(Value<Key.CounterIncrement>.default.rawValue)\", CounterIncrement(.default))")
// // print()
// // print("equal(\"list-style: \(Value<Key.ListStyle>.default.rawValue)\", ListStyle(.default))")
// // print("equal(\"list-style-type: \(Value<Key.ListStyleType>.default.rawValue)\", ListStyleType(.default))")
// // print("equal(\"list-style-position: \(Value<Key.ListStylePosition>.default.rawValue)\", ListStylePosition(.default))")
// // print("equal(\"list-style-image: \(Value<Key.ListStyleImage>.default.rawValue)\", ListStyleImage(.default))")
// // print()
// // print("equal(\"margin: \(Value<Key.Margin>.default.rawValue)\", Margin(.default))")
// // print("equal(\"margin-bottom: \(Value<Key.MarginBottom>.default.rawValue)\", MarginBottom(.default))")
// // print("equal(\"margin-left: \(Value<Key.MarginLeft>.default.rawValue)\", MarginLeft(.default))")
// // print("equal(\"margin-right: \(Value<Key.MarginRight>.default.rawValue)\", MarginRight(.default))")
// // print("equal(\"margin-top: \(Value<Key.MarginTop>.default.rawValue)\", MarginTop(.default))")
// // print()
// // print("equal(\"column-count: \(Value<Key.ColumnCount>.default.rawValue)\", ColumnCount(.default))")
// // print("equal(\"column-fill: \(Value<Key.ColumnFill>.default.rawValue)\", ColumnFill(.default))")
// // print("equal(\"column-gap: \(Value<Key.ColumnGap>.default.rawValue)\", ColumnGap(.default))")
// // print("equal(\"column-rule: \(Value<Key.ColumnRule>.default.rawValue)\", ColumnRule(.default))")
// // print("equal(\"column-rule-color: \(Value<Key.ColumnRuleColor>.default.rawValue)\", ColumnRuleColor(.default))")
// // print("equal(\"column-rule-style: \(Value<Key.ColumnRuleStyle>.default.rawValue)\", ColumnRuleStyle(.default))")
// // print("equal(\"column-rule-width: \(Value<Key.ColumnRuleWidth>.default.rawValue)\", ColumnRuleWidth(.default))")
// // print("equal(\"column-span: \(Value<Key.ColumnSpan>.default.rawValue)\", ColumnSpan(.default))")
// // print("equal(\"column-width: \(Value<Key.ColumnWidth>.default.rawValue)\", ColumnWidth(.default))")
// // print("equal(\"columns: \(Value<Key.Columns>.default.rawValue)\", Columns(.default))")
// // print()
// // print("equal(\"outline: \(Value<Key.Outline>.default.rawValue)\", Outline(.default))")
// // print("equal(\"outline-color: \(Value<Key.OutlineColor>.default.rawValue)\", OutlineColor(.default))")
// // print("equal(\"outline-offset: \(Value<Key.OutlineOffset>.default.rawValue)\", OutlineOffset(.default))")
// // print("equal(\"outline-style: \(Value<Key.OutlineStyle>.default.rawValue)\", OutlineStyle(.default))")
// // print("equal(\"outline-width: \(Value<Key.OutlineWidth>.default.rawValue)\", OutlineWidth(.default))")
// // print()
// // print("equal(\"padding: \(Value<Key.Padding>.default.rawValue)\", Padding(.default))")
// // print("equal(\"padding-bottom: \(Value<Key.PaddingBottom>.default.rawValue)\", PaddingBottom(.default))")
// // print("equal(\"padding-left: \(Value<Key.PaddingLeft>.default.rawValue)\", PaddingLeft(.default))")
// // print("equal(\"padding-right: \(Value<Key.PaddingRight>.default.rawValue)\", PaddingRight(.default))")
// // print("equal(\"padding-top: \(Value<Key.PaddingTop>.default.rawValue)\", PaddingTop(.default))")
// // print()
// // print("equal(\"break-after: \(Value<Key.BreakAfter>.default.rawValue)\", BreakAfter(.default))")
// // print("equal(\"break-before: \(Value<Key.BreakBefore>.default.rawValue)\", BreakBefore(.default))")
// // print("equal(\"break-inside: \(Value<Key.BreakInside>.default.rawValue)\", BreakInside(.default))")
// // print()
// // print("/// equal(\"text-align: Value<Key.TextAlign>.default.rawValue\", TextAlign(.default))")
// // print("equal(\"text-align-last: \(Value<Key.TextAlignLast>.default.rawValue)\", TextAlignLast(.default))")
// // print("equal(\"text-decoration: \(Value<Key.TextDecoration>.default.rawValue)\", TextDecoration(.default))")
// // print("equal(\"text-decoration-color: \(Value<Key.TextDecorationColor>.default.rawValue)\", TextDecorationColor(.default))")
// // print("equal(\"text-decoration-line: \(Value<Key.TextDecorationLine>.default.rawValue)\", TextDecorationLine(.default))")
// // print("equal(\"text-decoration-style: \(Value<Key.TextDecorationStyle>.default.rawValue)\", TextDecorationStyle(.default))")
// // print("equal(\"text-indent: \(Value<Key.TextIndent>.default.rawValue)\", TextIndent(.default))")
// // print("equal(\"text-justify: \(Value<Key.TextJustify>.default.rawValue)\", TextJustify(.default))")
// // print("equal(\"text-overflow: \(Value<Key.TextOverflow>.default.rawValue)\", TextOverflow(.default))")
// // print("equal(\"text-shadow: \(Value<Key.TextShadow>.default.rawValue)\", TextShadow(.default))")
// // print("equal(\"text-transform: \(Value<Key.TextTransform>.default.rawValue)\", TextTransform(.default))")
// // print("equal(\"line-height: \(Value<Key.LineHeight>.default.rawValue)\", LineHeight(.default))")
// // print("equal(\"letter-spacing: \(Value<Key.LetterSpacing>.default.rawValue)\", LetterSpacing(.default))")
// // print()
// // print("equal(\"backface-visibility: \(Value<Key.BackfaceVisibility>.default.rawValue)\", BackfaceVisibility(.default))")
// // print("equal(\"transform: \(Value<Key.Transform>.default.rawValue)\", Transform(.default))")
// // print("equal(\"transform-origin: \(Value<Key.TransformOrigin>.default.rawValue)\", TransformOrigin(.default))")
// // print("equal(\"transform-style: \(Value<Key.TransformStyle>.default.rawValue)\", TransformStyle(.default))")
// // print()
// // print("equal(\"transition: \(Value<Key.Transition>.default.rawValue)\", Transition(.default))")
// // print("equal(\"transition-delay: \(Value<Key.TransitionDelay>.default.rawValue)\", TransitionDelay(.default))")
// // print("equal(\"transition-duration: \(Value<Key.TransitionDuration>.default.rawValue)\", TransitionDuration(.default))")
// // print("equal(\"transition-property: \(Value<Key.TransitionProperty>.default.rawValue)\", TransitionProperty(.default))")
// // print("equal(\"transition-timing-function: \(Value<Key.TransitionTimingFunction>.default.rawValue)\", TransitionTimingFunction(.default))")
// // print()
// // print("equal(\"display: \(Value<Key.Display>.default.rawValue)\", Display(.default))")
// // print("equal(\"position: \(Value<Key.Position>.default.rawValue)\", Position(.default))")
// // print("equal(\"top: \(Value<Key.Top>.default.rawValue)\", Top(.default))")
// // print("equal(\"right: \(Value<Key.Right>.default.rawValue)\", Right(.default))")
// // print("equal(\"bottom: \(Value<Key.Bottom>.default.rawValue)\", Bottom(.default))")
// // print("equal(\"left: \(Value<Key.Left>.default.rawValue)\", Left(.default))")
// // print("equal(\"float: \(Value<Key.Float>.default.rawValue)\", Float(.default))")
// // print("equal(\"clear: \(Value<Key.Clear>.default.rawValue)\", Clear(.default))")
// // print("equal(\"z-index: \(Value<Key.ZIndex>.default.rawValue)\", ZIndex(.default))")
// // print("equal(\"overflow: \(Value<Key.Overflow>.default.rawValue)\", Overflow(.default))")
// // print("equal(\"overflow-x: \(Value<Key.OverflowX>.default.rawValue)\", OverflowX(.default))")
// // print("equal(\"overflow-y: \(Value<Key.OverflowY>.default.rawValue)\", OverflowY(.default))")
// // print("/// equal(\"clip-path: Value<Key.ClipPath>.default.rawValue\", ClipPath(.default))")
// // print("equal(\"visibility: \(Value<Key.Visibility>.default.rawValue)\", Visibility(.default))")
// // print("equal(\"box-decoration-break: \(Value<Key.BoxDecorationBreak>.default.rawValue)\", BoxDecorationBreak(.default))")
// // print("equal(\"box-shadow: \(Value<Key.BoxShadow>.default.rawValue)\", BoxShadow(.default))")
// // print("equal(\"box-sizing: \(Value<Key.BoxSizing>.default.rawValue)\", BoxSizing(.default))")
// // print("equal(\"caret-color: \(Value<Key.CaretColor>.default.rawValue)\", CaretColor(.default))")
// // print("equal(\"cursor: \(Value<Key.Cursor>.default.rawValue)\", Cursor(.default))")