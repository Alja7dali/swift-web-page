// // import Swep

// // // let page = document {
// // //   html {
// // //     head {
// // //       title("YOLO!")
// // //     }
// // //     body {
// // //       h1("Welcome!")
// // //       p("You've found our site!")
// // //     }
// // //   }
// // // }

// // // let page = document {
// // //   html {
// // //     head {
// // //       title("YOLO!")
// // //       style {
// // //         selector("h1") {
// // //           color(.tomato())
// // //         }
// // //       }
// // //     }
// // //     body {
// // //       h1("Welcome!")
// // //       p("You've found our site!")
// // //     }
// // //   }
// // // }



// // // let page = document {
// // //   html {
// // //     head(title("YOLO!"))
// // //     body {
// // //       h1("Welcome!")
// // //         .color(.tomato())
// // //       p("You've found our site!")
// // //     }
// // //   }
// // // }

// // // print(page.render(.release(.inline)))

// // // print(page.render(.debug(.pretty(.spaces(2)))))
























// // // func welcomeSection() -> some HtmlNode {
// // //   return div {
// // //     p(text("Hide me pls!"))
// // //       .display(.none)
// // //     h1(text("Welcome!"))
// // //     p("Welcome to you & who has come here before.")
// // //     a("a link")
// // //       .href("https://example.org")
// // //     p {
// // //       text("This is a paragraph with ")
// // //       em("some")
// // //       text(" inline formatting and ")
// // //       a("a link")
// // //         .href("https://example.org")
// // //       text("!")
// // //     }
// // //   }
// // // }

// // // func orderedList() -> some HtmlNode {
// // //   return div {
// // //     p {
// // //       text("Here's an ")
// // //       strong("ordered")
// // //       text(" list:")
// // //     }
// // //     ol {
// // //       li("Preheat oven.")
// // //       li("Mix ingredients.")
// // //       li("Order delivery.")
// // //     }
// // //   }
// // // }

// // // func unorderedList() -> some HtmlNode {
// // //   return div {
// // //     p("And \"unordered\":")
// // //     ol {
// // //       li("Preheat oven.")
// // //       li("Mix ingredients.")
// // //       li("Order delivery.")
// // //     }
// // //   }
// // // }

// // // func quiteOfTheDay() -> some HtmlNode {
// // //   return div {
// // //     p("They said:")
// // //     blockquote("Code to the interface you wish you had not the interface you were given.")
// // //     script("alert(\"hello!\");")
// // //   }
// // // }

// // // let page = document {
// // //   html {
// // //     head {
// // //       title("Hello!")
// // //       style("h1{color: red}")
// // //     }
// // //     body {
// // //       welcomeSection()
// // //       orderedList()
// // //       unorderedList()
// // //       quiteOfTheDay()
// // //     }
// // //   }
// // // }


// // // print(myUnorderedList().debugRender())


// // let myBody = body {
// //   // div {
// //     p(text("Hide me pls!"))
// //       .display(.none)
// //     h1(text("Welcome!"))
// //     p("Welcome to you & who has come here before.")
// //     a("a link")
// //       .href("https://example.org")
// //     p {
// //       text("This is a paragraph with ")
// //       em("some")
// //       text(" inline formatting and ")
// //       a("a link")
// //         .href("https://example.org")
// //       text("!")
// //     }
// //   }
// //   // div {
// //   //   p {
// //   //     text("Here's an ")
// //   //     strong("ordered")
// //   //     text(" list:")
// //   //   }
// //   //   ol {
// //   //     li("Preheat oven.")
// //   //     li("Mix ingredients.")
// //   //     li("Order delivery.")
// //   //   }
// //   // }
// // //   div {
// // //     p("And \"unordered\":")
// // //     ol {
// // //       li("Preheat oven.")
// // //       li("Mix ingredients.")
// // //       li("Order delivery.")
// // //     }
// // //   }
// // //   div {
// // //     p("They said:")
// // //     blockquote("Code to the interface you wish you had not the interface you were given.")
// // //     script("alert(\"hello!\");")
// // //   }
// // // }

// // print(type(of: myBody.self))




// // // // print(HtmlNodeBuilder.buildOptional(Text("Hello")))

// // // let nilText: Optional<Text> = .none

// // // let header1 = H1 {
// // //   // nilText

