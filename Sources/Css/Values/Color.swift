public protocol HasValueOfColor: CSSValue {}

extension BackgroundColor: HasValueOfColor {}

extension BorderBottomColor: HasValueOfColor {}
extension BorderColor: HasValueOfColor {}
extension BorderLeftColor: HasValueOfColor {}
extension BorderRightColor: HasValueOfColor {}
extension BorderTopColor: HasValueOfColor {}

extension Color: HasValueOfColor {}

extension ColumnRuleColor: HasValueOfColor {}

extension OutlineColor: HasValueOfColor {}

extension TextDecorationColor: HasValueOfColor {}
extension CaretColor: HasValueOfColor {}

public enum CSSColor: HasValueOfColor {}

public extension Value where Kind: HasValueOfColor {
  static func hex(_ value: Int) -> Self {
    let v = hexSize(value)
    return .init("#\(String(v, radix: 16))")
  }

  static func rgb(_ red: Int, _ green: Int, _ blue: Int) -> Self {
    let r = uint8Size(red)
    let g = uint8Size(green)
    let b = uint8Size(blue)
    return .init("rgb(\(r),\(g),\(b))")
  }

  static func rgba(_ red: Int, _ green: Int, _ blue: Int, _ alpha: Double) -> Self {
    let r = uint8Size(red)
    let g = uint8Size(green)
    let b = uint8Size(blue)
    let a = fraction(alpha)
    return .init("rgba(\(r),\(g),\(b),\(a))")
  }

  static func hsl(_ hue: Int, _ saturation: Int, _ lightness: Int) -> Self {
    let h = degree(hue)
    let s = percentage(saturation)
    let l = percentage(lightness)
    return .init("hsl(\(h),\(s),\(l))")
  }

  static func hsla(_ hue: Int, _ saturation: Int, _ lightness: Int, _ alpha: Double) -> Self {
    let h = degree(hue)
    let s = percentage(saturation)
    let l = percentage(lightness)
    let a = fraction(alpha)
    return .init("hsla(\(h),\(s),\(l),\(a))")
  }

  ///TODO: Implement me
  //static func linearGradient()
  //static func radialGradient()

  static var transparent: Self { return "transparent" }
  static var currentColor: Self { return "currentColor" }
  static var invert: Self { return "invert" }


