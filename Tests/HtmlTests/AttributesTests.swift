final class AttributesTests: XCTestCase {
  func testAttributes() {
    XCTAssertEqual(
      """
      <th abbr="blob" colspan="1" headers="blob" rowspan="1" scope></th>
      """,
      th().abbr("blob").colspan(1).headers("blob").rowspan(1).scope(.auto).render()
    )
    XCTAssertEqual("<th scope=\"col\"></th>", th().scope(.col).render())
    XCTAssertEqual("<th scope=\"colgroup\"></th>", th().scope(.colgroup).render())
    XCTAssertEqual("<th scope=\"row\"></th>", th().scope(.row).render())
    XCTAssertEqual("<th scope=\"rowgroup\"></th>", th().scope(.rowgroup).render())

    XCTAssertEqual(
      "<a href=\"/user/foo&quot; onmouseover=&quot;alert(1)\">XSS</a>",
      a("XSS").href("/user/foo\" onmouseover=\"alert(1)").render()
    )

    XCTAssertEqual("<a accesskey=\"a\"></a>", a().accesskey("a").render())

    XCTAssertEqual(
      """
      <form action="/" name="blob" novalidate></form>
      """,
      form().action("/").method(.get).name("blob").novalidate(true).render()
    )
    XCTAssertEqual(
      """
      <form action="/" method="post"></form>
      """,
      form().action("/").method(.post).novalidate(false).render()
    )
    XCTAssertEqual("<area alt=\"blob\">", area().alt("blob").render())

    XCTAssertEqual(
      """
      <img alt="blob" crossorigin height="42" src="src" width="43">
      """,
      img().alt("blob").crossorigin(.anonymous).height(42).src("src").width(43).render()
    )
    XCTAssertEqual(
      """
      <img crossorigin="use-credentials">
      """,
      img().crossorigin(.useCredentials).render()
    )

    let inputTagAttrs = [
      #"alt="blob""#,
      #"autofocus"#,
      #"checked"#,
      #"disabled"#,
      #"form="form""#,
      #"height="42""#,
      #"max="10.0""#,
      #"max="11""#,
      #"maxlength="12""#,
      #"min="13.0""#,
      #"min="14""#,
      #"minlength="15""#,
      #"multiple"#,
      #"name="blob name""#,
      #"pattern=".+""#,
      #"placeholder="...""#,
      #"readonly"#,
      #"required"#,
      #"src="src""#,
      #"step="2""#,
      #"width="43""#,
    ]

    XCTAssertEqual(
      """
      <input \(inputTagAttrs.joined(separator: " "))>
      """,
      input()
        .alt("blob")
        .autofocus(true)
        .checked(true)
        .disabled(true)
        .form("form")
        .height(42)
        .max(10 as Double)
        .max(11 as Int)
        .maxlength(12)
        .min(13 as Double)
        .min(14 as Int)
        .minlength(15)
        .multiple(true)
        .name("blob name")
        .pattern(".+")
        .placeholder("...")
        .readonly(true)
        .required(true)
        .src("src")
        .step(2)
        .width(43)
        .render()
    )

    XCTAssertEqual(
      """
      <input>
      """,
      input().autofocus(false).checked(false).disabled(false).readonly(false).required(false).render()
    )

    XCTAssertEqual(
      """
      <script async charset="utf-8" defer nonce="blob" src="blob.js"></script>
      """,
      script().async(true).charset(.utf8).defer(true).nonce("blob").src("blob.js").render()
    )
    XCTAssertEqual(
      """
      <script></script>
      """,
      script().async(false).defer(false).render()
    )

    XCTAssertEqual(
      """
      <button autofocus disabled form="form" name="blob"></button>
      """,
      button().autofocus(true).disabled(true).form("form").name("blob").render()
    )
    XCTAssertEqual(
      """
      <button></button>
      """,
      button().autofocus(false).disabled(false).render()
    )

    XCTAssertEqual(
      """
      <select autofocus disabled form="form" name="blob" required><option selected>blob</option></select>
      """,
      select {
        option("blob")
          .selected(true)
      }
      .autofocus(true)
      .disabled(true)
      .form("form")
      .name("blob")
      .required(true)
      .render()
    )
    XCTAssertEqual(
      """
      <select><option>blob</option></select>
      """,
      select {
        option("blob")
          .selected(false)
      }
      .autofocus(false)
      .disabled(false)
      .required(false)
      .render()
    )

    XCTAssertEqual(
      """
      <textarea autofocus cols="80" disabled form="form" name="blob" placeholder="..." readonly required rows="24" wrap="hard"></textarea>
      """,
      textarea()
        .autofocus(true)
        .cols(80)
        .disabled(true)
        .form("form")
        .name("blob")
        .placeholder("...")
        .readonly(true)
        .required(true)
        .rows(24)
        .wrap(.hard)
        .render()
    )
    XCTAssertEqual(
      """
      <textarea wrap="soft"></textarea>
      """,
      textarea()
        .autofocus(false)
        .disabled(false)
        .readonly(false)
        .required(false)
        .wrap(.soft)
        .render()
    )

    XCTAssertEqual(
      """
      <audio autoplay controls loop muted preload src="src">\
      <track src="captions" default kind="captions" label="blob" srclang="en">\
      <track src="chapters" kind="chapters">\
      <track src="descriptions" kind="descriptions">\
      <track src="metadata" kind="metadata">\
      <track src="subtitles" kind="subtitles">\
      </audio>
      """,
        audio {
          track(src: "captions")
            .default(true)
            .kind(.captions)
            .label("blob")
            .srclang(.en)
          track(src: "chapters")
            .kind(.chapters)
          track(src: "descriptions")
            .kind(.descriptions)
          track(src: "metadata")
            .kind(.metadata)
          track(src: "subtitles")
            .kind(.subtitles)
        }
        .autoplay(true)
        .controls(true)
        .loop(true)
        .muted(true)
        .preload(.auto)
        .src("src")
        .render()
    )
    XCTAssertEqual(
      """
      <audio preload="metadata"><track src="blob"></audio>
      """,
      audio {
        track(src: "blob")
      }
      .autoplay(false)
      .controls(false)
      .loop(false)
      .muted(false)
      .preload(.metadata)
      .render()
    )
    XCTAssertEqual(
      """
      <video autoplay controls height="42" loop muted poster="blob" preload="none" src="src" width="43">\
      <track src="captions" default kind="captions" label="blob" srclang="en">\
      <track src="chapters" kind="chapters">\
      <track src="descriptions" kind="descriptions">\
      <track src="metadata" kind="metadata">\
      <track src="subtitles" kind="subtitles">\
      </video>
      """,
      video {
        track(src: "captions")
          .default(true)
          .kind(.captions)
          .label("blob")
          .srclang(.en)
        track(src: "chapters")
          .kind(.chapters)
        track(src: "descriptions")
          .kind(.descriptions)
        track(src: "metadata")
          .kind(.metadata)
        track(src: "subtitles")
          .kind(.subtitles)
      }
      .autoplay(true)
      .controls(true)
      .height(42)
      .loop(true)
      .muted(true)
      .poster("blob")
      .preload(.none)
      .src("src")
      .width(43)
      .render()
    )
    XCTAssertEqual(
      """
      <video><track src="blob"></video>
      """,
      video {
        track(src: "blob")
      }
      .autoplay(false)
      .controls(false)
      .loop(false)
      .muted(false)
      .render()
    )

    XCTAssertEqual("<meta charset=\"utf-8\">", meta().charset(.utf8).render())

    XCTAssertEqual("<blockquote cite=\"blob\"></blockquote>", blockquote().cite("blob").render())

    let date = Date(timeIntervalSinceReferenceDate: 0)

    XCTAssertEqual(
      """
      <del cite="blob" datetime="2001-01-01T00:00:00Z"></del>
      """,
      del().cite("blob").datetime(date).render()
    )

    XCTAssertEqual("<q cite=\"blob\"></q>", q().cite("blob").render())

    XCTAssertEqual("<div class=\"blob\"></div>", div().class("blob").render())

    XCTAssertEqual(
      """
      <td colspan="1" headers="blob" rowspan="1"></td>
      """,
      td().colspan(1).headers("blob").rowspan(1).render()
    )

    XCTAssertEqual("<a contenteditable></a>", a().contenteditable(true).render())
    XCTAssertEqual("<a contenteditable=\"false\"></a>", a().contenteditable(false).render())
    XCTAssertEqual("<a></a>", a().contenteditable(.inherit).render())

    XCTAssertEqual("<a data-blob=\"deadbeef\"></a>", a().data("blob", "deadbeef").render())

    XCTAssertEqual("<time datetime=\"2001-01-01T00:00:00Z\"></time>", time().datetime(date).render())

    XCTAssertEqual("<a dir=\"ltr\"></a>", a().dir(.ltr).render())
    XCTAssertEqual("<a dir=\"rtl\"></a>", a().dir(.rtl).render())
    XCTAssertEqual("<a dir=\"auto\"></a>", a().dir(.auto).render())

    XCTAssertEqual(
      """
      <fieldset disabled name="blob"></fieldset>
      """,
      fieldset().disabled(true).name("blob").render()
    )
    XCTAssertEqual("<fieldset></fieldset>", fieldset().disabled(false).render())

    XCTAssertEqual("<optgroup disabled></optgroup>", optgroup().disabled(true).render())
    XCTAssertEqual("<optgroup></optgroup>", optgroup().disabled(false).render())

    XCTAssertEqual("<a draggable=\"true\"></a>", a().draggable(true).render())
    XCTAssertEqual("<a draggable=\"false\"></a>", a().draggable(false).render())
    XCTAssertEqual("<a></a>", a().draggable(.auto).render())

    XCTAssertEqual("""
      <form enctype=\"application/x-www-form-urlencoded\"></form>
      """,
      form().enctype(.applicationXWwwFormUrlencoded).render()
    )
    XCTAssertEqual("""
      <form enctype=\"multipart/form-data\"></form>
      """,
      form().enctype(.multipartFormData).render()
    )
    XCTAssertEqual("""
      <form enctype=\"text/plain\"></form>
      """,
      form().enctype(.textPlain).render()
    )

    XCTAssertEqual(
      """
      <label for="blob" form="form"></label>
      """,
      label().for("blob").form("form").render()
    )

    XCTAssertEqual(
      """
      <output for="blob" name="blob name"></output>
      """,
      output().for("blob").name("blob name").render()
    )

    XCTAssertEqual("<canvas height=\"42\" width=\"43\"></canvas>", canvas().height(42).width(43).render())
    XCTAssertEqual(
      """
      <iframe height="42" name="blob" sandbox src="src" srcdoc="Hello, world!" width="43"></iframe>
      """,
      iframe()
        .height(42)
        .name("blob")
        .sandbox(true)
        .src("src")
        .srcdoc(text("Hello, world!"))
        .width(43)
        .render()
    )
    XCTAssertEqual(
      """
      <iframe></iframe>
      """,
      iframe().sandbox(false).render()
    )
    XCTAssertEqual(
      """
      <iframe sandbox="allow-forms allow-pointer-lock allow-popups allow-presentation allow-same-origin allow-scripts allow-top-navigation"></iframe>
      """,
      iframe().sandbox([.allowForms, .allowPointerLock, .allowPopups, .allowPresentation, .allowSameOrigin, .allowScripts, .allowTopNavigation]).render()
    )
    XCTAssertEqual(
      """
      <object height="42" name="blob" width="43"></object>
      """,
      object().height(42).name("blob").width(43).render()
    )
    XCTAssertEqual("<svg height=\"42\" width=\"43\"></svg>", svg().height(42).width(43).render())

    XCTAssertEqual("<a hidden></a>", a().hidden(true).render())
    XCTAssertEqual("<a></a>", a().hidden(false).render())

    XCTAssertEqual("<a href=\"blob\" rel=\"alternate\"></a>", a().href("blob").rel(.alternate).render())
    XCTAssertEqual("<area href=\"blob\" rel=\"alternate\">", area().href("blob").rel(.alternate).render())
    XCTAssertEqual("<base href=\"blob\">", base().href("blob").render())
    XCTAssertEqual("<link href=\"blob\" rel=\"alternate\">", link().href("blob").rel(.alternate).render())

    XCTAssertEqual("<a href=\"mailto:blob@backyard.codes\"></a>", a().mailto("blob@backyard.codes").render())

    XCTAssertEqual(
      """
      <a href="\
      mailto:blob@backyard.codes,blob2@backyard.codes\
      ?cc=blob3@backyard.codes&bcc=blob4@backyard.codes&subject=Help!&body=I%20need%20somebody!\
      "></a>
      """,
      a().mailto(
        ["blob@backyard.codes", "blob2@backyard.codes"],
        cc: ["blob3@backyard.codes"],
        bcc: ["blob4@backyard.codes"],
        subject: "Help!",
        body: "I need somebody!"
      ).render()
    )

    XCTAssertEqual("<a id=\"blob\"></a>", a().id("blob").render())

    XCTAssertEqual("<a lang=\"en\"></a>", a().lang(.en).render())

    XCTAssertEqual("<details open></details>", details().open(true).render())
    XCTAssertEqual("<details></details>", details().open(false).render())

    XCTAssertEqual("<ol reversed start=\"1\"></ol>", ol().reversed(true).start(1).render())
    XCTAssertEqual("<ol></ol>", ol().reversed(false).render())

    XCTAssertEqual("<area shape=\"circle\">", area().shape(.circle).render())
    XCTAssertEqual("<area shape=\"poly\">", area().shape(.poly).render())
    XCTAssertEqual("<area>", area().shape(.rect).render())

    XCTAssertEqual("<col span=\"1\">", col().span(1).render())
    XCTAssertEqual("<colgroup span=\"1\"></colgroup>", colgroup().span(1).render())

    XCTAssertEqual("<a spellcheck=\"true\"></a>", a().spellcheck(true).render())
    XCTAssertEqual("<a spellcheck=\"false\"></a>", a().spellcheck(false).render())

    XCTAssertEqual("<embed src=\"src\">", embed().src("src").render())

    XCTAssertEqual("<a style=\"display: none\"></a>", a().style(safe: "display: none").render())

    XCTAssertEqual("<a tabindex=\"1\"></a>", a().tabindex(1).render())

    XCTAssertEqual("<a target=\"_blank\"></a>", a().target(.blank).render())
    XCTAssertEqual("<a></a>", a().target(.self).render())
    XCTAssertEqual("<a target=\"_parent\"></a>", a().target(.parent).render())
    XCTAssertEqual("<a target=\"_top\"></a>", a().target(.top).render())
    XCTAssertEqual("<a target=\"custom\"></a>", a().target(.init(rawValue: "custom")).render())

    XCTAssertEqual("<a title=\"blob\"></a>", a().title("blob").render())

    XCTAssertEqual("<a translate=\"yes\"></a>", a().translate(true).render())
    XCTAssertEqual("<a translate=\"no\"></a>", a().translate(false).render())

    XCTAssertEqual("<button type=\"button\"></button>", button().type(.button).render())
    XCTAssertEqual("<button type=\"reset\"></button>", button().type(.reset).render())
    XCTAssertEqual("<button type=\"submit\"></button>", button().type(.submit).render())

    XCTAssertEqual("<ol type=\"1\"></ol>", ol().type(.decimal).render())
    XCTAssertEqual("<ol type=\"a\"></ol>", ol().type(.lowerAlpha).render())
    XCTAssertEqual("<ol type=\"A\"></ol>", ol().type(.upperAlpha).render())
    XCTAssertEqual("<ol type=\"i\"></ol>", ol().type(.lowerRoman).render())
    XCTAssertEqual("<ol type=\"I\"></ol>", ol().type(.upperRoman).render())
  }

  static var allTests = [
    ("testAttributes", testAttributes),
  ]
}