// // //   if true {
// // //     Raw("Stake!")
// // //   }
  
// // //   // // (true) ? Raw("Stake!") : Empty()
// // //   // ([true]).map { $0 ? Raw("Stake!") : Raw("") }
// // // }

// // // let header2 = H1 {
// // //   // nilText

// // //   for _ in 0...10 {
// // //     Text("Stake!")
// // //   }
  
// // //   // (0...10).map { _ in
// // //   //   Raw("Stake!")
// // //   // }

// // // }




// // // let isTrue = true

// // // let header3 = H1 {
// // //   if isTrue {
// // //     if isTrue {
// // //       Text("1")
// // //       // Raw("2")
// // //     } else {
// // //       Raw("2")
// // //     }
// // //   } else {
// // //     if isTrue {
// // //       Text("1")
// // //     } else {
// // //       Raw("2")
// // //       // Text("3")
// // //     }
// // //   }
  
// // //     if isTrue {
// // //       Div {
// // //         Text("1")
// // //         Raw("2")
// // //       }
// // //     } else {
// // //       Raw("2")
// // //     }
  
// // //   // isTrue ? Text("3") : Text("4")
// // // }

// // // print(header1.render())
// // // print(type(of: header1.content))

// // // print(header2.render())
// // // print(type(of: header2.content))

// // // print(header3.render())
// // // print(type(of: header3.content))













// // // fileprivate func childOfBuilderGenerator() {
// // //   let childOf = [
// // //     "Any",
// // //     "Audio",
// // //     "Colgroup",
// // //     "Details",
// // //     "Dl",
// // //     "Fieldset",
// // //     "Figure",
// // //     "Head",
// // //     "Map",
// // //     "Object",
// // //     "Ol",
// // //     "Optgroup",
// // //     "Picture",
// // //     "Select",
// // //     // "Table",
// // //     "Tbody",
// // //     "Tfoot",
// // //     "Thead",
// // //     // "Tr",
// // //     "Ul",
// // //     "Video"
// // //   ]
  
// // //   let min = 1, max = 10
// // //     print("public extension HtmlNodeBuilder {")
// // //   for i in min..<max {
// // //     var generic = ""
// // //     var parameters = ""
// // //     var returnType = ""
// // //     var returnValue = ""
// // //     for j in 0...i {
// // //       generic += "T\(j): HtmlNode, "
// // //       parameters += "_ v\(j): T\(j), "
// // //       returnType += "T\(j), "
// // //       returnValue += "v\(j), "
// // //     }
// // //     print("  @_disfavoredOverload")
// // //     print("  static func buildBlock<\(generic.dropLast(2))>(")
// // //     print("    \(parameters.dropLast(2))")
// // //     print("  ) -> Tuple<(\(returnType.dropLast(2)))> {")
// // //     print("    return Tuple<(\(returnType.dropLast(2)))>( (\(returnValue.dropLast(2))) )")
// // //     print("  }")
// // //   }
// // //     print("}")
// // //     print()

// // //   for c in childOf {
// // //       print("/// MARK: ChildOf\(c)")
// // //       print("public typealias ChildOf\(c)Node = ChildOf\(c) & HtmlNode")
// // //       print("public extension Element where Kind: ChildOf\(c) {")
// // //     for i in min..<max {
// // //       var generic = ""
// // //       var parameters = ""
// // //       var returnType = ""
// // //       var returnValue = ""
// // //       for j in 0...i {
// // //         generic += "T\(j): ChildOf\(c)Node, "
// // //         parameters += "_ v\(j): T\(j), "
// // //         returnType += "T\(j), "
// // //         returnValue += "v\(j), "
// // //       }
// // //       // print("  @_disfavoredOverload")
// // //       print("  init<\(generic.dropLast(2))>(@HtmlNodeBuilder _ content: () -> Tuple<(\(returnType.dropLast(2)))>) { self.init([], .content()) }")
// // //     }
// // //       print("}")
// // //       print()
// // //   }
// // // }

// // // childOfBuilderGenerator()






// // // let renderMode: RenderMode = .release(.pretty(.spaces(2)))