  /// CSSColors
  static func aliceBlue           (_ a: Double = 1) -> Self { return rgba(240, 248, 255, a) }
  static func antiqueWhite        (_ a: Double = 1) -> Self { return rgba(250, 235, 215, a) }
  static func aqua                (_ a: Double = 1) -> Self { return rgba(0  , 255, 255, a) }
  static func aquamarine          (_ a: Double = 1) -> Self { return rgba(127, 255, 212, a) }
  static func azure               (_ a: Double = 1) -> Self { return rgba(240, 255, 255, a) }
  static func beige               (_ a: Double = 1) -> Self { return rgba(245, 245, 220, a) }
  static func bisque              (_ a: Double = 1) -> Self { return rgba(255, 228, 196, a) }
  static func black               (_ a: Double = 1) -> Self { return rgba(0  , 0  , 0  , a) }
  static func blanchedAlmond      (_ a: Double = 1) -> Self { return rgba(255, 235, 205, a) }
  static func blue                (_ a: Double = 1) -> Self { return rgba(0  , 0  , 255, a) }
  static func blueViolet          (_ a: Double = 1) -> Self { return rgba(138, 43 , 226, a) }
  static func brown               (_ a: Double = 1) -> Self { return rgba(165, 42 , 42 , a) }
  static func burlyWood           (_ a: Double = 1) -> Self { return rgba(222, 184, 135, a) }
  static func cadetBlue           (_ a: Double = 1) -> Self { return rgba(95 , 158, 160, a) }
  static func chartreuse          (_ a: Double = 1) -> Self { return rgba(127, 255, 0  , a) }
  static func chocolate           (_ a: Double = 1) -> Self { return rgba(210, 105, 30 , a) }
  static func coral               (_ a: Double = 1) -> Self { return rgba(255, 127, 80 , a) }
  static func cornflowerBlue      (_ a: Double = 1) -> Self { return rgba(100, 149, 237, a) }
  static func cornsilk            (_ a: Double = 1) -> Self { return rgba(255, 248, 220, a) }
  static func crimson             (_ a: Double = 1) -> Self { return rgba(220, 20 , 60 , a) }
  static func cyan                (_ a: Double = 1) -> Self { return rgba(0  , 255, 255, a) }
  static func darkBlue            (_ a: Double = 1) -> Self { return rgba(0  , 0  , 139, a) }
  static func darkCyan            (_ a: Double = 1) -> Self { return rgba(0  , 139, 139, a) }
  static func darkGoldenRod       (_ a: Double = 1) -> Self { return rgba(184, 134, 11 , a) }
  static func darkGray            (_ a: Double = 1) -> Self { return rgba(169, 169, 169, a) }
  static func darkGreen           (_ a: Double = 1) -> Self { return rgba(169, 169, 169, a) }
  static func darkGrey            (_ a: Double = 1) -> Self { return rgba(0  , 100, 0  , a) }
  static func darkKhaki           (_ a: Double = 1) -> Self { return rgba(189, 183, 107, a) }
  static func darkMagenta         (_ a: Double = 1) -> Self { return rgba(139, 0  , 139, a) }
  static func darkOliveGreen      (_ a: Double = 1) -> Self { return rgba(85 , 107, 47 , a) }
  static func darkOrange          (_ a: Double = 1) -> Self { return rgba(255, 140, 0  , a) }
  static func darkOrchid          (_ a: Double = 1) -> Self { return rgba(153, 50 , 204, a) }
  static func darkRed             (_ a: Double = 1) -> Self { return rgba(139, 0  , 0  , a) }
  static func darkSalmon          (_ a: Double = 1) -> Self { return rgba(233, 150, 122, a) }
  static func darkSeaGreen        (_ a: Double = 1) -> Self { return rgba(143, 188, 143, a) }
  static func darkSlateBlue       (_ a: Double = 1) -> Self { return rgba(72 , 61 , 139, a) }
  static func darkSlateGray       (_ a: Double = 1) -> Self { return rgba(47 , 79 , 79 , a) }
  static func darkSlateGrey       (_ a: Double = 1) -> Self { return rgba(47 , 79 , 79 , a) }
  static func darkTurquoise       (_ a: Double = 1) -> Self { return rgba(0  , 206, 209, a) }
  static func darkViolet          (_ a: Double = 1) -> Self { return rgba(148, 0  , 211, a) }
  static func deepPink            (_ a: Double = 1) -> Self { return rgba(255, 20 , 147, a) }
  static func deepSkyBlue         (_ a: Double = 1) -> Self { return rgba(0  , 191, 255, a) }
  static func dimGray             (_ a: Double = 1) -> Self { return rgba(105, 105, 105, a) }
  static func dimGrey             (_ a: Double = 1) -> Self { return rgba(105, 105, 105, a) }
  static func dodgerBlue          (_ a: Double = 1) -> Self { return rgba(30 , 144, 255, a) }
  static func fireBrick           (_ a: Double = 1) -> Self { return rgba(178, 34 , 34 , a) }
  static func floralWhite         (_ a: Double = 1) -> Self { return rgba(255, 250, 240, a) }
  static func forestGreen         (_ a: Double = 1) -> Self { return rgba(34 , 139, 34 , a) }
  static func fuchsia             (_ a: Double = 1) -> Self { return rgba(255, 0  , 255, a) }
  static func gainsboro           (_ a: Double = 1) -> Self { return rgba(220, 220, 220, a) }
  static func ghostWhite          (_ a: Double = 1) -> Self { return rgba(248, 248, 255, a) }
  static func gold                (_ a: Double = 1) -> Self { return rgba(255, 215, 0  , a) }
  static func goldenRod           (_ a: Double = 1) -> Self { return rgba(218, 165, 32 , a) }
  static func gray                (_ a: Double = 1) -> Self { return rgba(128, 128, 128, a) }
  static func green               (_ a: Double = 1) -> Self { return rgba(173, 255, 47 , a) }
  static func greenYellow         (_ a: Double = 1) -> Self { return rgba(128, 128, 128, a) }
  static func grey                (_ a: Double = 1) -> Self { return rgba(0  , 128, 0  , a) }
  static func honeyDew            (_ a: Double = 1) -> Self { return rgba(240, 255, 240, a) }
  static func hotPink             (_ a: Double = 1) -> Self { return rgba(255, 105, 180, a) }
  static func indianRed           (_ a: Double = 1) -> Self { return rgba(205, 92 , 92 , a) }
  static func indigo              (_ a: Double = 1) -> Self { return rgba(75 , 0  , 130, a) }
  static func ivory               (_ a: Double = 1) -> Self { return rgba(255, 255, 240, a) }
  static func khaki               (_ a: Double = 1) -> Self { return rgba(240, 230, 140, a) }
  static func lavender            (_ a: Double = 1) -> Self { return rgba(230, 230, 250, a) }
  static func lavenderBlush       (_ a: Double = 1) -> Self { return rgba(255, 240, 245, a) }
  static func lawnGreen           (_ a: Double = 1) -> Self { return rgba(124, 252, 0  , a) }
  static func lemonChiffon        (_ a: Double = 1) -> Self { return rgba(255, 250, 205, a) }
  static func lightBlue           (_ a: Double = 1) -> Self { return rgba(173, 216, 230, a) }
  static func lightCoral          (_ a: Double = 1) -> Self { return rgba(240, 128, 128, a) }
  static func lightCyan           (_ a: Double = 1) -> Self { return rgba(224, 255, 255, a) }
  static func lightGoldenRodYellow(_ a: Double = 1) -> Self { return rgba(250, 250, 210, a) }
  static func lightGray           (_ a: Double = 1) -> Self { return rgba(211, 211, 211, a) }
  static func lightGreen          (_ a: Double = 1) -> Self { return rgba(211, 211, 211, a) }
  static func lightGrey           (_ a: Double = 1) -> Self { return rgba(144, 238, 144, a) }
  static func lightPink           (_ a: Double = 1) -> Self { return rgba(255, 182, 193, a) }
  static func lightSalmon         (_ a: Double = 1) -> Self { return rgba(255, 160, 122, a) }
  static func lightSeaGreen       (_ a: Double = 1) -> Self { return rgba(32 , 178, 170, a) }
  static func lightSkyBlue        (_ a: Double = 1) -> Self { return rgba(135, 206, 250, a) }
  static func lightSlateGray      (_ a: Double = 1) -> Self { return rgba(119, 136, 153, a) }
  static func lightSlateGrey      (_ a: Double = 1) -> Self { return rgba(119, 136, 153, a) }
  static func lightSteelBlue      (_ a: Double = 1) -> Self { return rgba(176, 196, 222, a) }
  static func lightYellow         (_ a: Double = 1) -> Self { return rgba(255, 255, 224, a) }
  static func lime                (_ a: Double = 1) -> Self { return rgba(0  , 255, 0  , a) }
  static func limeGreen           (_ a: Double = 1) -> Self { return rgba(50 , 205, 50 , a) }
  static func linen               (_ a: Double = 1) -> Self { return rgba(250, 240, 230, a) }
  static func magenta             (_ a: Double = 1) -> Self { return rgba(255, 0  , 255, a) }
  static func maroon              (_ a: Double = 1) -> Self { return rgba(128, 0  , 0  , a) }
  static func mediumAquaMarine    (_ a: Double = 1) -> Self { return rgba(102, 205, 170, a) }
  static func mediumBlue          (_ a: Double = 1) -> Self { return rgba(0  , 0  , 205, a) }
  static func mediumOrchid        (_ a: Double = 1) -> Self { return rgba(186, 85 , 211, a) }
  static func mediumPurple        (_ a: Double = 1) -> Self { return rgba(147, 112, 219, a) }
  static func mediumSeaGreen      (_ a: Double = 1) -> Self { return rgba(60 , 179, 113, a) }
  static func mediumSlateBlue     (_ a: Double = 1) -> Self { return rgba(123, 104, 238, a) }
  static func mediumSpringGreen   (_ a: Double = 1) -> Self { return rgba(0  , 250, 154, a) }
  static func mediumTurquoise     (_ a: Double = 1) -> Self { return rgba(72 , 209, 204, a) }
  static func mediumVioletRed     (_ a: Double = 1) -> Self { return rgba(199, 21 , 133, a) }
  static func midnightBlue        (_ a: Double = 1) -> Self { return rgba(25 , 25 , 112, a) }
  static func mintCream           (_ a: Double = 1) -> Self { return rgba(245, 255, 250, a) }
  static func mistyRose           (_ a: Double = 1) -> Self { return rgba(255, 228, 225, a) }
  static func moccasin            (_ a: Double = 1) -> Self { return rgba(255, 228, 181, a) }
  static func navajoWhite         (_ a: Double = 1) -> Self { return rgba(255, 222, 173, a) }
  static func navy                (_ a: Double = 1) -> Self { return rgba(0  , 0  , 128, a) }
  static func oldLace             (_ a: Double = 1) -> Self { return rgba(253, 245, 230, a) }
  static func olive               (_ a: Double = 1) -> Self { return rgba(128, 128, 0  , a) }
  static func oliveDrab           (_ a: Double = 1) -> Self { return rgba(107, 142, 35 , a) }
  static func orange              (_ a: Double = 1) -> Self { return rgba(255, 165, 0  , a) }
  static func orangeRed           (_ a: Double = 1) -> Self { return rgba(255, 69 , 0  , a) }
  static func orchid              (_ a: Double = 1) -> Self { return rgba(218, 112, 214, a) }
  static func paleGoldenRod       (_ a: Double = 1) -> Self { return rgba(238, 232, 170, a) }
  static func paleGreen           (_ a: Double = 1) -> Self { return rgba(152, 251, 152, a) }
  static func paleTurquoise       (_ a: Double = 1) -> Self { return rgba(175, 238, 238, a) }
  static func paleVioletRed       (_ a: Double = 1) -> Self { return rgba(219, 112, 147, a) }
  static func papayaWhip          (_ a: Double = 1) -> Self { return rgba(255, 239, 213, a) }
  static func peachPuff           (_ a: Double = 1) -> Self { return rgba(255, 218, 185, a) }
  static func peru                (_ a: Double = 1) -> Self { return rgba(205, 133, 63 , a) }
  static func pink                (_ a: Double = 1) -> Self { return rgba(255, 192, 203, a) }
  static func plum                (_ a: Double = 1) -> Self { return rgba(221, 160, 221, a) }
  static func powderBlue          (_ a: Double = 1) -> Self { return rgba(176, 224, 230, a) }
  static func purple              (_ a: Double = 1) -> Self { return rgba(128, 0  , 128, a) }
  static func rebeccaPurple       (_ a: Double = 1) -> Self { return rgba(102, 51 , 153, a) }
  static func red                 (_ a: Double = 1) -> Self { return rgba(255, 0  , 0  , a) }
  static func rosyBrown           (_ a: Double = 1) -> Self { return rgba(188, 143, 143, a) }
  static func royalBlue           (_ a: Double = 1) -> Self { return rgba(65 , 105, 225, a) }
  static func saddleBrown         (_ a: Double = 1) -> Self { return rgba(139, 69 , 19 , a) }
  static func salmon              (_ a: Double = 1) -> Self { return rgba(250, 128, 114, a) }
  static func sandyBrown          (_ a: Double = 1) -> Self { return rgba(244, 164, 96 , a) }
  static func seaGreen            (_ a: Double = 1) -> Self { return rgba(46 , 139, 87 , a) }
  static func seaShell            (_ a: Double = 1) -> Self { return rgba(255, 245, 238, a) }
  static func sienna              (_ a: Double = 1) -> Self { return rgba(160, 82 , 45 , a) }
  static func silver              (_ a: Double = 1) -> Self { return rgba(192, 192, 192, a) }
  static func skyBlue             (_ a: Double = 1) -> Self { return rgba(135, 206, 235, a) }
  static func slateBlue           (_ a: Double = 1) -> Self { return rgba(106, 90 , 205, a) }
  static func slateGray           (_ a: Double = 1) -> Self { return rgba(112, 128, 144, a) }
  static func slateGrey           (_ a: Double = 1) -> Self { return rgba(112, 128, 144, a) }
  static func snow                (_ a: Double = 1) -> Self { return rgba(255, 250, 250, a) }
  static func springGreen         (_ a: Double = 1) -> Self { return rgba(0  , 255, 127, a) }
  static func steelBlue           (_ a: Double = 1) -> Self { return rgba(70 , 130, 180, a) }
  static func tan                 (_ a: Double = 1) -> Self { return rgba(210, 180, 140, a) }
  static func teal                (_ a: Double = 1) -> Self { return rgba(0  , 128, 128, a) }
  static func thistle             (_ a: Double = 1) -> Self { return rgba(216, 191, 216, a) }
  static func tomato              (_ a: Double = 1) -> Self { return rgba(255, 99 , 71 , a) }
  static func turquoise           (_ a: Double = 1) -> Self { return rgba(64 , 224, 208, a) }
  static func violet              (_ a: Double = 1) -> Self { return rgba(238, 130, 238, a) }
  static func wheat               (_ a: Double = 1) -> Self { return rgba(245, 222, 179, a) }
  static func white               (_ a: Double = 1) -> Self { return rgba(255, 255, 255, a) }
  static func whiteSmoke          (_ a: Double = 1) -> Self { return rgba(245, 245, 245, a) }
  static func yellow              (_ a: Double = 1) -> Self { return rgba(255, 255, 0  , a) }
  static func yellowGreen         (_ a: Double = 1) -> Self { return rgba(154, 205, 50 , a) }

