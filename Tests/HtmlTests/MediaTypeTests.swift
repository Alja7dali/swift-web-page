final class MediaTypeTests: XCTestCase {
  func testMediaType() {
    XCTAssertEqual("application/javascript", MediaType.application(.javascript).description)
    XCTAssertEqual("application/json", MediaType.application(.json).description)
    XCTAssertEqual("application/xml", MediaType.application(.xml).description)
    XCTAssertEqual("application/x-www-form-url-encoded", MediaType.application(.xWwwFormUrlencoded).description)
    XCTAssertEqual("application/other", MediaType.application("other").description)

    XCTAssertEqual("audio/aiff", MediaType.audio(.aiff).description)
    XCTAssertEqual("audio/ogg", MediaType.audio(.ogg).description)
    XCTAssertEqual("audio/mpeg", MediaType.audio(.mpeg).description)
    XCTAssertEqual("audio/wav", MediaType.audio(.wav).description)
    XCTAssertEqual("audio/other", MediaType.audio("other").description)

    XCTAssertEqual("font/collection", MediaType.font(.collection).description)
    XCTAssertEqual("font/otf", MediaType.font(.otf).description)
    XCTAssertEqual("font/sfnt", MediaType.font(.sfnt).description)
    XCTAssertEqual("font/ttf", MediaType.font(.ttf).description)
    XCTAssertEqual("font/woff", MediaType.font(.woff).description)
    XCTAssertEqual("font/woff2", MediaType.font(.woff2).description)
    XCTAssertEqual("font/other", MediaType.font("other").description)

    XCTAssertEqual("image/bmp", MediaType.image(.bmp).description)
    XCTAssertEqual("image/jpeg", MediaType.image(.jpeg).description)
    XCTAssertEqual("image/gif", MediaType.image(.gif).description)
    XCTAssertEqual("image/png", MediaType.image(.png).description)
    XCTAssertEqual("image/svg+xml", MediaType.image(.svg).description)
    XCTAssertEqual("image/tiff", MediaType.image(.tiff).description)
    XCTAssertEqual("image/other", MediaType.image("other").description)

    XCTAssertEqual("multipart/alternative; boundary=begin", MediaType.multipart(.alternative, boundary: "begin").description)
    XCTAssertEqual("multipart/digest; boundary=begin", MediaType.multipart(.digest, boundary: "begin").description)
    XCTAssertEqual("multipart/mixed; boundary=begin", MediaType.multipart(.mixed, boundary: "begin").description)
    XCTAssertEqual("multipart/parallel; boundary=begin", MediaType.multipart(.parallel, boundary: "begin").description)
    XCTAssertEqual("multipart/form-data; boundary=begin", MediaType.multipart(.formData, boundary: "begin").description)
    XCTAssertEqual("multipart/other", MediaType.multipart("other", boundary: nil).description)


    XCTAssertEqual("text/css; charset=utf-8", MediaType.text(.css, charset: .utf8).description)
    XCTAssertEqual("text/csv; charset=utf-8", MediaType.text(.csv, charset: .utf8).description)
    XCTAssertEqual("text/html; charset=utf-8", MediaType.text(.html, charset: .utf8).description)
    XCTAssertEqual("text/plain; charset=utf-8", MediaType.text(.plain, charset: .utf8).description)
    XCTAssertEqual("text/other", MediaType.text("other", charset: nil).description)

    // XCTAssertEqual("video/mp4", MediaType.video(.mp4).description)
    // XCTAssertEqual("video/ogg", MediaType.video(.ogg).description)
    // XCTAssertEqual("video/webm", MediaType.video(.webm).description)
    // XCTAssertEqual("video/other", MediaType.video("other").description)
  }

  static var allTests = [
    ("testMediaType", testMediaType),
  ]
}