// // // let darkGithubStyle = style(renderMode) {
// // //   selector("body") {
// // //     margin(.px(0), .auto)
// // //     backgroundColor(.black())
// // //     fontFamily("Georgia, .Palatino, .serif")
// // //     color(.hex(0xEEE))
// // //     lineHeight(1)
// // //     maxWidth(.px(960))
// // //     padding(.px(30))
// // //   }
// // //   selector("h1, .h2, .h3, .h4") {
// // //     fontWeight(400)
// // //   }
// // //   selector("h1, .h2, .h3, .h4, .h5, p") {
// // //     marginBottom(.px(24))
// // //     padding(.px(0))
// // //   }
// // //   selector("h1") {
// // //     fontSize(.px(48))
// // //   }
// // //   selector("h2") {
// // //     fontSize(.px(36))
// // //     margin(.px(24), .px(0), .px(6))
// // //   }
// // //   selector("h3") {
// // //     fontSize(.px(24))
// // //   }
// // //   selector("h4") {
// // //     fontSize(.px(21))
// // //   }
// // //   selector("h5") {
// // //     fontSize(.px(18))
// // //   }
// // //   selector("a") {
// // //     color(.hex(0x61BFC1))
// // //     margin(.px(0))
// // //     padding(.px(0))
// // //     textDecorationLine(.none)
// // //     // verticalAlignment(.underline)
// // //   }
// // //   selector("a:hover") {
// // //     textDecorationLine(.underline)
// // //   }
// // //   selector("a:visited") {
// // //     color(.hex(0x466B6C))
// // //   }
// // //   selector("ul, .ol") {
// // //     margin(.px(0))
// // //     padding(.px(0))
// // //   }
// // //   selector("li") {
// // //     lineHeight(.px(24))
// // //   }
// // //   selector("li ul, .li ul") {
// // //     marginLeft(.px(24))
// // //   }
// // //   selector("p, .ul, .ol") {
// // //     fontSize(.px(16))
// // //     lineHeight(.px(24))
// // //     maxWidth(.px(540))
// // //   }
// // //   selector("pre") {
// // //     padding(.px(0), .px(24))
// // //     maxWidth(.px(800))
// // //     // whiteSpace(.prewrap)
// // //   }
// // //   selector("code") {
// // //     fontFamily("Consolas, .Monaco, .Andale Mono, .monospace")
// // //     lineHeight(1.5)
// // //     fontSize(.px(13))
// // //   }
// // //   selector("aside") {
// // //     display(.block)
// // //     float(.right)
// // //     width(.px(390))
// // //   }
// // //   selector("blockquote") {
// // //     borderLeft(
// // //       width: .em(5),
// // //       style: .solid,
// // //       color: .hex(0xEEE)
// // //     )
// // //     padding(.px(0), .em(2))
// // //     marginLeft(.px(0))
// // //     maxWidth(.px(476))
// // //   }
// // //   selector("blockquote cite") {
// // //     fontSize(.px(14))
// // //     lineHeight(.px(20))
// // //     color(.hex(0xBFBFBF))
// // //   }
// // //   selector("blockquote cite:before") {
// // //     content("\'\\2014 \\00A0\'")
// // //   }
// // //   selector("blockquote p") {
// // //     color(.hex(0x666))
// // //     maxWidth(.px(460))
// // //   }
// // //   selector("hr") {
// // //     width(.px(540))
// // //     textAlign(.left)
// // //     margin(.px(0), .auto, .px(0), .px(0))
// // //     color(.hex(0x999))
// // //   }
// // // }

// // // let page = document {
// // //   html {
// // //     head {
// // //       title("Hello!")
// // //       darkGithubStyle
// // //     }
// // //     body {
// // //       p("Hide me pls!")
// // //         .display(.none)
// // //       h1("Welcome!")
// // //       p("Welcome to you & who has come here before.")
// // //       p {
// // //         text("This is a paragraph with ")
// // //         em("some")
// // //         text(" inline formatting and ")
// // //         a("a link")
// // //           .href("https://example.org")
// // //         text("!")
// // //       }
// // //       p {
// // //         text("Here's an ")
// // //         strong("ordered")
// // //         text(" list:")
// // //       }
// // //       ol {
// // //         li("Eat")
// // //         li("Code")
// // //         li("Sleep")
// // //         li("Repeat")
// // //       }
// // //       p("And \"unordered\":")
// // //       ul {
// // //         li("Milk")
// // //         li("Eggs")
// // //         li("Coffee")
// // //       }
// // //       p("They said:")
// // //       blockquote("Code to the interface you wish you had not the interface you were given.")
// // //       script("alert(\"hello!\");")
// // //     }
// // //   }
// // // }

