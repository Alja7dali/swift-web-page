// import Dom

// // let node = Document {
// //   Html {
// //     Head {
// //       Text("Hello, World!")
// //     }
// //     Body {
// //       Comment("Am a <escaped> comment")
// //       Text("Hello, World!")
// //     }
// //     .class("myClass myClass")
// //     .style(safe: "p:1;2:2")
// //     .id("myId myId")
// //     .contenteditable(true)
// //   }
// // }

// // // print(node.render(indentBy: .spaces(2)))
// // print(node.debugRender(indentBy: .spaces(2)))

// // let head = Tr {
// //   // ForEach(1...2) { _ in
// //   //   Th(Text("Head"))
// //   // }
// //   Th(Text("Head"))
// //   Th(Text("Head"))
// //   Th(Text("Head"))
// //   // Td(Text("Head"))
// // }

// // let data = Tr {
// //   ForEach(1...2) { _ in
// //     Td(Comment("<Hello, \"world\"!>"))
// //   }
// // }

// // print(head.debugRender(indentBy: .spaces(2)))
// // // print(data.debugRender(indentBy: .spaces(2)))




// func generateThead() -> Thead {
//   return Thead {
//     Tr {
//       ForEach(1...1) { _ in
//         Th().class("myClass").style(unsafe: "content:\'myContent\'")
//       }
//     }
//   }
// }

// func generateTbody() -> Tbody {
//   return Tbody {
//     Tr {
//       ForEach(1...1) { _ in
//         Td(Comment("<Hello, \"world\"!>"))
//       }
//     }
//   }
// }

// let table = Table {
//   generateThead()
//   generateTbody()
// }

// // let table = Table {
// //   Thead {
// //     Tr {
// //       ForEach(1...2) { _ in
// //         Th(Text("Head"))
// //       }
// //     }
// //   } as Thead
// //   Tbody {
// //       ForEach(1...2) { _ in
// //     Tr {
// //         Td(Text("Data"))
// //       }
// //     }
// //   } as Tbody
// // }


// // let document = Document {
// //   Html {
// //     Head { Title("myTitle") }
// //     Body { table }
// //   }
// // }

// // let indentation: Indentation = .spaces(1)
// // print(document.debugRender(indentBy: indentation))
// // print("---------------------")
// // print(document.debugRender())
// // print("---------------------")
// // print(document.render(indentBy: indentation))
// // print("---------------------")
// // print(document.render())

// let selector = Selector("a") {
//   Selector("a") {
//     Animation()
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//     BackgroundColor(.red)
//   }
// }

// print(selector.debugRender(indentBy: .spaces(2)))

// // let fragment = FragmentNode {
// //   Text("1")
// //   Raw("2")
// //   Text("3")
// //   Raw("4")
// //   Text("5")
// //   Raw("6")
// //   Text("7")
// //   Raw("8")
// //   Text("9")
// //   Raw("10")
// //   Text("11")
// //   Raw("12")
// //   Text("13")
// //   Raw("14")
// //   Text("15")
// // }









// // ("<audio onabort="alert('Abort');" onabort="alert('Abort');                                    " oncanplay="alert();" oncanplay="alert();" oncanplaythrough="alert();" oncanplaythrough="alert();" ondurationchange="alert();" ondurationchange="alert();" onemptied="alert();" onemptied="alert();" onended="alert();" onended="alert();" onerror="alert();" onerror="alert();" onloadeddata="alert();" onloadeddata="alert();" onloadedmetadata="alert();" onloadedmetadata="alert();" onloadstart="alert();" onloadstart="alert();" onpause="alert();" onpause="alert();" onplay="alert();" onplay="alert();" onplaying="alert();" onplaying="alert();" onseeked="alert();" onseeked="alert();" onseeking="alert();" onseeking="alert();" onstalled="alert();" onstalled="alert();" onprogress="alert();" onprogress="alert();" onratechange="alert();" onratechange="alert();" onsuspend="alert();" onsuspend="alert();" ontimeupdate="alert();" ontimeupdate="alert();" onvolumechange="alert();" onvolumechange="alert();" onwaiting="alert();" onwaiting="alert();"><track src="track" oncuechange="alert();" oncuechange="alert();"></audio>")
// // ("<audio onabort="alert(&amp;apos;Abort&amp;apos;);" onabort="alert(&amp;apos;Abort&amp;apos;);" oncanplay="alert();" oncanplay="alert();" oncanplaythrough="alert();" oncanplaythrough="alert();" ondurationchange="alert();" ondurationchange="alert();" onemptied="alert();" onemptied="alert();" onended="alert();" onended="alert();" onerror="alert();" onerror="alert();" onloadeddata="alert();" onloadeddata="alert();" onloadedmetadata="alert();" onloadedmetadata="alert();" onloadstart="alert();" onloadstart="alert();" onpause="alert();" onpause="alert();" onplay="alert();" onplay="alert();" onplaying="alert();" onplaying="alert();" onseeked="alert();" onseeked="alert();" onseeking="alert();" onseeking="alert();" onstalled="alert();" onstalled="alert();" onprogress="alert();" onprogress="alert();" onratechange="alert();" onratechange="alert();" onsuspend="alert();" onsuspend="alert();" ontimeupdate="alert();" ontimeupdate="alert();" onvolumechange="alert();" onvolumechange="alert();" onwaiting="alert();" onwaiting="alert();"><track src="track" oncuechange="alert();" oncuechange="alert();"></audio>")