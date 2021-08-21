// // // import Page

// // // // let node = Document {
// // // //   Html {
// // // //     Head {
// // // //       Text("Hello, World!")
// // // //     }
// // // //     Body {
// // // //       Comment("Am a <escaped> comment")
// // // //       Text("Hello, World!")
// // // //     }
// // // //     .class("myClass myClass")
// // // //     .style(safe: "p:1;2:2")
// // // //     .id("myId myId")
// // // //     .contenteditable(true)
// // // //   }
// // // // }

// // // // // print(node.render(indentBy: .spaces(2)))
// // // // print(node.debugRender(indentBy: .spaces(2)))

// // // // let head = Tr {
// // // //   // ForEach(1...2) { _ in
// // // //   //   Th(Text("Head"))
// // // //   // }
// // // //   Th(Text("Head"))
// // // //   Th(Text("Head"))
// // // //   Th(Text("Head"))
// // // //   // Td(Text("Head"))
// // // // }

// // // let data = Tr {
// // //   ForEach(1...2) { _ in
// // //     Td(Text("Data"))
// // //   }
// // // }

// // // // print(head.debugRender(indentBy: .spaces(2)))
// // // // // print(data.debugRender(indentBy: .spaces(2)))




// // // func generateThead() -> Thead {
// // //   return Thead {
// // //     Tr {
// // //       ForEach(1...2) { _ in
// // //         Th(Text("Head"))
// // //       }
// // //     }
// // //   }
// // // }

// // // func generateTbody() -> Tbody {
// // //   return Tbody {
// // //     Tr {
// // //       ForEach(1...2) { _ in
// // //         Td(Text("Data"))
// // //       }
// // //     }
// // //   }
// // // }

// // // // let table = Table {
// // // //   generateThead()
// // // //   generateTbody()
// // // // }

// // // let table = Table {
// // //   Thead {
// // //     Tr {
// // //       ForEach(1...2) { _ in
// // //         Th(Text("Head"))
// // //       }
// // //     }
// // //   } as Thead
// // //   Tbody {
// // //       ForEach(1...2) { _ in
// // //     Tr {
// // //         Td(Text("Data"))
// // //       }
// // //     }
// // //   } as Tbody
// // // }

// // // print(table.debugRender(indentBy: .spaces(2)))



// // // // func iterate<C,R>(_ t: C, _ block: (AnyObject, AnyObject) -> R) {
// // // //   let mirror = Mirror(reflecting: t).children
// // // //   for i in mirror.indices {
// // // //     // block(mirror[i].0, mirror[i].1)
// // // //     print("\(mirror[i].0) => \(mirror[i].1)")
// // // //   }
// // // // }


// // // // let tuple = ((false, true), 42, 42.195, "42.195km")
// // // // iterate(tuple) { print("\($0) => \($1)") }
// // // // // iterate(tuple.0){ print("\($0) => \($1)")}
// // // // // iterate(tuple.0.0) { print("\($0) => \($1)")} // no-op







// // /// The following code were used to generate `structs` at './Sources/HTML/Elements.swift`
// // let allTags = [
// //   "A",
// //   "Abbr",
// //   "Address",
// //   "Area",
// //   "Article",
// //   "Aside",
// //   "Audio",
// //   "B",
// //   "Base",
// //   "Bdi",
// //   "Bdo",
// //   "Blockquote",
// //   "Body",
// //   "Br",
// //   "Button",
// //   "Canvas",
// //   "Caption",
// //   "Cite",
// //   "Code",
// //   "Col",
// //   "Colgroup",
// //   "Dd",
// //   "Del",
// //   "Details",
// //   "Dfn",
// //   "Div",
// //   "Dl",
// //   "Dt",
// //   "Em",
// //   "Embed",
// //   "Fieldset",
// //   "Figcaption",
// //   "Figure",
// //   "Footer",
// //   "Form",
// //   "H1",
// //   "H2",
// //   "H3",
// //   "H4",
// //   "H5",
// //   "H6",
// //   "Head",
// //   "Header",
// //   "Hr",
// //   "Html",
// //   "I",
// //   "Iframe",
// //   "Img",
// //   "Input",
// //   "Ins",
// //   "Kbd",
// //   "Label",
// //   "Legend",
// //   "Li",
// //   "Link",
// //   "Main",
// //   "Mark",
// //   "Map",
// //   "Meta",
// //   "Meter",
// //   "Nav",
// //   "Object",
// //   "Ol",
// //   "Optgroup",
// //   "Option",
// //   "Output",
// //   "P",
// //   "Param",
// //   "Picture",
// //   "Pre",
// //   "Progress",
// //   "Q",
// //   "Rp",
// //   "Rt",
// //   "Ruby",
// //   "S",
// //   "Samp",
// //   "Script",
// //   "Section",
// //   "Select",
// //   "Small",
// //   "Source",
// //   "Span",
// //   "Strong",
// //   "Style",
// //   "Sub",
// //   "Summary",
// //   "Sup",
// //   "Svg",
// //   "Table",
// //   "Tbody",
// //   "Td",
// //   "Template",
// //   "Textarea",
// //   "Tfoot",
// //   "Time",
// //   "Title",
// //   "Track",
// //   "Th",
// //   "Thead",
// //   "Tr",
// //   "U",
// //   "Ul",
// //   "Var",
// //   "Video",
// //   "Wbr"
// // ]