// // // print(page.render(renderMode))





// import Swep

// // let renderMode: RenderMode = .release(.pretty(.spaces(2)))

// // let myDiv1 = div {
// //   p("Hide me pls!")
// //     // .display(.none)
// //   h1("Welcome!")
// //   p("Welcome to you & who has come here before.")
// //   p {
// //     text("This is a paragraph with ")
// //     em("some")
// //     text(" inline formatting and ")
// //     a("a link")
// //       // .href("https://example.org")
// //     text("!")
// //   }
// // }
// // let myDiv2 = div {
// //   p {
// //     text("Here's an ")
// //     strong("ordered")
// //     text(" list:")
// //   }
// //   ol {
// //     li("Eat")
// //     li("Code")
// //     li("Sleep")
// //     li("Repeat")
// //   }
// // }

// // func unorderedList() -> some Element {
// //   div {
// //     p("And \"unordered\":")
// //     ul {
// //       li("Milk")
// //       li("Eggs")
// //       li("Coffee")
// //     }
// //     p("They said:")
// //     blockquote("Code to the interface you wish you had not the interface you were given.")
// //     script("alert(\"hello!\");")
// //   }
// // }

// // let page = 
// // document {
// //   html {
// //     head {
// //       title("Hello!")
// //       // darkGithubStyle
// //     }
// //     body {
// //       myDiv1
// //       myDiv2
// //       // unorderedList()
// //     }
// //   }
// // }

// // print(type(of: page.self))
// // print(page.render(renderMode))


// // func someText() -> some Tag {
// //   p("Hello, .world!")
// // }

// // // let h = h1 {
// // //   p("Hello, .world!")
// // //   someText()
// // // }

// // print(type(of: someText().self))
// // print(someText().render(renderMode))





// // let renderMode: RenderMode = .release(.pretty(.spaces(2)))

// // let titillimFont: StaticString = """
// //   https://fonts.googleapis.com/css2?family=\
// //   Titillium+Web:ital,wght@0,200;0,300;0,400;\
// //   0,600;0,700;0,900;1,200;1,300;1,400;1,600;\
// //   1,700&display=swap
// //   """
  
// // let plainStyle = style {
// //   `import`(titillimFont)
// //   selector("*, *::before, *::after") {
// //     margin(.px(0))
// //     padding(.px(0))
// //     boxSizing(.borderBox)
// //   }
// //   selector("body") {
// //     margin(.px(0), .auto)
// //     backgroundColor(.hex(0x111))
// //     fontFamily("'Titillium Web', .sans-serif")
// //   }
// // }

// // let page = document {
// //   html {
// //     head {
// //       title("Hello, .Swep!")
// //       plainStyle
// //     }
// //     body {
// //       h1("📄 swift-web-page (swep)")
// //       hr()
// //         .width(50%)
// //         .minWidth(.px(720))
// //         .color(.hex(0x323232))
// //       p {
// //         strong("Swep ")
// //         text("is a Swift DSL for writing type-safe HTML/CSS in declarative way.")
// //       }
// //       p {
// //         text("With ")
// //         strong("Swep:")
// //       }
// //       ul {
// //         li("You can write html documents along with css")
// //           .fontWeight(.bolder)
// //         li("Bringing all swift-language features out of the box")
// //         #if swift(>=5.1)
// //           for version in 1...4 {
// //             if version != 2 {
// //               li("supporting swift v5.\(version)")
// //             }
// //           }
// //         #else
// //           li("Unfortunatly this library is built using @resultBuilder which available in swift v5.1 and higher 😢")
// //         #endif
// //       }
// //       blockquote("Enjoy! ✌️😁")
// //     }
// //   }
// // }

// // print(type(of: page))
// // print(page.render(renderMode))




// // let tableTag = table {
// //   tr(th("A Head"))
// //   tr(td("A Body"))
// // } // ✅ Compiles!

// // print(type(of: tableTag))

// // let theadTag = thead(tr(th("A Head")))
// // let tbodyTag = tbody(tr(td("A Body")))