  static var aliceBlue           : Self { return rgb(240, 248, 255) }
  static var antiqueWhite        : Self { return rgb(250, 235, 215) }
  static var aqua                : Self { return rgb(0  , 255, 255) }
  static var aquamarine          : Self { return rgb(127, 255, 212) }
  static var azure               : Self { return rgb(240, 255, 255) }
  static var beige               : Self { return rgb(245, 245, 220) }
  static var bisque              : Self { return rgb(255, 228, 196) }
  static var black               : Self { return rgb(0  , 0  , 0  ) }
  static var blanchedAlmond      : Self { return rgb(255, 235, 205) }
  static var blue                : Self { return rgb(0  , 0  , 255) }
  static var blueViolet          : Self { return rgb(138, 43 , 226) }
  static var brown               : Self { return rgb(165, 42 , 42 ) }
  static var burlyWood           : Self { return rgb(222, 184, 135) }
  static var cadetBlue           : Self { return rgb(95 , 158, 160) }
  static var chartreuse          : Self { return rgb(127, 255, 0  ) }
  static var chocolate           : Self { return rgb(210, 105, 30 ) }
  static var coral               : Self { return rgb(255, 127, 80 ) }
  static var cornflowerBlue      : Self { return rgb(100, 149, 237) }
  static var cornsilk            : Self { return rgb(255, 248, 220) }
  static var crimson             : Self { return rgb(220, 20 , 60 ) }
  static var cyan                : Self { return rgb(0  , 255, 255) }
  static var darkBlue            : Self { return rgb(0  , 0  , 139) }
  static var darkCyan            : Self { return rgb(0  , 139, 139) }
  static var darkGoldenRod       : Self { return rgb(184, 134, 11 ) }
  static var darkGray            : Self { return rgb(169, 169, 169) }
  static var darkGreen           : Self { return rgb(169, 169, 169) }
  static var darkGrey            : Self { return rgb(0  , 100, 0  ) }
  static var darkKhaki           : Self { return rgb(189, 183, 107) }
  static var darkMagenta         : Self { return rgb(139, 0  , 139) }
  static var darkOliveGreen      : Self { return rgb(85 , 107, 47 ) }
  static var darkOrange          : Self { return rgb(255, 140, 0  ) }
  static var darkOrchid          : Self { return rgb(153, 50 , 204) }
  static var darkRed             : Self { return rgb(139, 0  , 0  ) }
  static var darkSalmon          : Self { return rgb(233, 150, 122) }
  static var darkSeaGreen        : Self { return rgb(143, 188, 143) }
  static var darkSlateBlue       : Self { return rgb(72 , 61 , 139) }
  static var darkSlateGray       : Self { return rgb(47 , 79 , 79 ) }
  static var darkSlateGrey       : Self { return rgb(47 , 79 , 79 ) }
  static var darkTurquoise       : Self { return rgb(0  , 206, 209) }
  static var darkViolet          : Self { return rgb(148, 0  , 211) }
  static var deepPink            : Self { return rgb(255, 20 , 147) }
  static var deepSkyBlue         : Self { return rgb(0  , 191, 255) }
  static var dimGray             : Self { return rgb(105, 105, 105) }
  static var dimGrey             : Self { return rgb(105, 105, 105) }
  static var dodgerBlue          : Self { return rgb(30 , 144, 255) }
  static var fireBrick           : Self { return rgb(178, 34 , 34 ) }
  static var floralWhite         : Self { return rgb(255, 250, 240) }
  static var forestGreen         : Self { return rgb(34 , 139, 34 ) }
  static var fuchsia             : Self { return rgb(255, 0  , 255) }
  static var gainsboro           : Self { return rgb(220, 220, 220) }
  static var ghostWhite          : Self { return rgb(248, 248, 255) }
  static var gold                : Self { return rgb(255, 215, 0  ) }
  static var goldenRod           : Self { return rgb(218, 165, 32 ) }
  static var gray                : Self { return rgb(128, 128, 128) }
  static var green               : Self { return rgb(173, 255, 47 ) }
  static var greenYellow         : Self { return rgb(128, 128, 128) }
  static var grey                : Self { return rgb(0  , 128, 0  ) }
  static var honeyDew            : Self { return rgb(240, 255, 240) }
  static var hotPink             : Self { return rgb(255, 105, 180) }
  static var indianRed           : Self { return rgb(205, 92 , 92 ) }
  static var indigo              : Self { return rgb(75 , 0  , 130) }
  static var ivory               : Self { return rgb(255, 255, 240) }
  static var khaki               : Self { return rgb(240, 230, 140) }
  static var lavender            : Self { return rgb(230, 230, 250) }
  static var lavenderBlush       : Self { return rgb(255, 240, 245) }
  static var lawnGreen           : Self { return rgb(124, 252, 0  ) }
  static var lemonChiffon        : Self { return rgb(255, 250, 205) }
  static var lightBlue           : Self { return rgb(173, 216, 230) }
  static var lightCoral          : Self { return rgb(240, 128, 128) }
  static var lightCyan           : Self { return rgb(224, 255, 255) }
  static var lightGoldenRodYellow: Self { return rgb(250, 250, 210) }
  static var lightGray           : Self { return rgb(211, 211, 211) }
  static var lightGreen          : Self { return rgb(211, 211, 211) }
  static var lightGrey           : Self { return rgb(144, 238, 144) }
  static var lightPink           : Self { return rgb(255, 182, 193) }
  static var lightSalmon         : Self { return rgb(255, 160, 122) }
  static var lightSeaGreen       : Self { return rgb(32 , 178, 170) }
  static var lightSkyBlue        : Self { return rgb(135, 206, 250) }
  static var lightSlateGray      : Self { return rgb(119, 136, 153) }
  static var lightSlateGrey      : Self { return rgb(119, 136, 153) }
  static var lightSteelBlue      : Self { return rgb(176, 196, 222) }
  static var lightYellow         : Self { return rgb(255, 255, 224) }
  static var lime                : Self { return rgb(0  , 255, 0  ) }
  static var limeGreen           : Self { return rgb(50 , 205, 50 ) }
  static var linen               : Self { return rgb(250, 240, 230) }
  static var magenta             : Self { return rgb(255, 0  , 255) }
  static var maroon              : Self { return rgb(128, 0  , 0  ) }
  static var mediumAquaMarine    : Self { return rgb(102, 205, 170) }
  static var mediumBlue          : Self { return rgb(0  , 0  , 205) }
  static var mediumOrchid        : Self { return rgb(186, 85 , 211) }
  static var mediumPurple        : Self { return rgb(147, 112, 219) }
  static var mediumSeaGreen      : Self { return rgb(60 , 179, 113) }
  static var mediumSlateBlue     : Self { return rgb(123, 104, 238) }
  static var mediumSpringGreen   : Self { return rgb(0  , 250, 154) }
  static var mediumTurquoise     : Self { return rgb(72 , 209, 204) }
  static var mediumVioletRed     : Self { return rgb(199, 21 , 133) }
  static var midnightBlue        : Self { return rgb(25 , 25 , 112) }
  static var mintCream           : Self { return rgb(245, 255, 250) }
  static var mistyRose           : Self { return rgb(255, 228, 225) }
  static var moccasin            : Self { return rgb(255, 228, 181) }
  static var navajoWhite         : Self { return rgb(255, 222, 173) }
  static var navy                : Self { return rgb(0  , 0  , 128) }
  static var oldLace             : Self { return rgb(253, 245, 230) }
  static var olive               : Self { return rgb(128, 128, 0  ) }
  static var oliveDrab           : Self { return rgb(107, 142, 35 ) }
  static var orange              : Self { return rgb(255, 165, 0  ) }
  static var orangeRed           : Self { return rgb(255, 69 , 0  ) }
  static var orchid              : Self { return rgb(218, 112, 214) }
  static var paleGoldenRod       : Self { return rgb(238, 232, 170) }
  static var paleGreen           : Self { return rgb(152, 251, 152) }
  static var paleTurquoise       : Self { return rgb(175, 238, 238) }
  static var paleVioletRed       : Self { return rgb(219, 112, 147) }
  static var papayaWhip          : Self { return rgb(255, 239, 213) }
  static var peachPuff           : Self { return rgb(255, 218, 185) }
  static var peru                : Self { return rgb(205, 133, 63 ) }
  static var pink                : Self { return rgb(255, 192, 203) }
  static var plum                : Self { return rgb(221, 160, 221) }
  static var powderBlue          : Self { return rgb(176, 224, 230) }
  static var purple              : Self { return rgb(128, 0  , 128) }
  static var rebeccaPurple       : Self { return rgb(102, 51 , 153) }
  static var red                 : Self { return rgb(255, 0  , 0  ) }
  static var rosyBrown           : Self { return rgb(188, 143, 143) }
  static var royalBlue           : Self { return rgb(65 , 105, 225) }
  static var saddleBrown         : Self { return rgb(139, 69 , 19 ) }
  static var salmon              : Self { return rgb(250, 128, 114) }
  static var sandyBrown          : Self { return rgb(244, 164, 96 ) }
  static var seaGreen            : Self { return rgb(46 , 139, 87 ) }
  static var seaShell            : Self { return rgb(255, 245, 238) }
  static var sienna              : Self { return rgb(160, 82 , 45 ) }
  static var silver              : Self { return rgb(192, 192, 192) }
  static var skyBlue             : Self { return rgb(135, 206, 235) }
  static var slateBlue           : Self { return rgb(106, 90 , 205) }
  static var slateGray           : Self { return rgb(112, 128, 144) }
  static var slateGrey           : Self { return rgb(112, 128, 144) }
  static var snow                : Self { return rgb(255, 250, 250) }
  static var springGreen         : Self { return rgb(0  , 255, 127) }
  static var steelBlue           : Self { return rgb(70 , 130, 180) }
  static var tan                 : Self { return rgb(210, 180, 140) }
  static var teal                : Self { return rgb(0  , 128, 128) }
  static var thistle             : Self { return rgb(216, 191, 216) }
  static var tomato              : Self { return rgb(255, 99 , 71 ) }
  static var turquoise           : Self { return rgb(64 , 224, 208) }
  static var violet              : Self { return rgb(238, 130, 238) }
  static var wheat               : Self { return rgb(245, 222, 179) }
  static var white               : Self { return rgb(255, 255, 255) }
  static var whiteSmoke          : Self { return rgb(245, 245, 245) }
  static var yellow              : Self { return rgb(255, 255, 0  ) }
  static var yellowGreen         : Self { return rgb(154, 205, 50 ) }
}