// // func fileContent(_ tag: String) -> String {
// //   return """
// //   public typealias \(tag.lowercased()) = \(tag)
// //   """
// // }

// // func createFile(_ tag: String) {
// //   let path = "/Users/halllo/Desktop/swift-page/Sources/Html/LowercasedAliases.swift"
// //   try? File(path: path).append(fileContent(tag))
// // }

// // allTags.forEach(createFile)

// // // func fileContent(_ tag: String) -> String {
// // //   return """
// // //   public typealias \(tag.lowercased()) = \(tag)
// // //   """
// // //   // /// ------------------------------------------------------------------------ ///
// // //   // /// MARK: <\(tag.lowercased())>
// // //   // public struct \(tag): ContainsChildOfAny {
// // //   //   public let tag: StaticString = \"\(tag.lowercased())\"
// // //   //   public let attributes: Array<Attribute>
// // //   //   public let content: HtmlNode
// // //   //   public init(_ a: Array<Attribute>, _ c: HtmlNode) {
// // //   //     attributes = a; content = c
// // //   //   }
// // //   // }
// // // }

// // // func createFile(_ tag: String) {
// // //   let path = "/Users/halllo/Desktop/swift-page/Sources/Html/HtmlNodeTypes/Elements.swift"
// // //   // let fp = fopen(path, "w")
// // //   // let content = Array<UInt8>(fileContent(tag).utf8).map(Int8.init)
// // //   // fwrite(content, 1, content.count, fp)
// // //   // fclose(fp)
// // //   try? File(path: path).append(fileContent(tag))
// // // }

// // // allTags.forEach(createFile)


