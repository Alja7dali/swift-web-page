final class SelectorsTests: XCTestCase {
  func testCssSelectors() {
    let s = selector("*") {
      //comment("///////////////////////////////")
      //comment("           Animation           ")
      //comment("///////////////////////////////")
    
      animation(
        name          : "Yallo",
        duration      : .ms(42),
        timingFunction: .easeIn,
        delay         : .ms(-500),
        iterationCount: .default, // 1
        direction     : .alternateReverse,
        fillMode      : .backwards,
        playState     : .paused
      )
    
      animationName("Yallo")
      animationDuration(.ms(42))
      animationTimingFunction(.easeIn)
      animationDelay(.ms(-500))
      animationIterationCount(.default) // 1
      animationDirection(.alternateReverse)
      animationFillMode(.backwards)
      animationPlayState(.paused)
    
      //comment("///////////////////////////////")
      //comment("           Background          ")
      //comment("///////////////////////////////")
    
      background(
        color     : .transparent,
        image     : .none,
        position  : .default,
        size      : .auto,
        repeat    : .repeat,
        origin    : .paddingBox,
        clip      : .borderBox,
        attachment: .scroll
      )
    
      backgroundColor(.transparent)
      backgroundImage(.none)
      backgroundPosition(.default)
      backgroundSize(.auto)
      backgroundRepeat(.repeat)
      backgroundOrigin(.paddingBox)
      backgroundClip(.borderBox)
      backgroundAttachment(.scroll)
    
      backgroundBlendMode(.normal)
    
      //comment("///////////////////////////////")
      //comment("             Border            ")
      //comment("///////////////////////////////")
    
      border(width: .medium, style: .none, color: .default)
      
      borderWidth(.thin)
      borderWidth(.thin, .thick)
      borderWidth(.thin, .thick, .medium)
      borderWidth(.thin, .thick, .medium, .default)
    
      borderStyle(.dotted)
      borderStyle(.dotted, .ridge)
      borderStyle(.dotted, .ridge, .double)
      borderStyle(.dotted, .ridge, .double, .groove)
    
      borderColor(.pink)
      borderColor(.pink, .hotPink)
      borderColor(.pink, .hotPink, .deepPink)
      borderColor(.pink, .hotPink, .deepPink, .lightPink)
    
      borderTop(width: .medium, style: .none, color: .default)
      borderTopWidth(.thin)
      borderTopStyle(.solid)
      borderTopColor(.gray)
    
      borderRight(width: .medium, style: .none, color: .default)
      borderRightWidth(.thin)
      borderRightStyle(.solid)
      borderRightColor(.gray)
    
      borderBottom(width: .medium, style: .none, color: .default)
      borderBottomWidth(.thin)
      borderBottomStyle(.solid)
      borderBottomColor(.gray)
    
      borderLeft(width: .medium, style: .none, color: .default)
      borderLeftWidth(.thin)
      borderLeftStyle(.solid)
      borderLeftColor(.gray)
    
      borderCollapse(.separate)
    
      borderSpacing(10%)
      borderSpacing(10%, .px(20))
    
      borderImage(
        source: .url("/img/myImage.jpeg"),
        slice:  4.2,
        width:  .em(2),
        outset: .px(13),
        repeat: .round
      )
    
      borderImageSource(.url("/img/yourImage.jpeg"))
    
      borderImageSlice(10%)
      borderImageSlice(10%, 2.3)
      borderImageSlice(10%, 2.3, 12)
      borderImageSlice(10%, 2.3, 12, 21)
    
      borderImageWidth(.px(10))
      borderImageWidth(.px(10), 23%)
      borderImageWidth(.px(10), 23%, .em(12))
      borderImageWidth(.px(10), 23%, .em(12), .ch(21))
    
      borderImageOutset(.px(10))
      borderImageOutset(.px(10), 2.3)
      borderImageOutset(.px(10), 2.3, .em(12))
      borderImageOutset(.px(10), 2.3, .em(12), .ch(21))
    
      borderImageRepeat(.space)
    
      borderRadius(.px(10))
      borderRadius(.px(10), 23%)
      borderRadius(.px(10), 23%, .em(12))
      borderRadius(.px(10), 23%, .em(12), .ch(21))
    
      borderTopLeftRadius(.pct(25)) // 25%
      borderTopRightRadius(25%)
      borderBottomLeftRadius(.pct(25)) // 25%
      borderBottomRightRadius(25%)
    
      //comment("///////////////////////////////")
      //comment("             Color             ")
      //comment("///////////////////////////////")
    
      color(.red(0.1))
      opacity(0.25)
    
      //comment("///////////////////////////////")
      //comment("           Dimension           ")
      //comment("///////////////////////////////")
    
      height(50%)
      minHeight(.pt(50))
      maxHeight(.px(50))
    
      width(50%)
      minWidth(.pt(50))
      maxWidth(.px(50))
    
      //comment("///////////////////////////////")
      //comment("       Generated Content       ")
      //comment("///////////////////////////////")
    
      content(.counter("myCounterId"))
    
      quotes(.pairs(("[", "]"), ("{", "}")))
    
      counterIncrement("myCounterId")
      counterReset("myCounterId -1")
    
      //comment("///////////////////////////////")
      //comment("          Grid Layout          ")
      //comment("  <[{ Not Implemented Yet }]>  ")
      //comment("///////////////////////////////")
    
      //comment("///////////////////////////////")
      //comment("       FlexibleBoxLayout       ")
      //comment("///////////////////////////////")
    
      alignContent(.stretch)
      alignItems(.center)
      alignSelf(.baseline)
    
      flex(
        grow: 2,
        shrink: 1,
        basis: 20%
      )
    
      flexGrow(.default)
      flexShrink(.default)
      flexBasis(.default)
    
      flexFlow(
        direction: .rowReverse,
        wrap: .wrap
      )
    
      flexDirection(.column)
      flexWrap(.nowrap)
    
      justifyContent(.center)
      order(2)
    
      //comment("///////////////////////////////")
      //comment("             Font              ")
      //comment("///////////////////////////////")
    
      font(.caption)
    
      font(
        style  : .italic,
        variant: .smallCaps,
        weight : 600,
        size   : 50%,
        family : "times"
      )
    
      font(
        style     : .italic,
        variant   : .smallCaps,
        weight    : 600,
        lineHeight: 50%,
        family    : "times"
      )
    
      fontStyle(.oblique)
      fontVariant(.normal)
      fontWeight(.lighter)
      fontSize(.smaller)
      fontFamily("monospace")
    
      fontFeatureSettings("\"smcp\" on")
      fontKerning(.normal)
      fontSizeAdjust(41.9)
      fontStretch(.semiExpanded)
      fontVariantCaps(.allSmallCaps)
    
      //comment("///////////////////////////////")
      //comment("             List              ")
      //comment("///////////////////////////////")
    
      listStyle(type: .square, position: .outside, image: .url("/img/myImage.png"))
    
      listStyleType(.lowerRoman)
      listStylePosition(.inside)
      listStyleImage(.none)
    
      //comment("///////////////////////////////")
      //comment("            Margin             ")
      //comment("///////////////////////////////")
    
      margin(.px(10))
      margin(.px(10), 23%)
      margin(.px(10), 23%, .em(12))
      margin(.px(10), 23%, .em(12), .ch(21))
      
      marginTop(.px(10))
      marginRight(.px(10))
      marginBottom(.px(10))
      marginLeft(.px(10))
    
      //comment("///////////////////////////////")
      //comment("       MultiColumnLayout       ")
      //comment("///////////////////////////////")
    
      columns(width: .px(100), count: 12)
      columnWidth(.px(100))
      columnCount(12)
    
      columnRule(width: .medium, style: .none, color: .default)
      columnRuleWidth(.thin)
      columnRuleStyle(.solid)
      columnRuleColor(.gray)
    
      columnSpan(.all)
      columnFill(.balance)
      columnGap(10%)
    
      //comment("///////////////////////////////")
      //comment("            Outline            ")
      //comment("///////////////////////////////")
    
      outline(width: .medium, style: .none, color: .default)
      outlineWidth(.thin)
      outlineStyle(.solid)
      outlineColor(.gray(0.9))
    
      outlineOffset(10%)
    
      //comment("///////////////////////////////")
      //comment("            Padding            ")
      //comment("///////////////////////////////")
    
      padding(.px(10))
      padding(.px(10), 23%)
      padding(.px(10), 23%, .em(12))
      padding(.px(10), 23%, .em(12), .ch(21))
    
      paddingTop(.px(10))
      paddingRight(.px(10))
      paddingBottom(.px(10))
      paddingLeft(.px(10))
    
      //comment("///////////////////////////////")
      //comment("             Print             ")
      //comment("///////////////////////////////")
      breakAfter(.right)
      breakBefore(.left)
      breakInside(.avoidColumn)
    
      //comment("///////////////////////////////")
      //comment("             Table             ")
      //comment("  <[{ Not Implemented Yet }]>  ")
      //comment("///////////////////////////////")
    
      //comment("///////////////////////////////")
      //comment("             Text              ")
      //comment("///////////////////////////////")
    
      textAlign(.justify)
      textAlignLast(.end)
      textDecoration(line: .blink, color: .blanchedAlmond, style: .wavy)
    
      textDecorationLine(.overline)
      textDecorationColor(.blanchedAlmond(0.5))
      textDecorationStyle(.dotted)
    
      textIndent(10%)
      textJustify(.distribute)
      textOverflow(.ellipsis)
      textShadow(.px(20), .px(30), .px(5), .deepSkyBlue)
      textTransform(.capitalize)
      
      lineHeight(.px(50))
      letterSpacing(.px(1))
    
      //comment("///////////////////////////////")
      //comment("           Transform           ")
      //comment("///////////////////////////////")
      
      backfaceVisibility(.hidden)
    
      transformOrigin(.default)
      transformOrigin(.px(10), .px(-10))
      transformOrigin(.px(10), .px(-10), .px(20))
    
      transformStyle(.preserve3d)
    
      transform(translate(.px(10), .px(10)), scale(1.5, 2))
    
      //comment("///////////////////////////////")
      //comment("          Transition           ")
      //comment("///////////////////////////////")
    
      transition(
        property      : "background",
        duration      : .ms(500),
        timingFunction: .easeIn,
        delay         : .ms(125)
      )
    
      transitionProperty(.all)
      transitionDuration(.ms(250))
      transitionTimingFunction(.linear)
      transitionDelay(.s(1))
    
      //comment("///////////////////////////////")
      //comment("       Visual formatting       ")
      //comment("///////////////////////////////")
    
      display(.block)
      position(.static)
    
      top(.px(10))
      right(.px(10))
      bottom(.px(10))
      left(.px(10))
    
      float(.left)
    
      clear(.both)
    
      zIndex(-1000)
    
      overflow(.hidden)
      overflowX(.hidden)
      overflowY(.visible)
    
      visibility(.collapse)
    
      boxDecorationBreak(.slice)
      boxShadow(.px(100), .px(50), 50%, 25%, .red)
      boxSizing(.borderBox)
    
      caretColor(.orangeRed)
    
      cursor(.zoomIn)
    }
    
    XCTAssertEqual(s.debugRender(), cssSelectors)
  }

  static var allTests = [
    ("testCssSelectors", testCssSelectors),
  ]
}

