
// // import NewHtml

// // let document = Document {
// //   Html {
// //     Head(Title(Text("Helllo")))
// //     Body {
// //       H1("Welcome!")
// //       // ForEach(1...3) {
// //         // H2($0)
// //       // }
// //       Ul {
// //         Li("1")
// //         Li("1")
// //         Li("1")
// //         Li("1")
// //         Li("1")
// //       }
// //       Table {
// //         Tr {
// //           Th("Hello")
// //         }
// //         Tr {
// //           Td("Hello")
// //         }
// //       }
// //     }
// //   }
// // }


// // print(document.debugRender())


// import NewCss

// // print(Property<Key.Animation>("Hello").render())

// func makeArray(_ value: String) -> () -> Array<String> {
//   return {
//     return [value]
//   }
// }

// infix operator <>: AdditionPrecedence
// private func <><T>(
//   lhs: @escaping () -> Array<T>,
//   rhs: @escaping () -> Array<T>
// ) -> () -> Array<T> {
//   return {
//     return lhs() + rhs()
//   }
// }

// let arr1 = makeArray("Hello")
// let arr2 = makeArray(", ")
// let arr3 = makeArray("World")
// let arr4 = makeArray("!")

// let arr5 = arr1 <> arr2 <> arr3 <> arr4
// print(arr5())


// print(0xffffff)
// print(0xffffffff)




//([A-Za-z]+)\n
//print("case \"\($1.key)\": return \"\($1.Value.default)\"")\n