// let allTags = [
//   [
//     "A",
//     """
//     /// The `<a>` element represents either a hyperlink (a hypertext anchor)
//     /// labeled by its contents, or a placeholder for where a link might
//     /// otherwise have been placed, if it had been relevant, consisting of just
//     /// the element's contents.
//     """
//   ], [
//     "Abbr",
//     """
//     /// The `<abbr>` element represents an abbreviation or acronym, optionally
//     /// with its expansion.
//     """,
//     "Abbreviation"
//   ], [
//     "Address",
//     """
//     /// The `<address>` element represents contact information for a person,
//     /// people or organization. It should include physical and/or digital
//     /// location/contact information and a means of identifying a person(s) or
//     /// organization the information pertains to.
//     """
//   ], [
//     "Area",
//     """
//     /// The `<area>` element represents either a hyperlink with some text and
//     /// a corresponding area on an image
//     /// map, or a dead area on an image map.
//     """
//   ], [
//     "Article",
//     """
//     /// The `<article>` element represents a complete, or self-contained,
//     /// composition in a document, page, application, or site. This could be
//     /// a magazine, newspaper, technical or scholarly article, an essay or
//     /// report, a blog or other social media post.
//     """
//   ], [
//     "Aside",
//     """
//     /// The `<aside>` element represents a section of a page that consists of
//     /// content that is tangentially related to the content of the parenting
//     /// sectioning content, and which could be considered separate from that
//     /// content. Such sections are often represented as sidebars in printed
//     /// typography.
//     """
//   ], [
//     "Audio",
//     """
//     /// An `<audio>` element represents a sound or audio stream.
//     """
//   ], [
//     "B",
//     """
//     /// The `<b>` element represents a span of text to which attention is being
//     /// drawn for utilitarian purposes without conveying any extra importance
//     /// and with no implication of an alternate voice or mood, such as key words
//     /// in a document abstract, product names in a review, actionable words in
//     /// interactive text-driven software, or an article lede.
//     """,
//     "Bold"
//   ], [
//     "Base",
//     """
//     /// The `<base>` element allows authors to specify the document base URL for the
//     /// purposes of parsing URLs, and the name of the default browsing context for
//     /// the purposes of following hyperlinks. The element does not represent any
//     /// content beyond this information.
//     """
//   ], [
//     "Bdi",
//     """
//     /// The `<bdi>` element represents a span of text that is to be isolated from
//     /// its surroundings for the purposes of bidirectional text formatting.
//     """
//   ], [
//     "Bdo",
//     """
//     /// The `<bdo>` element represents explicit text directionality formatting
//     /// control for its children. It allows authors to override the Unicode
//     /// bidirectional algorithm by explicitly specifying a direction override.
//     """
//   ], [
//     "Blockquote",
//     """
//     /// The `<blockquote>` element represents content that is quoted from another
//     /// source, optionally with a citation which must be within a `<footer>` or
//     /// `<cite>` element, and optionally with in-line changes such as annotations
//     /// and abbreviations.
//     """
//   ], [
//     "Body",
//     """
//     /// The `<body>` element represents the content of the document.
//     """
//   ], [
//     "Br",
//     """
//     /// The `<br>` element represents a line break.
//     """
//   ], [
//     "Button",
//     """
//     /// The `<button>` element represents a control allowing a user to trigger
//     /// actions, when enabled. It is labeled by its content.
//     """
//   ], [
//     "Canvas",
//     """
//     /// The `<canvas>` element provides scripts with a resolution-dependent
//     /// bitmap canvas, which can be used for rendering graphs, game graphics,
//     /// art, or other visual images on the fly.
//     /// TODO: provide a swiftui-way to draw stuff over js-script
//     ///       https://www.w3schools.com/html/html5_canvas.asp
//     ///       https://github.com/mkj-is/PathBuilder
//     """
//   ], [
//     "Caption",
//     """
//     /// The `<caption>` element represents the title of the table that is its
//     /// parent, if it has a parent and that is a table element.
//     """
//   ], [
//     "Cite",
//     """
//     /// The `<cite>` element represents a reference to a creative work. It must
//     /// include the title of the work or the name of the author (person, people
//     /// or organization) or an URL reference, or a reference in abbreviated form
//     /// as per the conventions used for the addition of citation metadata.
//     """
//   ], [
//     "Code",
//     """
//     /// The `<code>` element represents a fragment of computer code. This could
//     /// be an XML element name, a file name, a computer program, or any other
//     /// string that a computer would recognize.
//     """
//   ], [
//     "Col",
//     """
//     /// If a `<col>` element has a parent and that is a `<colgroup>` element
//     /// that itself has a parent that is a `<table>` element, then the `<col>`
//     /// element represents one or more columns in the column group represented
//     /// by that `<colgroup>`.
//     """
//   ], [
//     "Colgroup",
//     """
//     /// The `<colgroup>` element represents a group of one or more columns in the
//     /// `table` that is its parent, if it has a parent and that is a `<table>`
//     /// element.
//     """,
//     "ColumnsGroup"
//   ], [
//     "Dd",
//     """
//     /// The `<dd>` element represents a description, part of a term-description
//     /// group in a description list (`<dl>` element).
//     """
//   ], [
//     "Del",
//     """
//     /// The `<del>` element represents a removal from the document.
//     """
//   ], [
//     "Details",
//     """
//     /// The `<details>` element represents a disclosure widget from which the
//     /// user can obtain additional information or controls.
//     """
//   ], [
//     "Dfn",
//     """
//     /// The `<dfn>` element represents the defining instance of a term. The
//     /// term-description group, `<p>`, `<li>` or `<section>` element that is
//     /// the nearest ancestor of the `<dfn>` element must also contain the
//     /// definition(s) for the term given by the `<dfn>` element.
//     """,
//     "Definition"
//   ], [
//     "Div",
//     """
//     /// The `<div>` element has no special meaning at all. It represents
//     /// its children. It can be used with the `class`, `lang`, and `title`
//     /// attributes to mark up semantics common to a group of consecutive elements.
//     """
//   ], [
//     "Dl",
//     """
//     /// The `<dl>` element represents a description list of zero or more
//     /// term-description groups. Each term-description group consists of
//     /// one or more terms (represented by `<dt>` elements) possibly as
//     /// children of a `<div>` element child, and one or more descriptions
//     /// (represented by `<dd>` elements possibly as children of a `<div>`
//     /// element child), ignoring any nodes other than `<dt>` and `<dd>`
//     /// element children, and `<dt>` and `<dd>` elements that are children
//     /// of `<div>` element children within a single `<dl>` element.
//     """
//   ], [
//     "Docuemnt",
//     """
//     /// The `<!doctype>` element represents a html docuemnt.
//     """,
//   ], [
//     "Dt",
//     """
//     /// The `<dt>` element represents a term, part of a term-description group
//     /// in a description list (`<dl>` element).
//     """
//   ], [
//     "Em",
//     """
//     /// The `<em>` element represents stress emphasis of its contents.
//     """,
//     "Emphasis"
//   ], [
//     "Embed",
//     """
//     /// The `<embed>` element provides an integration point for an external
//     /// (typically non-HTML) application or interactive content.
//     """
//   ], [
//     "Fieldset",
//     """
//     /// The `<fieldset>` element represents a set of form controls optionally
//     /// grouped under a common name.
//     """
//   ], [
//     "Figcaption",
//     """
//     /// The `<figcaption>` element represents a caption or legend for the rest of
//     /// the contents of the `<figcaption>` element's parent `<figure>` element, if
//     /// any.
//     """
//   ], [
//     "Figure",
//     """
//     /// The `<figure>` element represents some flow content, optionally with
//     /// a caption, that is self-contained (like a complete sentence) and is
//     /// typically referenced as a single unit from the main flow of the document.
//     """
//   ], [
//     "Footer",
//     """
//     /// The `<footer>` element represents a footer for its nearest ancestor
//     /// `<main>` element or sectioning content or sectioning root element.
//     /// A footer typically contains information about its section, such as
//     /// who wrote it, links to related documents, copyright data, and the like.
//     """
//   ], [
//     "Form",
//     """
//     /// The `<form>` element represents a collection of form-associated
//     /// elements, some of which can represent editable values that can be
//     /// submitted to a server for processing.
//     """
//   ], [
//     "H1",
//     """
//     /// These elements represent headings for their sections. The `<h1>`
//     /// element has the highest rank.
//     """
//   ], [
//     "H2",
//     """
//     /// These elements represent headings for their sections. The `<h2>`
//     /// element has the second-highest rank.
//     """
//   ], [
//     "H3",
//     """
//     /// These elements represent headings for their sections. The `<h3>`
//     /// element has the third-highest rank.
//     """
//   ], [
//     "H4",
//     """
//     /// These elements represent headings for their sections. The `<h4>`
//     /// element has the forth-highest rank.
//     """
//   ], [
//     "H5",
//     """
//     /// These elements represent headings for their sections. The `<h5>`
//     /// element has the fifth-highest rank.
//     """
//   ], [
//     "H6",
//     """
//     /// These elements represent headings for their sections. The `<h6>`
//     /// element has the lowest rank.
//     """
//   ], [
//     "Head",
//     """
//     /// The `<head> element represents a collection of metadata for the `Document`.
//     """
//   ], [
//     "Header",
//     """
//     /// The `<header>` element represents introductory content for its nearest
//     /// ancestor `<main>` element or sectioning content or sectioning root
//     /// element. A `<header>` typically contains a group of introductory or
//     /// navigational aids.
//     """
//   ], [
//     "Hr",
//     """
//     /// The `<hr>` element represents a paragraph-level thematic break, e.g.,
//     /// a scene change in a story, or a transition to another topic within a
//     /// section of a reference book.
//     """
//   ], [
//     "Html",
//     """
//     /// The `<html>` element represents the root of an HTML document.
//     """
//   ], [
//     "I",
//     """
//     /// The `<i>` element represents a span of text in an alternate voice or
//     /// mood, or otherwise offset from the normal prose in a manner indicating
//     /// a different quality of text, such as a taxonomic designation, a technical
//     /// term, an idiomatic phrase from another language, transliteration, a thought,
//     /// or a ship name in Western texts.
//     """,
//     "Italic"
//   ], [
//     "Iframe",
//     """
//     /// The `<iframe>` element represents a nested browsing context.
//     """
//   ], [
//     "Img",
//     """
//     /// An `<img>` element represents an image and its fallback content.
//     """
//   ], [
//     "Input",
//     """
//     /// The `<input>` element represents a typed data field, usually with a
//     /// form control to allow the user to edit the data.
//     """
//   ], [
//     "Ins",
//     """
//     /// The `<ins>` element represents an addition to the document.
//     """
//   ], [
//     "Kbd",
//     """
//     /// The `<kbd>` element represents user input (typically keyboard input,
//     /// although it may also be used to represent other input, such as voice
//     /// commands).
//     """,
//     "Keyboard"
//   ], [
//     "Label",
//     """
//     /// The `<label>` element represents a caption in a user interface.
//     /// The caption can be associated with a specific form control, known
//     /// as the `<label>` element's **labeled control**, either using the
//     /// `for` attribute, or by putting the form control inside the `<label>`
//     /// element itself.
//     """
//   ], [
//     "Legend",
//     """
//     /// The `<legend>` element represents a caption for the rest of the contents
//     /// of the `<legend>` element's parent `<fieldset>` element, if any.
//     """
//   ], [
//     "Li",
//     """
//     /// The `<li>` element represents a list item. If its parent element is an
//     /// `<ol>`, or `<ul>`, then the element is an item of the parent element's list,
//     /// as defined for those elements. Otherwise, the list item has no defined
//     /// list-related relationship to any other `<li>` element.
//     """,
//     "ListItem"
//   ], [
//     "Link",
//     """
//     /// The `<link>` element allows authors to link their document to other
//     /// resources.
//     """
//   ], [
//     "Main",
//     """
//     /// The `<main>` element represents the main content of the `<body>` of
//     /// a document or application.
//     """
//   ], [
//     "Mark",
//     """
//     /// The `<mark>` element represents a run of text in one document marked
//     /// or highlighted for reference purposes, due to its relevance in another
//     /// context. When used in a quotation or other block of text referred to
//     /// from the prose, it indicates a highlight that was not originally present
//     /// but which has been added to bring the reader's attention to a part of
//     /// the text that might not have been considered important by the original
//     /// author when the block was originally written, but which is now under
//     /// previously unexpected scrutiny. When used in the main prose of a document,
//     /// it indicates a part of the document that has been highlighted due to its
//     /// likely relevance to the user's current activity.
//     """,
//     "Highlight"
//   ], [
//     "Map",
//     """
//     /// The `<map>` element, in conjunction with an `<img>` element and any
//     /// `<area>` element descendants, defines an image map. The element represents
//     /// its children.
//     """
//   ], [
//     "Meta",
//     """
//     /// The `<meta>` element represents a meta-types.
//     """
//   ], [
//     "Meter",
//     """
//     /// The `<meter>` element represents a scalar measurement within a known
//     /// range, or a fractional value; for example disk usage, the relevance of
//     /// a query result, or the fraction of a voting population to have selected
//     /// a particular candidate.
//     """
//   ], [
//     "Nav",
//     """
//     /// The `<nav>` element represents a section of a page that links to other
//     /// pages or to parts within the page: a section with navigation links.
//     """,
//     "Navigation"
//   ], [
//     "Object",
//     """
//     /// The `<object>` element can represent an external resource, which,
//     /// depending on the type of the resource, will either be treated as an
//     /// image, as a nested browsing context, or as an external resource to be
//     /// processed by a plugin.
//     /// TODO: Required attribute "data" or "type"
//     """
//   ], [
//     "Ol",
//     """
//     /// The `<ol>` element represents a list of items, where the items have
//     /// been intentionally ordered, such that changing the order would change
//     /// the meaning of the document.
//     """,
//     "OrderedList"
//   ], [
//     "Optgroup",
//     """
//     /// The `<optgroup>` element represents a group of `<option>` elements
//     /// with a common label.
//     """,
//     "OptionsGroup"
//   ], [
//     "Option",
//     """
//     /// The `<option>` element represents an option in a `<select>` element or as
//     /// part of a list of suggestions in a datalist element.
//     """
//   ], [
//     "Output",
//     """
//     /// The `<output>` element represents the result of a calculation performed
//     /// by the application, or the result
//     /// of a user action.
//     """
//   ], [
//     "P",
//     """
//     /// The `<p>` element represents a paragraph.
//     """,
//     "Paragraph"
//   ], [
//     "Param",
//     """
//     /// The `<param>` element defines parameters for plugins invoked by object
//     /// elements. It does not represent anything on its own.
//     """,
//     "Parameter"
//   ], [
//     "Picture",
//     """
//     /// The `<picture>` element represents a picture.
//     """
//   ], [
//     "Pre",
//     """
//     /// The `<pre>` element represents a block of preformatted text, in which
//     /// structure is represented by typographic conventions rather than by elements.
//     """,
//     "Preformat"
//   ], [
//     "Progress",
//     """
//     /// The `<progress>` element represents the completion progress of a task.
//     """
//   ], [
//     "Q",
//     """
//     /// The `<q>` element represents some phrasing content quoted from another
//     /// source.
//     """,
//     "Quote"
//   ], [
//     "S",
//     """
//     /// The `<s>` element represents contents that are no longer accurate
//     /// or no longer relevant.
//     """,
//     "Strikethrough"
//   ], [
//     "Samp",
//     """
//     /// The `samp` element represents sample or quoted output from another
//     /// program or computing system.
//     """,
//     "Sample"
//   ], [
//     "Script",
//     """
//     /// The `<script>` element allows authors to include dynamic script and
//     /// data blocks in their documents. The element does not represent content
//     /// for the user.
//     """
//   ], [
//     "Section",
//     """
//     /// The `<section>` element represents a generic section of a document or
//     /// application. A section, in this context, is a thematic grouping of
//     /// content. Each `<section>` should be identified, typically by including
//     /// a heading (`<h1>`-`<h6>` element) as a child of the section element.
//     """
//   ], [
//     "Select",
//     """
//     /// The `<select>` element represents a control for selecting amongst a
//     /// set of options.
//     """
//   ], [
//     "Small",
//     """
//     /// The `<small>` element represents side comments such as small print.
//     """
//   ], [
//     "Source",
//     """
//     /// The `<source>` element is used to specify multiple media resources for
//     /// media elements, such as `<video>`, `<audio>`, and `<picture>`.
//     """
//   ], [
//     "Span",
//     """
//     /// The `<span>` element doesn't mean anything on its own, but can be
//     /// useful when used together with the global attributes, e.g., `class`,
//     /// `lang`, or `dir`. It represents its children.
//     """
//   ], [
//     "Strong",
//     """
//     /// The `<strong>` element represents strong importance, seriousness, or
//     /// urgency for its contents.
//     """
//   ], [
//     "Style",
//     """
//     /// The `<style>` element allows authors to embed style information in
//     /// their documents.
//     """
//   ], [
//     "Sub",
//     """
//     /// The `<sub>` element represents a subscript.
//     """,
//     "Subscript"
//   ], [
//     "Summary",
//     """
//     /// The first `<summary>` child element of a `<details>` element represents
//     /// a summary, caption, or legend for the rest of the contents of the parent
//     /// `<details>` element, if any.
//     """
//   ], [
//     "Sup",
//     """
//     /// The `<sup>` element represents a superscript.
//     """,
//     "Superscript"
//   ], [
//     "Svg",
//     """
//     /// The `<svg>` element represents scalable vector graphics.
//     """
//   ], [
//     "Table",
//     """
//     /// The `<table>` element represents data with more than one dimension,
//     /// in the form of a table.
//     """
//   ], [
//     "Tbody",
//     """
//     /// The `<tbody>` element represents a block of rows that consist of a body
//     /// of data for the parent `<table>` element, if the `<tbody>` element has
//     /// a parent and it is a `<table>`.
//     """
//   ], [
//     "Td",
//     """
//     /// The `<td>` element represents a data cell in a table.
//     """
//   ], [
//     "Template",
//     """
//     /// The `<template>` element represents a template.
//     """
//   ], [
//     "Textarea",
//     """
//     /// The `<textarea>` element represents a multiline plain text edit control
//     /// for the element's raw value. The contents of the control represent the
//     /// control's default value.
//     """
//   ], [
//     "Tfoot",
//     """
//     /// The `<tfoot>` element represents the block of rows that consist of the
//     /// column summaries (footers) for the parent `<table>` element, if the
//     /// `<tfoot>` element has a parent and it is a `<table>`.
//     """
//   ], [
//     "Time",
//     """
//     /// The `<time>` element represents its contents, along with a machine-readable
//     /// form of those contents in the datetime attribute. The kind of content is
//     /// limited to various kinds of dates, times, time-zone offsets, and durations,
//     /// as described below.
//     """
//   ], [
//     "Title",
//     """
//     /// The `<title>` element represents the document's title or name. Authors
//     /// should use titles that identify their documents even when they are used
//     /// out of context, for example in a user's history or bookmarks, or in
//     /// search results. The document's title is often different from its first
//     /// heading, since the first heading does not have to stand alone when taken
//     /// out of context.
//     """
//   ], [
//     "Track",
//     """
//     /// The `<track>` element allows authors to specify explicit external text
//     /// resources for media elements. It does not represent anything on its own.
//     """
//   ], [
//     "Th",
//     """
//     /// The `<th>` element represents a header cell in a table.
//     /// TODO: "th" can only be within "thead" or the first "tr" of a "table"
//     """
//   ], [
//     "Thead",
//     """
//     /// The `<thead>` element represents the block of rows that consist of the
//     /// column labels (headers) for the parent `<table>` element, if the `<thead>`
//     /// element has a parent and it is a `<table>`.
//     """
//   ], [
//     "Tr",
//     """
//     /// The `<tr>` element represents a row of cells in a table.
//     """
//   ], [
//     "U",
//     """
//     /// The `<u> element represents a span of text with an unarticulated, though
//     /// explicitly rendered, non-textual annotation, such as labeling the text
//     /// as being a proper name in Chinese text (a Chinese proper name mark),
//     /// or labeling the text as being misspelt.
//     """,
//     "Underline"
//   ], [
//     "Ul",
//     """
//     /// The `<ul>` element represents a list of items, where the order of the
//     /// items is not important — that is, where changing the order would not
//     /// materially change the meaning of the document.
//     """,
//     "UnorderedList"
//   ], [
//     "Var",
//     """
//     /// The `<var>` element represents a variable. This could be an actual
//     /// variable in a mathematical expression or programming context, an
//     /// identifier representing a constant, a symbol identifying a physical
//     /// quantity, a function parameter, or just be a term used as a placeholder
//     /// in prose.
//     """,
//     "Variable"
//   ], [
//     "Video",
//     """
//     /// A `<video>` element is used for playing videos or movies, and audio
//     /// files with captions.
//     """
//   ], [
//     "Wbr",
//     """
//     /// The `<wbr>` element represents a line break opportunity.
//     """
//   ]
// ]