let cssSelectors: String = """
* {
  -webkit-animation: Yallo 42ms ease-in -500ms 1 alternate-reverse backwards paused;
  -moz-animation: Yallo 42ms ease-in -500ms 1 alternate-reverse backwards paused;
  -o-animation: Yallo 42ms ease-in -500ms 1 alternate-reverse backwards paused;
  animation: Yallo 42ms ease-in -500ms 1 alternate-reverse backwards paused;
  -webkit-animation-name: Yallo;
  -moz-animation-name: Yallo;
  -o-animation-name: Yallo;
  animation-name: Yallo;
  -webkit-animation-duration: 42ms;
  -moz-animation-duration: 42ms;
  -o-animation-duration: 42ms;
  animation-duration: 42ms;
  -webkit-animation-timing-function: ease-in;
  -moz-animation-timing-function: ease-in;
  -o-animation-timing-function: ease-in;
  animation-timing-function: ease-in;
  -webkit-animation-delay: -500ms;
  -moz-animation-delay: -500ms;
  -o-animation-delay: -500ms;
  animation-delay: -500ms;
  -webkit-animation-iteration-count: 1;
  -moz-animation-iteration-count: 1;
  -o-animation-iteration-count: 1;
  animation-iteration-count: 1;
  -webkit-animation-direction: alternate-reverse;
  -moz-animation-direction: alternate-reverse;
  -o-animation-direction: alternate-reverse;
  animation-direction: alternate-reverse;
  -webkit-animation-fill-mode: backwards;
  -moz-animation-fill-mode: backwards;
  -o-animation-fill-mode: backwards;
  animation-fill-mode: backwards;
  -webkit-animation-play-state: paused;
  -moz-animation-play-state: paused;
  -o-animation-play-state: paused;
  animation-play-state: paused;
  background: transparent none 0% 0% auto repeat padding-box border-box scroll;
  background-color: transparent;
  background-image: none;
  background-position: 0% 0%;
  background-size: auto auto;
  background-repeat: repeat;
  background-origin: padding-box;
  background-clip: border-box;
  background-attachment: scroll;
  background-blend-mode: normal;
  border: medium none black;
  border-width: thin;
  border-width: thin thick;
  border-width: thin thick medium;
  border-width: thin thick medium medium;
  border-style: dotted;
  border-style: dotted ridge;
  border-style: dotted ridge double;
  border-style: dotted ridge double groove;
  border-color: rgb(255,192,203);
  border-color: rgb(255,192,203) rgb(255,105,180);
  border-color: rgb(255,192,203) rgb(255,105,180) rgb(255,20,147);
  border-color: rgb(255,192,203) rgb(255,105,180) rgb(255,20,147) rgb(255,182,193);
  border-top: medium none black;
  border-top-width: thin;
  border-top-style: solid;
  border-top-color: rgb(128,128,128);
  border-right: medium none black;
  border-right-width: thin;
  border-right-style: solid;
  border-right-color: rgb(128,128,128);
  border-bottom: medium none black;
  border-bottom-width: thin;
  border-bottom-style: solid;
  border-bottom-color: rgb(128,128,128);
  border-left: medium none black;
  border-left-width: thin;
  border-left-style: solid;
  border-left-color: rgb(128,128,128);
  border-collapse: separate;
  border-spacing: 10%;
  border-spacing: 10% 20px;
  border-image: url("/img/myImage.jpeg") 4.2 2em 13px round;
  border-image-source: url("/img/yourImage.jpeg");
  border-image-slice: 10%;
  border-image-slice: 10% 2.3;
  border-image-slice: 10% 2.3 12;
  border-image-slice: 10% 2.3 12 21;
  border-image-width: 10px;
  border-image-width: 10px 23%;
  border-image-width: 10px 23% 12em;
  border-image-width: 10px 23% 12em 21ch;
  border-image-outset: 10px;
  border-image-outset: 10px 2.3;
  border-image-outset: 10px 2.3 12em;
  border-image-outset: 10px 2.3 12em 21ch;
  border-image-repeat: space;
  border-radius: 10px;
  border-radius: 10px 23%;
  border-radius: 10px 23% 12em;
  border-radius: 10px 23% 12em 21ch;
  border-top-left-radius: 25%;
  border-top-right-radius: 25%;
  border-bottom-left-radius: 25%;
  border-bottom-right-radius: 25%;
  color: rgba(255,0,0,0.1);
  opacity: 0.25;
  height: 50%;
  min-height: 50pt;
  max-height: 50px;
  width: 50%;
  min-width: 50pt;
  max-width: 50px;
  content: counter("myCounterId");
  quotes: '[' ']' '{' '}';
  counter-increment: myCounterId;
  counter-reset: myCounterId -1;
  -webkit-align-content: stretch;
  align-content: stretch;
  -webkit-align-items: center;
  align-items: center;
  -webkit-align-self: baseline;
  align-self: baseline;
  -webkit-flex: 2 1 20%;
  -moz-flex: 2 1 20%;
  flex: 2 1 20%;
  -webkit-flex-grow: 0;
  -moz-flex-grow: 0;
  flex-grow: 0;
  -webkit-flex-shrink: 1;
  -moz-flex-shrink: 1;
  flex-shrink: 1;
  -webkit-flex-basis: auto;
  -moz-flex-basis: auto;
  flex-basis: auto;
  -webkit-flex-flow: row-reverse wrap;
  -moz-flex-flow: row-reverse wrap;
  flex-flow: row-reverse wrap;
  -webkit-flex-direction: column;
  -moz-flex-direction: column;
  flex-direction: column;
  -webkit-flex-wrap: nowrap;
  -moz-flex-wrap: nowrap;
  flex-wrap: nowrap;
  -webkit-justify-content: center;
  -moz-justify-content: center;
  justify-content: center;
  -webkit-order: 2;
  -moz-order: 2;
  order: 2;
  font: caption;
  font: italic small-caps 600 50% times;
  font: italic small-caps 600 50% times;
  font-style: oblique;
  font-variant: normal;
  font-weight: lighter;
  font-size: smaller;
  font-family: monospace;
  -webkit-font-feature-settings: "smcp" on;
  -moz-font-feature-settings: "smcp" on;
  font-feature-settings: "smcp" on;
  -webkit-font-kerning: normal;
  font-kerning: normal;
  font-size-adjust: 41.9;
  font-stretch: semi-expanded;
  font-variant-caps: all-small-caps;
  list-style: square outside url("/img/myImage.png");
  list-style-type: lower-roman;
  list-style-position: inside;
  list-style-image: none;
  margin: 10px;
  margin: 10px 23%;
  margin: 10px 23% 12em;
  margin: 10px 23% 12em 21ch;
  margin-top: 10px;
  margin-right: 10px;
  margin-bottom: 10px;
  margin-left: 10px;
  -webkit-columns: 100px 12;
  -moz-columns: 100px 12;
  columns: 100px 12;
  -webkit-column-width: 100px;
  -moz-column-width: 100px;
  column-width: 100px;
  -webkit-column-count: 12;
  -moz-column-count: 12;
  column-count: 12;
  -webkit-column-rule: medium none invert;
  -moz-column-rule: medium none invert;
  column-rule: medium none invert;
  -webkit-column-rule-width: thin;
  -moz-column-rule-width: thin;
  column-rule-width: thin;
  -webkit-column-rule-style: solid;
  -moz-column-rule-style: solid;
  column-rule-style: solid;
  -webkit-column-rule-color: rgb(128,128,128);
  -moz-column-rule-color: rgb(128,128,128);
  column-rule-color: rgb(128,128,128);
  -webkit-column-span: all;
  -moz-column-span: all;
  column-span: all;
  -webkit-column-fill: inbalanceside;
  -moz-column-fill: inbalanceside;
  column-fill: inbalanceside;
  -webkit-column-gap: 10%;
  -moz-column-gap: 10%;
  column-gap: 10%;
  outline: medium none black;
  outline-width: thin;
  outline-style: solid;
  outline-color: rgba(128,128,128,0.9);
  outline-offset: 10%;
  padding: 10px;
  padding: 10px 23%;
  padding: 10px 23% 12em;
  padding: 10px 23% 12em 21ch;
  padding-top: 10px;
  padding-right: 10px;
  padding-bottom: 10px;
  padding-left: 10px;
  break-after: right;
  break-before: left;
  break-inside: avoid-column;
  text-align: justify;
  text-align-last: end;
  text-decoration: blink rgb(255,235,205) wavy;
  -webkit-text-decoration-line: overline;
  -moz-text-decoration-line: overline;
  text-decoration-line: overline;
  -webkit-text-decoration-color: rgba(255,235,205,0.5);
  -moz-text-decoration-color: rgba(255,235,205,0.5);
  text-decoration-color: rgba(255,235,205,0.5);
  -moz-text-decoration-style: dotted;
  text-decoration-style: dotted;
  text-indent: 10%;
  text-justify: distribute;
  text-overflow: ellipsis;
  text-shadow: 20px 30px 5px rgb(0,191,255);
  text-transform: capitalize;
  line-height: 50px;
  letter-spacing: 1px;
  -webkit-backface-visibility: hidden;
  -moz-backface-visibility: hidden;
  backface-visibility: hidden;
  -webkit-transform-origin: 50% 50% 0;
  -moz-transform-origin: 50% 50% 0;
  transform-origin: 50% 50% 0;
  -webkit-transform-origin: 10px -10px;
  -moz-transform-origin: 10px -10px;
  -o-transform-origin: 10px -10px;
  -ms-transform-origin: 10px -10px;
  transform-origin: 10px -10px;
  -webkit-transform-origin: 10px -10px 20px;
  -moz-transform-origin: 10px -10px 20px;
  transform-origin: 10px -10px 20px;
  -webkit-transform-style: preserve-3d;
  -moz-transform-style: preserve-3d;
  transform-style: preserve-3d;
  -webkit-transform: translate(10px,10px) scale(1.5,2.0);
  -moz-transform: translate(10px,10px) scale(1.5,2.0);
  -o-transform: translate(10px,10px) scale(1.5,2.0);
  -ms-transform: translate(10px,10px) scale(1.5,2.0);
  transform: translate(10px,10px) scale(1.5,2.0);
  -webkit-transition: background 500ms ease-in 125ms;
  -moz-transition: background 500ms ease-in 125ms;
  -o-transition: background 500ms ease-in 125ms;
  transition: background 500ms ease-in 125ms;
  -webkit-transition-property: all;
  -moz-transition-property: all;
  -o-transition-property: all;
  transition-property: all;
  -webkit-transition-duration: 250ms;
  -moz-transition-duration: 250ms;
  -o-transition-duration: 250ms;
  transition-duration: 250ms;
  -webkit-transition-timing-function: linear;
  -moz-transition-timing-function: linear;
  -o-transition-timing-function: linear;
  transition-timing-function: linear;
  -webkit-transition-delay: 1s;
  -moz-transition-delay: 1s;
  -o-transition-delay: 1s;
  transition-delay: 1s;
  display: block;
  position: static;
  top: 10px;
  right: 10px;
  bottom: 10px;
  left: 10px;
  float: left;
  clear: both;
  z-index: -1000;
  -ms-overflow: hidden;
  overflow: hidden;
  -ms-overflow-x: hidden;
  overflow-x: hidden;
  -ms-overflow-y: visible;
  overflow-y: visible;
  visibility: collapse;
  -webkit-box-decoration-break: slice;
  box-decoration-break: slice;
  -webkit-box-shadow: 100px 50px 50% 25% rgb(255,0,0);
  -moz-box-shadow: 100px 50px 50% 25% rgb(255,0,0);
  box-shadow: 100px 50px 50% 25% rgb(255,0,0);
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
  caret-color: rgb(255,69,0);
  cursor: zoom-in;
}
"""