// // let tableTag = table {
// //   theadTag
// //   tbodyTag
// // } // ✅ Compiles!

// // print(type(of: tableTag))

// let theadTag = thead(tr(th("A Head")))
// let tbodyTag = (1...3).map { _ in
//   tbody(tr(td("A Body")))
// }

// let tableTag = table {
//   theadTag
//   tbodyTag
  
// } // ✅ Compiles!

// print(type(of: tableTag))














// // /// Audio
// // let myAudio = Audio {
// //   AudioSource()
// //   Track(src: "I have more info")
// // }

// // print(type(of: myAudio.self))

// // /// Colgroup
// // let myColgroup = Colgroup {
// //   for _ in 0..<10 {
// //     Col()
// //   }
// // }

// // print(type(of: myColgroup.self))

// // /// Details
// // let myDetails = Details {
// //   Summary("Info")
// //   P("I have more info")
// // }

// // print(type(of: myDetails.self))

// // /// Dl
// // let myDl = Dl {
// //   Dd("Info")
// //   Dt("I have more info")
// // }

// // print(type(of: myDl.self))

// // /// Fieldset
// // let myFieldset = Fieldset {
// //   Legend("Info")
// //   P("I have more info")
// // }

// // print(type(of: myFieldset.self))

// // /// Figure
// // let myFigure = Figure {
// //   Figcaption("Info")
// //   P("I have more info")
// // }

// // print(type(of: myFigure.self))


// // /// TrTh
// // let myTrTh = Tr {
// //   Th("Info")
// //   Th("I have more info")
// // }

// // print(type(of: myTrTh.self))

// // /// TrTd
// // let myTrTd = Tr {
// //   Td("Info")
// //   Td("I have more info")
// // }

// // print(type(of: myTrTd.self))

// // /// Thead
// // let myThead = Thead {
// //   Tr {
// //     Th("Info")
// //     Th("I have more info")
// //   }
// // }

// // print(type(of: myThead.self))

// // /// Tbody
// // let myTbody = Tbody {
// //   Tr {
// //     Td("Info")
// //     Td("I have more info")
// //   }
// // }

// // print(type(of: myTbody.self))

// // /// Tfoot
// // let myTfoot = Tfoot {
// //   Tr {
// //     Td("Info")
// //     Td("I have more info")
// //   }
// // }

// // print(type(of: myTfoot.self))





















// // for i in 1..<10 {
// //   var generic = ""
// //   var parameters = ""
// //   var returnType = ""
// //   var returnValue = ""
// //     generic += "T0: ChildOfThead, "
// //     parameters += "_ v0: T0, "
// //     returnType += "T0, "
// //     returnValue += "v0, "
// //   for j in 1...i {
// //     generic += "T\(j): VariationOfTbody, "
// //     parameters += "_ v\(j): T\(j), "
// //     returnType += "T\(j), "
// //     returnValue += "v\(j), "
// //   }
// //   print("  init<\(generic.dropLast(2))>(@HtmlNodeBuilder _ content: () -> Content) where Content == Tuple<(\(returnType.dropLast(2)))> { self.init([], .content()) }")
// // }

// // for i in 1..<10 {
// //   var generic = ""
// //   var parameters = ""
// //   var returnType = ""
// //   var returnValue = ""
// //     generic += "T0: ChildOfThead, "
// //     parameters += "_ v0: Thead<T0>, "
// //     returnType += "Thead<T0>, "
// //     returnValue += "v0, "
// //   for j in 1..<i {
// //     generic += "T\(j): VariationOfTbody, "
// //     parameters += "_ v\(j): Tbody<T\(j)>, "
// //     returnType += "T\(j), "
// //     returnValue += "v\(j), "
// //   }
// //     generic += "T\(i): ChildOfTfoot, "
// //     parameters += "_ v\(i): Tfoot<T\(i)>, "
// //     returnType += "Tfoot<T\(i)>, "
// //     returnValue += "v\(i), "
// //   print("  init<\(generic.dropLast(2))>(@HtmlNodeBuilder _ content: () -> Content) where Content == Tuple<(\(returnType.dropLast(2)))> { self.init([], .content()) }")
// // }


// //   /// Caption, Thead, Tbody ...
// //   /// Colgroup, Thead, Tbody ...
// //   /// Caption, Colgroup, Thead, Tbody ...