// let elements = [
//   "A",
//   "Abbr",
//   "Address",
//   "Article",
//   "Aside",
//   "Audio",
//   "B",
//   "Bdi",
//   "Bdo",
//   "Blockquote",
//   "Body",
//   "Br",
//   "Button",
//   "Canvas",
//   "Cite",
//   "Code",
//   "Del",
//   "Details",
//   "Dfn",
//   "Div",
//   "Dl",
//   "Document",
//   "Em",
//   "Embed",
//   "Fieldset",
//   "Figure",
//   "Footer",
//   "Form",
//   "H1",
//   "H2",
//   "H3",
//   "H4",
//   "H5",
//   "H6",
//   "Head",
//   "Header",
//   "Hr",
//   "Html",
//   "I",
//   "Iframe",
//   "Img",
//   "Input",
//   "Ins",
//   "Kbd",
//   "Label",
//   "Main",
//   "Map",
//   "Mark",
//   "Meter",
//   "Nav",
//   "Object",
//   "Ol",
//   "Optgroup",
//   "Output",
//   "P",
//   "Picture",
//   "Pre",
//   "Progress",
//   "Q",
//   "S",
//   "Samp",
//   "Script",
//   "Section",
//   "Select",
//   "Small",
//   "Span",
//   "Strong",
//   "Sub",
//   "Sup",
//   "Svg",
//   "Table",
//   "Template",
//   "Textarea",
//   "Time",
//   "Tr",
//   "U",
//   "Ul",
//   "Var",
//   "Video",
//   "Wbr"
// ]

