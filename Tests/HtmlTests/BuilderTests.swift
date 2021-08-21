final class BuilderTests: XCTestCase {

  func testBuildEmptyNode() {
    let div1 = Div()
    let div2 = Div{}

    XCTAssertEqual("<div></div>", div1.render())
    XCTAssertEqual("<div></div>", div2.render())
    XCTAssertEqual(div1.render(), div2.render())
    
    XCTAssertTrue(type(of: div1) == Div<Empty>.self)
    XCTAssertTrue(type(of: div2) == Div<Empty>.self)
    XCTAssertTrue(type(of: div1) == type(of: div2))
  }

  func testBuildSingleNode() {
    let headerA = H1 {
      Text("Hello, world!")
    }

    let headerB = H1(Text("Hello, world!"))

    let headerC = H1("Hello, world!")

    let headerD = H1 {
      #if swift(<5.4)
        Text("Hello, world!")
      #else
        Text("Hello, world!")
      #endif
    }

    XCTAssertEqual("<h1>Hello, world!</h1>", headerA.render())

    XCTAssertEqual(headerA.render(), headerB.render())
    XCTAssertEqual(headerB.render(), headerC.render())
    XCTAssertEqual(headerC.render(), headerD.render())

    XCTAssertTrue(type(of: headerA) == H1<Text>.self)
    XCTAssertTrue(type(of: headerB) == H1<Text>.self)
    XCTAssertTrue(type(of: headerC) == H1<Text>.self)
    XCTAssertTrue(type(of: headerD) == H1<Text>.self)
  }

  func testBuildArrayNode() {
    let headerA = H1 {
      Text("1")
      Text("2")
      Text("3")
    }

    let headerB = H1 {
      for i in 1...3 {
        Text(String(i))
      }
    }

    XCTAssertEqual("<h1>123</h1>", headerA.render())

    XCTAssertEqual(headerA.render(), headerB.render())

    XCTAssertTrue(type(of: headerA) == H1<Array<Text>>.self)
    XCTAssertTrue(type(of: headerB) == H1<Array<Text>>.self)
  }

  func testBuildTupleNode() {
    let header = H1 {
      Text("1")
      Raw("2")
      Text("3")
    }

    XCTAssertEqual("<h1>123</h1>", header.render())
    XCTAssertTrue(type(of: header) == H1<Tuple<(Text, Raw, Text)>>.self)
  }

  func testBuildOptionalNode() {
    let nilText: Optional<Text> = .none

    let header = H1 {
      nilText

      if true {
        Raw("Stake!")
      }
    }

    XCTAssertEqual("<h1>Stake!</h1>", header.render())
    XCTAssertTrue(type(of: header) == H1<Tuple<(Optional<Text>, Optional<Raw>)>>.self)
  }

  func testBuildEitherNode() {
    let isTrue = true

    let header = H1 {
      if isTrue {
        Raw("1")
      } else {
        Text("2")
      }
      
      isTrue ? Text("3") : Text("4")
      
      switch isTrue {
      case true:
        Text("5")
      case false:
        Raw("6")
      }
    }

    XCTAssertEqual("<h1>135</h1>", header.render())
    XCTAssertTrue(type(of: header) == H1<Tuple<(Either<Raw, Text>, Text, Either<Text, Raw>)>>.self)
  }

  func testResultBuilders() {
    testBuildEmptyNode()
    testBuildSingleNode()
    testBuildArrayNode()
    testBuildTupleNode()
    testBuildOptionalNode()
    testBuildEitherNode()
  }

  static var allTests = [
    ("testResultBuilders", testResultBuilders),
  ]
}