// // for i in 2..<10 {
// //   var generic = ""
// //   var parameters = ""
// //   var returnType = ""
// //   var returnValue = ""
// //     generic += "T0: ChildOfAny, "
// //     parameters += "_ v0: Caption<T0>, "
// //     returnType += "Caption<T0>, "
// //     returnValue += "v0, "
// //     generic += "T1: ChildOfThead, "
// //     parameters += "_ v1: Thead<T1>, "
// //     returnType += "Thead<T1>, "
// //     returnValue += "v1, "
// //   for j in 2...i {
// //     if j < i {
// //       generic += "T\(j): VariationOfTbody, "
// //       parameters += "_ v\(j): T\(j), "
// //       returnType += "T\(j), "
// //       returnValue += "v\(j), "
// //     } else {
// //       generic += "T\(j): ChildOfTfoot, "
// //       parameters += "_ v\(j): Tfoot<T\(j)>, "
// //       returnType += "Tfoot<T\(j)>, "
// //       returnValue += "v\(j), "
// //     }
// //   }
// //   print("  init<\(generic.dropLast(2))>(@HtmlNodeBuilder _ content: () -> Content) where Content == Tuple<(\(returnType.dropLast(2)))> { self.init([], .content()) }")
// // }

// // for i in 2..<10 {
// //   var generic = ""
// //   var parameters = ""
// //   var returnType = ""
// //   var returnValue = ""
// //     generic += "T0: ChildOfColgroup, "
// //     parameters += "_ v0: Colgroup<T0>, "
// //     returnType += "Colgroup<T0>, "
// //     returnValue += "v0, "
// //     generic += "T1: ChildOfThead, "
// //     parameters += "_ v1: Thead<T1>, "
// //     returnType += "Thead<T1>, "
// //     returnValue += "v1, "
// //   for j in 2...i {
// //     if j < i {
// //       generic += "T\(j): VariationOfTbody, "
// //       parameters += "_ v\(j): T\(j), "
// //       returnType += "T\(j), "
// //       returnValue += "v\(j), "
// //     } else {
// //       generic += "T\(j): ChildOfTfoot, "
// //       parameters += "_ v\(j): Tfoot<T\(j)>, "
// //       returnType += "Tfoot<T\(j)>, "
// //       returnValue += "v\(j), "
// //     }
// //   }
// //   print("  init<\(generic.dropLast(2))>(@HtmlNodeBuilder _ content: () -> Content) where Content == Tuple<(\(returnType.dropLast(2)))> { self.init([], .content()) }")
// // }

// // for i in 3..<10 {
// //   var generic = ""
// //   var parameters = ""
// //   var returnType = ""
// //   var returnValue = ""
// //     generic += "T0: ChildOfAny, "
// //     parameters += "_ v0: Caption<T0>, "
// //     returnType += "Caption<T0>, "
// //     returnValue += "v0, "
// //     generic += "T1: ChildOfColgroup, "
// //     parameters += "_ v0: Colgroup<T1>, "
// //     returnType += "Colgroup<T1>, "
// //     returnValue += "v1, "
// //     generic += "T2: ChildOfThead, "
// //     parameters += "_ v2: Thead<T2>, "
// //     returnType += "Thead<T2>, "
// //     returnValue += "v2, "
// //   for j in 3...i {
// //     if j < i {
// //       generic += "T\(j): VariationOfTbody, "
// //       parameters += "_ v\(j): T\(j), "
// //       returnType += "T\(j), "
// //       returnValue += "v\(j), "
// //     } else {
// //       generic += "T\(j): ChildOfTfoot, "
// //       parameters += "_ v\(j): Tfoot<T\(j)>, "
// //       returnType += "Tfoot<T\(j)>, "
// //       returnValue += "v\(j), "
// //     }
// //   }
// //   print("  init<\(generic.dropLast(2))>(@HtmlNodeBuilder _ content: () -> Content) where Content == Tuple<(\(returnType.dropLast(2)))> { self.init([], .content()) }")
// // }

// //   /// Caption, Thead, Tbody ..., Tfoot
// //   /// Colgroup, Thead, Tbody ..., Tfoot
// //   /// Caption, Colgroup, Thead, Tbody ..., Tfoot