// let childOf = [
//   ["Area", ["Map"]],
//   ["Base", ["Head"]],
//   ["Caption", ["Table"]],
//   ["Col", ["Colgroup"]],
//   ["Colgroup", ["Table"]],
//   ["Dd", ["Dl"]],
//   ["Dt", ["Dl"]],
//   ["Figcaption", ["Figure"]],
//   ["Legend", ["Fieldset"]],
//   ["Li", ["Ol", "Ul"]],
//   ["Link", ["Head"]],
//   ["Meta", ["Head"]],
//   ["Option", ["Optgroup", "Select"]],
//   ["Param", ["Object"]],
//   ["Source", ["Audio", "Video", "Picture"]],
//   ["Style", ["Head"]],
//   ["Summary", ["Details"]],
//   ["Tbody", ["Table"]],
//   ["Td", ["Tr"]],
//   ["Tfoot", ["Table"]],
//   ["Th", ["Tr"]],
//   ["Thead", ["Table"]],
//   ["Title", ["Head"]],
//   ["Tr", ["Table", "Thead", "Tbody", "Tfoot"]],
//   ["Track", ["Audio", "Video"]]
// ]

// let childless = [
//   "Area",
//   "Base",
//   "Col",
//   "Embed",
//   "Hr",
//   "Img",
//   "Input",
//   "Link",
//   "Meta",
//   "Option",
//   "Script",
//   "Style",
//   "Svg",
//   "Track",
// ]

// let attributeless = [
//   "Br",
//   "Param",
//   "Title",
//   "Wbr"
// ]

// let nonStyleable = [
//   "Docuemnt",
//   "Html",
//   "Head",
//   "Base",
//   "Link",
//   "Meta",
//   "Style",
//   "Title",
//   "Comment",
//   "Param"
// ]

// let parentOf = [
//   "Audio",
//   "Colgroup",
//   "Details",
//   "Dl",
//   "Fieldset",
//   "Figure",
//   "Map",
//   "Object",
//   "Ol",
//   "Optgroup",
//   "Picture",
//   "Select",
//   "Tbody",
//   "Tfoot",
//   "Thead",
//   "Ul",
//   "Video"
// ]

// let specialParentOf = [
//   "Document",
//   "Html",
//   "Head",
//   "Body"
// ]

// let childOfAnyAndParentOf = [
//   "Audio",
//   "Details",
//   "Dl",
//   "Fieldset",
//   "Figure",
//   "Map",
//   "Object",
//   "Ol",
//   "Optgroup",
//   "Picture",
//   "Select",
//   "Ul",
//   "Video"
// ]

// // let confirmToChildOfAny = {
  
// //   return allTags.filter(by: { e in
// //     !childOf.contain(where: { $0[0] == e }) && !specialParentOf.contain($0)
// //   })

// //   return temp
// // }()

// // let confirmToContainChildOfAny = {
// //   let temp = [
// //     "Audio",
// //     "Details",
// //     "Dl",
// //     "Fieldset",
// //     "Figure",
// //     "Map",
// //     "Object",
// //     "Ol",
// //     "Optgroup",
// //     "Picture",
// //     "Select",
// //     "Ul",
// //     "Video"
// //   ]
// //   return allTags.filter(by: {
// //     !childOf.contain($0) && !specialParentOf.contain($0) && !parentOf.contain($0)
// //   })
// // }()

// /// Group: 1
// /// ContainChildOfAny   (elements - (childless + attributeless + parentOf + specialParentOf))
// let containsChildOfAny = elements.filter {
//   return !childless.contains($0)
//     && !attributeless.contains($0)
//     && !parentOf.contains($0)
//     && !specialParentOf.contains($0)
// }

// func fileContentForContainsChildOfAny(_ tag: [String]) -> String {
//   // public typealias \(tag.lowercased()) = \(tag)
//   let anyChildOfNode = """


//   /// ------------------------------------------------------------------------ ///
//   /// MARK: <\(tag[0].lowercased())>
//   \(tag[1])
//   public struct \(tag[0]): ContainsChildOfAny {
//     public let tag: StaticString = \"\(tag[0].lowercased())\"
//     public let attributes: Array<Attribute>
//     public let content: HtmlNode
//     public init(_ a: Array<Attribute>, _ c: HtmlNode) {
//       attributes = a; content = c
//     }
//   }
//   """
  
//   let childlessNode = """


//   /// ------------------------------------------------------------------------ ///
//   /// MARK: <\(tag[0].lowercased())>
//   \(tag[1])
//   public struct \(tag[0]): ContainsNoChild {
//     public let tag: StaticString = \"\(tag[0].lowercased())\"
//     public let attributes: Array<Attribute>
//     public init(_ a: Array<Attribute>) {
//       attributes = a
//     }
//   }
//   """
  
//   let parentOfNode = """


//   /// ------------------------------------------------------------------------ ///
//   /// MARK: <\(tag[0].lowercased())>
//   \(tag[1])
//   public struct \(tag[0]): ElementNode {
//     public let tag: StaticString = \"\(tag[0].lowercased())\"
//     public let attributes: Array<Attribute>
//     public let content: HtmlNode
//     private init(_ a: Array<Attribute>, _ c: HtmlNode) {
//       attributes = a; content = c
//     }

//     /// TODO: add public inits
//     public init<N: HtmlNode>(
//       @NodeBuilder _ content: () -> N
//     ) where N: ChildOf\(tag[0]) {
//       self.init([], content())
//     }

//     public func push(_ key: String, _ value: Optional<String>) -> Self {
//       return .init(attributes + [(key, value)], content)
//     }
//   }
//   """
  
//   if (childless + attributeless).contains(tag[0]) {
//     return childlessNode
//   }

//   if (parentOf + specialParentOf).contains(tag[0]) {
//     return parentOfNode
//   }

//   return anyChildOfNode
  
// }

// func createContentForElementsFile(_ tag: [String]) {
//   let path = "/Users/halllo/Desktop/swift-page/Sources/Html/HtmlNodeTypes/Elements.swift"
//   try? File(path: path).append(fileContentForContainsChildOfAny(tag))
// }

// // allTags.filter({ containsChildOfAny.contains($0[0]) }).forEach(createContentForElementsFile)
// allTags.sorted(by: { $0[0] < $1[0] }).forEach(createContentForElementsFile)

// // /// Group: 2
// // /// ContainChildOfSelf  (parentOf + specialParentOf)
// // let containsChildOfSelf = elements.filter {
// //   return parentOf.contains($0)
// //     && specialParentOf.contains($0)
// // }

// // func fileContentForContainsChildOfSelf(_ tag: [String]) -> String {
// //   // public typealias \(tag.lowercased()) = \(tag)
// //   return """


// //   /// ------------------------------------------------------------------------ ///
// //   /// MARK: <\(tag[0].lowercased())>
// //   \(tag[1])
// //   public struct \(tag[0]): ElementNode {
// //     public let tag: StaticString = \"\(tag[0].lowercased())\"
// //     public let attributes: Array<Attribute>
// //     public let content: HtmlNode
// //     private init(_ a: Array<Attribute>, _ c: HtmlNode) {
// //       attributes = a; content = c
// //     }

// //     /// TODO: add public initializers here
// //     ///
// //     ///

// //     public func push(_ key: String, _ value: Optional<String>) -> Self {
// //       return .init(attributes + [(key, value)], content)
// //     }
// //   }
// //   """
// // }

// // func createContentForParentOfFile(_ tag: [String]) {
// //   let path = "/Users/halllo/Desktop/swift-page/Sources/Html/HtmlNodeTypes/ParentOf.swift"
// //   try? File(path: path).append(fileContentForContainsChildOfSelf(tag))
// // }

// // allTags.filter({ containsChildOfSelf.contains($0[0]) }).forEach(createContentForParentOfFile)

// // /// Group: 3
// // /// ConfirmToChildOfAny (elements - (childOf - specialParentOf))
// // let confirmToChildOfAny = elements.filter { x in
// //   return !childOf.contains(where: { y in y[0] as! String == x })
// //     && specialParentOf.contains(x)
// // }
