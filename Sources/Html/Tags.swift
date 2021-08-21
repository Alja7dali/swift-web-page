extension Tag {
  public init() where Content == Empty { self.init([], Empty()) }
}

/// SelfClosingTag: An element that contains no data but, rather, is an
/// instruction to the browser to perform some action, such as force a line-
/// break or display an image. Empty elements in XHTML are terminated with or
/// with out a trailing slash, as in <br />.
/// Alternatively are called `self-closing` tags.
public protocol SelfClosingTag {}

/// NonSelfClosingTag: An element that contains data. All nonempty elements in
/// XHTML must be closed, as in this example:
/// <p>This is a paragraph, it contains data and therefore is non-empty.</p>
public protocol NonSelfClosingTag {}

extension Tag where Self: NonSelfClosingTag {
  public init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfAny {
    self.init([], c())
  }

  @_disfavoredOverload
  public init(_ c: Content) where Content: ChildOfAny {
    self.init([], c)
  }

  @_disfavoredOverload
  public init(_ string: String) where Content == Text {
    self.init([], Text(string))
  }
}

public extension Tag where Self: NonSelfClosingTag {
  init<A: ChildOfAny, B: ChildOfAny>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { self.init([], c()) }
  init<A: ChildOfAny, B: ChildOfAny, C: ChildOfAny>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { self.init([], c()) }
  init<A: ChildOfAny, B: ChildOfAny, C: ChildOfAny, D: ChildOfAny>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { self.init([], c()) }
  init<A: ChildOfAny, B: ChildOfAny, C: ChildOfAny, D: ChildOfAny, E: ChildOfAny>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { self.init([], c()) }
  init<A: ChildOfAny, B: ChildOfAny, C: ChildOfAny, D: ChildOfAny, E: ChildOfAny, F: ChildOfAny>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { self.init([], c()) }
  init<A: ChildOfAny, B: ChildOfAny, C: ChildOfAny, D: ChildOfAny, E: ChildOfAny, F: ChildOfAny, G: ChildOfAny>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { self.init([], c()) }
  init<A: ChildOfAny, B: ChildOfAny, C: ChildOfAny, D: ChildOfAny, E: ChildOfAny, F: ChildOfAny, G: ChildOfAny, H: ChildOfAny>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { self.init([], c()) }
  init<A: ChildOfAny, B: ChildOfAny, C: ChildOfAny, D: ChildOfAny, E: ChildOfAny, F: ChildOfAny, G: ChildOfAny, H: ChildOfAny, I: ChildOfAny>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { self.init([], c()) }
  init<A: ChildOfAny, B: ChildOfAny, C: ChildOfAny, D: ChildOfAny, E: ChildOfAny, F: ChildOfAny, G: ChildOfAny, H: ChildOfAny, I: ChildOfAny, J: ChildOfAny>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { self.init([], c()) }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <a>
/// The `<a>` element represents either a hyperlink (a hypertext anchor)
/// labeled by its contents, or a placeholder for where a link might
/// otherwise have been placed, if it had been relevant, consisting of just
/// the element's contents.
public struct A<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "a" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute> = [], _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <abbr>
/// The `<abbr>` element represents an abbreviation or acronym, optionally
/// with its expansion.
public struct Abbr<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "abbr" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <address>
/// The `<address>` element represents contact information for a person,
/// people or organization. It should include physical and/or digital
/// location/contact information and a means of identifying a person(s) or
/// organization the information pertains to.
public struct Address<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "address" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <area>
/// The `<area>` element represents either a hyperlink with some text and
/// a corresponding area on an image
/// map, or a dead area on an image map.
public struct Area: Tag, SelfClosingTag {
  public typealias Content = Empty
  public static var tag: StaticString { return "area" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content = Empty()) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <article>
/// The `<article>` element represents a complete, or self-contained,
/// composition in a document, page, application, or site. This could be
/// a magazine, newspaper, technical or scholarly article, an essay or
/// report, a blog or other social media post.
public struct Article<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "article" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <aside>
/// The `<aside>` element represents a section of a page that consists of
/// content that is tangentially related to the content of the parenting
/// sectioning content, and which could be considered separate from that
/// content. Such sections are often represented as sidebars in printed
/// typography.
public struct Aside<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "aside" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <audio>
/// An `<audio>` element represents a sound or audio stream.
public struct Audio<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "audio" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Audio {
  init(_ c: Content) where Content: ChildOfAudio { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfAudio { attributes = []; content = c() }
  init<A: ChildOfAudio, B: ChildOfAudio>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio, E: ChildOfAudio>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio, E: ChildOfAudio, F: ChildOfAudio>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio, E: ChildOfAudio, F: ChildOfAudio, G: ChildOfAudio>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio, E: ChildOfAudio, F: ChildOfAudio, G: ChildOfAudio, H: ChildOfAudio>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio, E: ChildOfAudio, F: ChildOfAudio, G: ChildOfAudio, H: ChildOfAudio, I: ChildOfAudio>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfAudio, B: ChildOfAudio, C: ChildOfAudio, D: ChildOfAudio, E: ChildOfAudio, F: ChildOfAudio, G: ChildOfAudio, H: ChildOfAudio, I: ChildOfAudio, J: ChildOfAudio>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <b>
/// The `<b>` element represents a span of text to which attention is being
/// drawn for utilitarian purposes without conveying any extra importance
/// and with no implication of an alternate voice or mood, such as key words
/// in a document abstract, product names in a review, actionable words in
/// interactive text-driven software, or an article lede.
public struct B<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "b" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <base>
/// The `<base>` element allows authors to specify the document base URL for the
/// purposes of parsing URLs, and the name of the default browsing context for
/// the purposes of following hyperlinks. The element does not represent any
/// content beyond this information.
public struct Base: Tag, SelfClosingTag {
  public typealias Content = Empty
  public static var tag: StaticString { return "base" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content = Empty()) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <bdi>
/// The `<bdi>` element represents a span of text that is to be isolated from
/// its surroundings for the purposes of bidirectional text formatting.
public struct Bdi<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "bdi" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <bdo>
/// The `<bdo>` element represents explicit text directionality formatting
/// control for its children. It allows authors to override the Unicode
/// bidirectional algorithm by explicitly specifying a direction override.
public struct Bdo<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "bdo" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// FIXME: move me to (`Attributes/Attribute`).swift
/// A sub-set of directions, valid for `<bdo>` elements.
public enum BdoDirection: String {
  /// Left-to-right.
  case ltr
  /// Right-to-left.
  case rtl
}  

extension Bdo {
  public func dir(_ value: BdoDirection) -> Self {
    return push("dir", value.rawValue)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <blockquote>
/// The `<blockquote>` element represents content that is quoted from another
/// source, optionally with a citation which must be within a `<footer>` or
/// `<cite>` element, and optionally with in-line changes such as annotations
/// and abbreviations.
public struct Blockquote<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "blockquote" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <body>
/// The `<body>` element represents the content of the document.
public struct Body<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "body" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <br>
/// The `<br>` element represents a line break.
public struct Br: Tag, SelfClosingTag {
  public typealias Content = Empty
  public static var tag: StaticString { return "br" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content = Empty()) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <button>
/// The `<button>` element represents a control allowing a user to trigger
/// actions, when enabled. It is labeled by its content.
public struct Button<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "button" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <canvas>
/// The `<canvas>` element provides scripts with a resolution-dependent
/// bitmap canvas, which can be used for rendering graphs, game graphics,
/// art, or other visual images on the fly.
/// TODO: provide a swiftui-way to draw stuff over js-script
///       https://www.w3schools.com/html/html5_canvas.asp
///       https://github.com/mkj-is/PathBuilder
public struct Canvas<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "canvas" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <caption>
/// The `<caption>` element represents the title of the table that is its
/// parent, if it has a parent and that is a table element.
public struct Caption<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "caption" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <cite>
/// The `<cite>` element represents a reference to a creative work. It must
/// include the title of the work or the name of the author (person, people
/// or organization) or an URL reference, or a reference in abbreviated form
/// as per the conventions used for the addition of citation metadata.
public struct Cite<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "cite" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <code>
/// The `<code>` element represents a fragment of computer code. This could
/// be an XML element name, a file name, a computer program, or any other
/// string that a computer would recognize.
public struct Code<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "code" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <col>
/// If a `<col>` element has a parent and that is a `<colgroup>` element
/// that itself has a parent that is a `<table>` element, then the `<col>`
/// element represents one or more columns in the column group represented
/// by that `<colgroup>`.
public struct Col: Tag, SelfClosingTag {
  public typealias Content = Empty
  public static var tag: StaticString { return "col" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content = Empty()) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <colgroup>
/// The `<colgroup>` element represents a group of one or more columns in the
/// `table` that is its parent, if it has a parent and that is a `<table>`
/// element.
public struct Colgroup<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "colgroup" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Colgroup {
  init(_ c: Content) where Content: ChildOfColgroup { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfColgroup { attributes = []; content = c() }
  init<A: ChildOfColgroup, B: ChildOfColgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup, E: ChildOfColgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup, E: ChildOfColgroup, F: ChildOfColgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup, E: ChildOfColgroup, F: ChildOfColgroup, G: ChildOfColgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup, E: ChildOfColgroup, F: ChildOfColgroup, G: ChildOfColgroup, H: ChildOfColgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup, E: ChildOfColgroup, F: ChildOfColgroup, G: ChildOfColgroup, H: ChildOfColgroup, I: ChildOfColgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfColgroup, B: ChildOfColgroup, C: ChildOfColgroup, D: ChildOfColgroup, E: ChildOfColgroup, F: ChildOfColgroup, G: ChildOfColgroup, H: ChildOfColgroup, I: ChildOfColgroup, J: ChildOfColgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <dd>
/// The `<dd>` element represents a description, part of a term-description
/// group in a description list (`<dl>` element).
public struct Dd<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "dd" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <del>
/// The `<del>` element represents a removal from the document.
public struct Del<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "del" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <details>
/// The `<details>` element represents a disclosure widget from which the
/// user can obtain additional information or controls.
public struct Details<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "details" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// Summary, ChildOfDetails ...
public extension Details {
  init(_ c: Content) where Content: ChildOfDetails { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfDetails { attributes = []; content = c() }
  init<A: VariationOfSummary, B: ChildOfDetails>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails, E: ChildOfDetails>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails, E: ChildOfDetails, F: ChildOfDetails>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails, E: ChildOfDetails, F: ChildOfDetails, G: ChildOfDetails>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails, E: ChildOfDetails, F: ChildOfDetails, G: ChildOfDetails, H: ChildOfDetails>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails, E: ChildOfDetails, F: ChildOfDetails, G: ChildOfDetails, H: ChildOfDetails, I: ChildOfDetails>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: VariationOfSummary, B: ChildOfDetails, C: ChildOfDetails, D: ChildOfDetails, E: ChildOfDetails, F: ChildOfDetails, G: ChildOfDetails, H: ChildOfDetails, I: ChildOfDetails, J: ChildOfDetails>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <dfn>
/// The `<dfn>` element represents the defining instance of a term. The
/// term-description group, `<p>`, `<li>` or `<section>` element that is
/// the nearest ancestor of the `<dfn>` element must also contain the
/// definition(s) for the term given by the `<dfn>` element.
public struct Dfn<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "dfn" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <div>
/// The `<div>` element has no special meaning at all. It represents
/// its children. It can be used with the `class`, `lang`, and `title`
/// attributes to mark up semantics common to a group of consecutive elements.
public struct Div<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "div" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <dl>
/// The `<dl>` element represents a description list of zero or more
/// term-description groups. Each term-description group consists of
/// one or more terms (represented by `<dt>` elements) possibly as
/// children of a `<div>` element child, and one or more descriptions
/// (represented by `<dd>` elements possibly as children of a `<div>`
/// element child), ignoring any nodes other than `<dt>` and `<dd>`
/// element children, and `<dt>` and `<dd>` elements that are children
/// of `<div>` element children within a single `<dl>` element.
public struct Dl<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "dl" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Dl {
  init(_ c: Content) where Content: ChildOfDl { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfDl { attributes = []; content = c() }
  init<A: ChildOfDl, B: ChildOfDl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl, E: ChildOfDl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl, E: ChildOfDl, F: ChildOfDl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl, E: ChildOfDl, F: ChildOfDl, G: ChildOfDl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl, E: ChildOfDl, F: ChildOfDl, G: ChildOfDl, H: ChildOfDl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl, E: ChildOfDl, F: ChildOfDl, G: ChildOfDl, H: ChildOfDl, I: ChildOfDl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfDl, B: ChildOfDl, C: ChildOfDl, D: ChildOfDl, E: ChildOfDl, F: ChildOfDl, G: ChildOfDl, H: ChildOfDl, I: ChildOfDl, J: ChildOfDl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <dt>
/// The `<dt>` element represents a term, part of a term-description group
/// in a description list (`<dl>` element).
public struct Dt<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "dt" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <em>
/// The `<em>` element represents stress emphasis of its contents.
public struct Em<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "em" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <embed>
/// The `<embed>` element provides an integration point for an external
/// (typically non-HTML) application or interactive content.
public struct Embed: Tag, SelfClosingTag {
  public typealias Content = Empty
  public static var tag: StaticString { return "embed" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content = Empty()) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <fieldset>
/// The `<fieldset>` element represents a set of form controls optionally
/// grouped under a common name.
public struct Fieldset<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "fieldset" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Fieldset {
  init(_ c: Content) where Content: ChildOfFieldset { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfFieldset { attributes = []; content = c() }
  /// Legend, ChildOfFieldset ...
  init<A: VariationOfLegend, B: ChildOfFieldset>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset, E: ChildOfFieldset>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset, E: ChildOfFieldset, F: ChildOfFieldset>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset, E: ChildOfFieldset, F: ChildOfFieldset, G: ChildOfFieldset>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset, E: ChildOfFieldset, F: ChildOfFieldset, G: ChildOfFieldset, H: ChildOfFieldset>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset, E: ChildOfFieldset, F: ChildOfFieldset, G: ChildOfFieldset, H: ChildOfFieldset, I: ChildOfFieldset>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: VariationOfLegend, B: ChildOfFieldset, C: ChildOfFieldset, D: ChildOfFieldset, E: ChildOfFieldset, F: ChildOfFieldset, G: ChildOfFieldset, H: ChildOfFieldset, I: ChildOfFieldset, J: ChildOfFieldset>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <figcaption>
/// The `<figcaption>` element represents a caption or legend for the rest of
/// the contents of the `<figcaption>` element's parent `<figure>` element, if
/// any.
public struct Figcaption<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "figcaption" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <figure>
/// The `<figure>` element represents some flow content, optionally with
/// a caption, that is self-contained (like a complete sentence) and is
/// typically referenced as a single unit from the main flow of the document.
public struct Figure<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "figure" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Figure {
  init(_ c: Content) where Content: ChildOfFigure { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfFigure { attributes = []; content = c() }
  /// Figcaption, ChildOfFigure ...
  init<A: VariationOfFigcaption, B: ChildOfFigure>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure, E: ChildOfFigure>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure, E: ChildOfFigure, F: ChildOfFigure>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure, E: ChildOfFigure, F: ChildOfFigure, G: ChildOfFigure>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure, E: ChildOfFigure, F: ChildOfFigure, G: ChildOfFigure, H: ChildOfFigure>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure, E: ChildOfFigure, F: ChildOfFigure, G: ChildOfFigure, H: ChildOfFigure, I: ChildOfFigure>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: VariationOfFigcaption, B: ChildOfFigure, C: ChildOfFigure, D: ChildOfFigure, E: ChildOfFigure, F: ChildOfFigure, G: ChildOfFigure, H: ChildOfFigure, I: ChildOfFigure, J: ChildOfFigure>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <footer>
/// The `<footer>` element represents a footer for its nearest ancestor
/// `<main>` element or sectioning content or sectioning root element.
/// A footer typically contains information about its section, such as
/// who wrote it, links to related documents, copyright data, and the like.
public struct Footer<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "footer" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <form>
/// The `<form>` element represents a collection of form-associated
/// elements, some of which can represent editable values that can be
/// submitted to a server for processing.
public struct Form<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "form" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <h1>
/// These elements represent headings for their sections. The `<h1>`
/// element has the highest rank.
public struct H1<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "h1" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <h2>
/// These elements represent headings for their sections. The `<h2>`
/// element has the second-highest rank.
public struct H2<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "h2" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <h3>
/// These elements represent headings for their sections. The `<h3>`
/// element has the third-highest rank.
public struct H3<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "h3" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <h4>
/// These elements represent headings for their sections. The `<h4>`
/// element has the forth-highest rank.
public struct H4<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "h4" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <h5>
/// These elements represent headings for their sections. The `<h5>`
/// element has the fifth-highest rank.
public struct H5<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "h5" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <h6>
/// These elements represent headings for their sections. The `<h6>`
/// element has the lowest rank.
public struct H6<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "h6" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <head>
/// The `<head> element represents a collection of metadata for the `Document`.
public struct Head<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "head" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Head {
  init(_ c: Content) where Content: ChildOfHead { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfHead { attributes = []; content = c() }
  init<A: ChildOfHead, B: ChildOfHead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead, E: ChildOfHead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead, E: ChildOfHead, F: ChildOfHead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead, E: ChildOfHead, F: ChildOfHead, G: ChildOfHead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead, E: ChildOfHead, F: ChildOfHead, G: ChildOfHead, H: ChildOfHead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead, E: ChildOfHead, F: ChildOfHead, G: ChildOfHead, H: ChildOfHead, I: ChildOfHead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfHead, B: ChildOfHead, C: ChildOfHead, D: ChildOfHead, E: ChildOfHead, F: ChildOfHead, G: ChildOfHead, H: ChildOfHead, I: ChildOfHead, J: ChildOfHead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <header>
/// The `<header>` element represents introductory content for its nearest
/// ancestor `<main>` element or sectioning content or sectioning root
/// element. A `<header>` typically contains a group of introductory or
/// navigational aids.
public struct Header<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "header" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <hr>
/// The `<hr>` element represents a paragraph-level thematic break, e.g.,
/// a scene change in a story, or a transition to another topic within a
/// section of a reference book.
public struct Hr: Tag, SelfClosingTag {
  public typealias Content = Empty
  public static var tag: StaticString { return "hr" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content = Empty()) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <html>
/// The `<html>` element represents the root of an HTML document.
public struct Html<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "html" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }

  public init<A>(@HtmlNodeBuilder _ c: () -> Content) where Content == Body<A> {
    attributes = []; content = c()
  }

  public init<A, B>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(Head<A>, Body<B>)> {
    attributes = []; content = c()
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <i>
/// The `<i>` element represents a span of text in an alternate voice or
/// mood, or otherwise offset from the normal prose in a manner indicating
/// a different quality of text, such as a taxonomic designation, a technical
/// term, an idiomatic phrase from another language, transliteration, a thought,
/// or a ship name in Western texts.
public struct I<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "i" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <iframe>
/// The `<iframe>` element represents a nested browsing context.
public struct Iframe<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "iframe" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <img>
/// An `<img>` element represents an image and its fallback content.
public struct Img: Tag, SelfClosingTag {
  public typealias Content = Empty
  public static var tag: StaticString { return "img" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content = Empty()) {
    attributes = a; content = c
  }
}

extension Img {
  public init(
    src: String,
    alt: String,
    _ a: Array<Attribute> = .init()
  ) {
    attributes = [("src", src), ("alt", alt)] + a; self.content = Empty()
  }

  public init(
    base64: String,
    type: MediaType,
    alt: String,
    _ a: Array<Attribute> = .init()
  ) {
    self.init(src: "data:\(type.description);base64,\(base64)", alt: alt, a)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <input>
/// The `<input>` element represents a typed data field, usually with a
/// form control to allow the user to edit the data.
public struct Input: Tag, SelfClosingTag {
  public typealias Content = Empty
  public static var tag: StaticString { return "input" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content = Empty()) {
    attributes = a; content = c
  }
}

extension Input {
  public init(type value: InputType, _ a: Array<Attribute> = .init()) {
    attributes = [("type", value.rawValue)] + a; self.content = Empty()
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <ins>
/// The `<ins>` element represents an addition to the document.
public struct Ins<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "ins" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <kbd>
/// The `<kbd>` element represents user input (typically keyboard input,
/// although it may also be used to represent other input, such as voice
/// commands).
public struct Kbd<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "kbd" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <label>
/// The `<label>` element represents a caption in a user interface.
/// The caption can be associated with a specific form control, known
/// as the `<label>` element's **labeled control**, either using the
/// `for` attribute, or by putting the form control inside the `<label>`
/// element itself.
public struct Label<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "label" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <legend>
/// The `<legend>` element represents a caption for the rest of the contents
/// of the `<legend>` element's parent `<fieldset>` element, if any.
public struct Legend<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "legend" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <li>
/// The `<li>` element represents a list item. If its parent element is an
/// `<ol>`, or `<ul>`, then the element is an item of the parent element's list,
/// as defined for those elements. Otherwise, the list item has no defined
/// list-related relationship to any other `<li>` element.
public struct Li<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "li" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <link>
/// The `<link>` element allows authors to link their document to other
/// resources.
public struct Link: Tag, SelfClosingTag {
  public typealias Content = Empty
  public static var tag: StaticString { return "link" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content = Empty()) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <main>
/// The `<main>` element represents the main content of the `<body>` of
/// a document or application.
public struct Main<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "main" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <map>
/// The `<map>` element, in conjunction with an `<img>` element and any
/// `<area>` element descendants, defines an image map. The element represents
/// its children.
public struct Map<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "map" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Map {
  init(name: String, _ c: Content) where Content: ChildOfMap { attributes = [("name", name)]; content = c }
  init(name: String, @HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfMap { attributes = [("name", name)]; content = c() }
  init<A: ChildOfMap, B: ChildOfMap>(name: String, @HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = [("name", name)]; content = c() }
  init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap>(name: String, @HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = [("name", name)]; content = c() }
  init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap>(name: String, @HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = [("name", name)]; content = c() }
  init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap, E: ChildOfMap>(name: String, @HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = [("name", name)]; content = c() }
  init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap, E: ChildOfMap, F: ChildOfMap>(name: String, @HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = [("name", name)]; content = c() }
  init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap, E: ChildOfMap, F: ChildOfMap, G: ChildOfMap>(name: String, @HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = [("name", name)]; content = c() }
  init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap, E: ChildOfMap, F: ChildOfMap, G: ChildOfMap, H: ChildOfMap>(name: String, @HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = [("name", name)]; content = c() }
  init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap, E: ChildOfMap, F: ChildOfMap, G: ChildOfMap, H: ChildOfMap, I: ChildOfMap>(name: String, @HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = [("name", name)]; content = c() }
  init<A: ChildOfMap, B: ChildOfMap, C: ChildOfMap, D: ChildOfMap, E: ChildOfMap, F: ChildOfMap, G: ChildOfMap, H: ChildOfMap, I: ChildOfMap, J: ChildOfMap>(name: String, @HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = [("name", name)]; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <mark>
/// The `<mark>` element represents a run of text in one document marked
/// or highlighted for reference purposes, due to its relevance in another
/// context. When used in a quotation or other block of text referred to
/// from the prose, it indicates a highlight that was not originally present
/// but which has been added to bring the reader's attention to a part of
/// the text that might not have been considered important by the original
/// author when the block was originally written, but which is now under
/// previously unexpected scrutiny. When used in the main prose of a document,
/// it indicates a part of the document that has been highlighted due to its
/// likely relevance to the user's current activity.
public struct Mark<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "mark" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <meta>
/// The `<meta>` element represents a meta-types.
public struct Meta: Tag, SelfClosingTag {
  public typealias Content = Empty
  public static var tag: StaticString { return "meta" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content = Empty()) {
    attributes = a; content = c
  }
}

extension Meta {
  public init(contentType: MediaType) {
    attributes = [("http-equiv", "content-type"), ("content", contentType.description)]; self.content = Empty()
  }

  public init(defaultStyle: String) {
    attributes = [("http-equiv", "default-stype"), ("content", defaultStyle)]; self.content = Empty()
  }

  public init(refresh: Int) {
    attributes = [("http-equiv", "refresh"), ("content", String(refresh))]; self.content = Empty()
  }

  public init(applicationName: String) {
    attributes = [("name", "application-name"), ("content", applicationName)]; self.content = Empty()
  }

  public init(author: String) {
    attributes = [("name", "author"), ("content", author)]; self.content = Empty()
  }

  public init(description: String) {
    attributes = [("name", "description"), ("content", description)]; self.content = Empty()
  }

  public init(generator: String) {
    attributes = [("name", "generator"), ("content", generator)]; self.content = Empty()
  }

  public init(keywords: [String]) {
    let sanitizedKeywords = keywords.map { $0.replacingOccurrences(of: ",", with: "&#44;") }
    attributes = [("name", "keywords"), ("content", sanitizedKeywords.joined(separator: ","))]; self.content = Empty()
  }

  public init(name: String, content: String) {
    attributes = [("name", name), ("content", content)]; self.content = Empty()
  }

  public init(property: String, content: String) {
    attributes = [("property", property), ("content", content)]; self.content = Empty()
  }

  public init(viewport prop: Meta.Viewport, _ props: Meta.Viewport...) {
    attributes = [("name", "viewport"), ("content", ([prop] + props).map { $0.rawValue }.joined(separator: ","))]; self.content = Empty()
  }

  public enum Viewport {
    case height(Height)
    case initialScale(Double)
    case maximumScale(Double)
    case minimumScale(Double)
    case userScalable(Bool)
    case width(Width)

    public enum Height: ExpressibleByIntegerLiteral {
      case deviceHeight
      case px(Int)

      public var rawValue: String {
        switch self {
        case .deviceHeight:
          return "device-height"
        case let .px(px):
          return "\(px)"
        }
      }

      public init(integerLiteral value: Int) {
        self = .px(value)
      }
    }

    public enum Width {
      case deviceWidth
      case px(Int)

      public var rawValue: String {
        switch self {
        case .deviceWidth:
          return "device-width"
        case let .px(px):
          return "\(px)"
        }
      }

      public init(integerLiteral value: Int) {
        self = .px(value)
      }
    }

    public var rawValue: String {
      switch self {
      case let .height(px):
        return "height=" + px.rawValue
      case let .initialScale(scale):
        return "initial-scale=\(scale)"
      case let .maximumScale(scale):
        return "maximum-scale=\(scale)"
      case let .minimumScale(scale):
        return "minimum-scale=\(scale)"
      case let .userScalable(isUserScalable):
        return "user-scalable=\(isUserScalable ? "yes" : "no")"
      case let .width(px):
        return "width=" + px.rawValue
      }
    }
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <meter>
/// The `<meter>` element represents a scalar measurement within a known
/// range, or a fractional value; for example disk usage, the relevance of
/// a query result, or the fraction of a voting population to have selected
/// a particular candidate.
public struct Meter<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "meter" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }

  public init(value: Double, @HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfAny {
    attributes = [("value", String(value))]; content = c()
  }

  public init(value: Double, _ c: String) where Content == Text {
    attributes = [("value", String(value))]; content = Text(c)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <nav>
/// The `<nav>` element represents a section of a page that links to other
/// pages or to parts within the page: a section with navigation links.
public struct Nav<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "nav" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <noscript>
/// The `<noscript>` element allows authors to tell users that their browser
/// doesn't support dynamic script and data blocks.
public struct Noscript<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "noscript" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <object>
/// The `<object>` element can represent an external resource, which,
/// depending on the type of the resource, will either be treated as an
/// image, as a nested browsing context, or as an external resource to be
/// processed by a plugin.
/// TODO: Required attribute "data" or "type"
public struct Object<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "object" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Object {
  init(_ c: Content) where Content: ChildOfObject { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfObject { attributes = []; content = c() }
  init<A: ChildOfObject, B: ChildOfObject>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject, E: ChildOfObject>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject, E: ChildOfObject, F: ChildOfObject>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject, E: ChildOfObject, F: ChildOfObject, G: ChildOfObject>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject, E: ChildOfObject, F: ChildOfObject, G: ChildOfObject, H: ChildOfObject>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject, E: ChildOfObject, F: ChildOfObject, G: ChildOfObject, H: ChildOfObject, I: ChildOfObject>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfObject, B: ChildOfObject, C: ChildOfObject, D: ChildOfObject, E: ChildOfObject, F: ChildOfObject, G: ChildOfObject, H: ChildOfObject, I: ChildOfObject, J: ChildOfObject>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <ol>
/// The `<ol>` element represents a list of items, where the items have
/// been intentionally ordered, such that changing the order would change
/// the meaning of the document.
public struct Ol<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "ol" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Ol {
  init(_ c: Content) where Content: ChildOfOl { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfOl { attributes = []; content = c() }
  init<A: ChildOfOl, B: ChildOfOl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl, E: ChildOfOl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl, E: ChildOfOl, F: ChildOfOl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl, E: ChildOfOl, F: ChildOfOl, G: ChildOfOl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl, E: ChildOfOl, F: ChildOfOl, G: ChildOfOl, H: ChildOfOl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl, E: ChildOfOl, F: ChildOfOl, G: ChildOfOl, H: ChildOfOl, I: ChildOfOl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfOl, B: ChildOfOl, C: ChildOfOl, D: ChildOfOl, E: ChildOfOl, F: ChildOfOl, G: ChildOfOl, H: ChildOfOl, I: ChildOfOl, J: ChildOfOl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <optgroup>
/// The `<optgroup>` element represents a group of `<option>` elements
/// with a common label.
public struct Optgroup<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "optgroup" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Optgroup {
  init(_ c: Content) where Content: ChildOfOptgroup { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfOptgroup { attributes = []; content = c() }
  init<A: ChildOfOptgroup, B: ChildOfOptgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup, E: ChildOfOptgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup, E: ChildOfOptgroup, F: ChildOfOptgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup, E: ChildOfOptgroup, F: ChildOfOptgroup, G: ChildOfOptgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup, E: ChildOfOptgroup, F: ChildOfOptgroup, G: ChildOfOptgroup, H: ChildOfOptgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup, E: ChildOfOptgroup, F: ChildOfOptgroup, G: ChildOfOptgroup, H: ChildOfOptgroup, I: ChildOfOptgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfOptgroup, B: ChildOfOptgroup, C: ChildOfOptgroup, D: ChildOfOptgroup, E: ChildOfOptgroup, F: ChildOfOptgroup, G: ChildOfOptgroup, H: ChildOfOptgroup, I: ChildOfOptgroup, J: ChildOfOptgroup>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <option>
/// The `<option>` element represents an option in a `<select>` element or as
/// part of a list of suggestions in a datalist element.
public struct Option<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "option" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }

  public init(_ c: String) where Content == Raw {
    attributes = []; content = Raw(c)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <output>
/// The `<output>` element represents the result of a calculation performed
/// by the application, or the result
/// of a user action.
public struct Output<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "output" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <p>
/// The `<p>` element represents a paragraph.
public struct P<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "p" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <param>
/// The `<param>` element defines parameters for plugins invoked by object
/// elements. It does not represent anything on its own.
public struct Param: Tag, SelfClosingTag {
  public typealias Content = Empty
  public static var tag: StaticString { return "param" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content = Empty()) {
    attributes = a; content = c
  }
}

extension Param {
  public init(name: String, value: String) {
    attributes = [("name", name), ("value", value)]; self.content = Empty()
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <picture>
/// The `<picture>` element represents a picture.
public struct Picture<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "picture" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Picture {
  init(_ c: Content) where Content: ChildOfPicture { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfPicture { attributes = []; content = c() }
  init<A: ChildOfPicture, B: ChildOfPicture>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture, E: ChildOfPicture>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture, E: ChildOfPicture, F: ChildOfPicture>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture, E: ChildOfPicture, F: ChildOfPicture, G: ChildOfPicture>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture, E: ChildOfPicture, F: ChildOfPicture, G: ChildOfPicture, H: ChildOfPicture>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture, E: ChildOfPicture, F: ChildOfPicture, G: ChildOfPicture, H: ChildOfPicture, I: ChildOfPicture>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfPicture, B: ChildOfPicture, C: ChildOfPicture, D: ChildOfPicture, E: ChildOfPicture, F: ChildOfPicture, G: ChildOfPicture, H: ChildOfPicture, I: ChildOfPicture, J: ChildOfPicture>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <pre>
/// The `<pre>` element represents a block of preformatted text, in which
/// structure is represented by typographic conventions rather than by elements.
public struct Pre<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "pre" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <progress>
/// The `<progress>` element represents the completion progress of a task.
public struct Progress<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "progress" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }

  public init(value: Double, @HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfAny {
    attributes = [("value", String(value))]; content = c()
  }

  public init(value: Double, _ c: String) where Content == Text {
    attributes = [("value", String(value))]; content = Text(c)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <q>
/// The `<q>` element represents some phrasing content quoted from another
/// source.
public struct Q<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "q" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <s>
/// The `<s>` element represents contents that are no longer accurate
/// or no longer relevant.
public struct S<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "s" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <samp>
/// The `samp` element represents sample or quoted output from another
/// program or computing system.
public struct Samp<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "samp" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <script>
/// The `<script>` element allows authors to include dynamic script and
/// data blocks in their documents. The element does not represent content
/// for the user.
public struct Script<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "script" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }

  public init(_ c: String) where Content == Raw {
    attributes = []; content = Raw(c)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <section>
/// The `<section>` element represents a generic section of a document or
/// application. A section, in this context, is a thematic grouping of
/// content. Each `<section>` should be identified, typically by including
/// a heading (`<h1>`-`<h6>` element) as a child of the section element.
public struct Section<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "section" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <select>
/// The `<select>` element represents a control for selecting amongst a
/// set of options.
public struct Select<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "select" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Select {
  init(_ c: Content) where Content: ChildOfSelect { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfSelect { attributes = []; content = c() }
  init<A: ChildOfSelect, B: ChildOfSelect>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect, E: ChildOfSelect>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect, E: ChildOfSelect, F: ChildOfSelect>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect, E: ChildOfSelect, F: ChildOfSelect, G: ChildOfSelect>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect, E: ChildOfSelect, F: ChildOfSelect, G: ChildOfSelect, H: ChildOfSelect>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect, E: ChildOfSelect, F: ChildOfSelect, G: ChildOfSelect, H: ChildOfSelect, I: ChildOfSelect>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfSelect, B: ChildOfSelect, C: ChildOfSelect, D: ChildOfSelect, E: ChildOfSelect, F: ChildOfSelect, G: ChildOfSelect, H: ChildOfSelect, I: ChildOfSelect, J: ChildOfSelect>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <small>
/// The `<small>` element represents side comments such as small print.
public struct Small<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "small" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <source>
/// The `<source>` element is used to specify multiple media resources for
/// media elements, such as `<video>`, `<audio>`, and `<picture>`.
public struct Source<Parent>: Tag, SelfClosingTag {
  public typealias Content = Empty
  public static var tag: StaticString { return "source" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content = Empty()) {
    attributes = a; content = c
  }
}

public typealias AudioSource = Source<Audio<Empty>>
public typealias VideoSource = Source<Video<Empty>>
public typealias PictureSource = Source<Picture<Empty>>

public typealias ASource = Source<Audio<Empty>>
public typealias VSource = Source<Video<Empty>>
public typealias PSource = Source<Picture<Empty>>

/// ------------------------------------------------------------------------ ///
/// MARK: <span>
/// The `<span>` element doesn't mean anything on its own, but can be
/// useful when used together with the global attributes, e.g., `class`,
/// `lang`, or `dir`. It represents its children.
public struct Span<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "span" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <strong>
/// The `<strong>` element represents strong importance, seriousness, or
/// urgency for its contents.
public struct Strong<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "strong" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <style>
/// The `<style>` element allows authors to embed style information in
/// their documents.
public struct Style<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "style" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }

  public init(_ c: String) where Content == Raw {
    attributes = []; content = Raw(c)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <sub>
/// The `<sub>` element represents a subscript.
public struct Sub<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "sub" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <summary>
/// The first `<summary>` child element of a `<details>` element represents
/// a summary, caption, or legend for the rest of the contents of the parent
/// `<details>` element, if any.
public struct Summary<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "summary" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <sup>
/// The `<sup>` element represents a superscript.
public struct Sup<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "sup" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <svg>
/// The `<svg>` element represents scalable vector graphics.
public struct Svg<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "svg" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }

  public init(_ c: String) where Content == Raw {
    attributes = []; content = Raw(c)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <table>
/// The `<table>` element represents data with more than one dimension,
/// in the form of a table.
public struct Table<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "table" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Table {
  /// Tr<Th>, Tr<Td> ...
  init<A: ChildOfThead, B: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody, I: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody, I: ChildOfTbody, J: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

public extension Table {
  /// Thead, Tbody ...
  init<A: VariationOfThead, B: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

public extension Table {
  /// Thead, Tbody ..., Tfoot
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: VariationOfThead, B: VariationOfTbody, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

public extension Table {
  /// Caption, Thead, Tbody ...
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

public extension Table {
  /// Caption, Thead, Tbody ..., Tfoot
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

public extension Table {
  /// Colgroup, Thead, Tbody ...
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

public extension Table {
  /// Colgroup, Thead, Tbody ..., Tfoot
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: VariationOfColgroup, B: VariationOfThead, C: VariationOfTbody, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

public extension Table {
  /// Caption, Colgroup, Thead, Tbody ...
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

public extension Table {
  /// Caption, Colgroup, Thead, Tbody ..., Tfoot
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: VariationOfCaption, B: VariationOfColgroup, C: VariationOfThead, D: VariationOfTbody, E: VariationOfTbody, F: VariationOfTbody, G: VariationOfTbody, H: VariationOfTbody, I: VariationOfTbody, J: VariationOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <tbody>
/// The `<tbody>` element represents a block of rows that consist of a body
/// of data for the parent `<table>` element, if the `<tbody>` element has
/// a parent and it is a `<table>`.
public struct Tbody<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "tbody" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Tbody {
  /// Tr<Td> ...
  init(_ c: Content) where Content: ChildOfTbody { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfTbody { attributes = []; content = c() }
  init<A: ChildOfTbody, B: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody, I: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfTbody, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody, I: ChildOfTbody, J: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

public extension Tbody {
  /// Tr<Th>, Tr<Td> ...
  init<A: ChildOfThead, B: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody, I: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfTbody, C: ChildOfTbody, D: ChildOfTbody, E: ChildOfTbody, F: ChildOfTbody, G: ChildOfTbody, H: ChildOfTbody, I: ChildOfTbody, J: ChildOfTbody>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <td>
/// The `<td>` element represents a data cell in a table.
public struct Td<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "td" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <template>
/// The `<template>` element represents a template.
public struct Template<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "template" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <textarea>
/// The `<textarea>` element represents a multiline plain text edit control
/// for the element's raw value. The contents of the control represent the
/// control's default value.
public struct Textarea<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "textarea" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }

  public init(_ c: String) where Content == Raw {
    attributes = []; content = Raw(c)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <tfoot>
/// The `<tfoot>` element represents the block of rows that consist of the
/// column summaries (footers) for the parent `<table>` element, if the
/// `<tfoot>` element has a parent and it is a `<table>`.
public struct Tfoot<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "tfoot" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Tfoot {
  init(_ c: Content) where Content: ChildOfTfoot { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfTfoot { attributes = []; content = c() }
  init<A: ChildOfTfoot, B: ChildOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot, E: ChildOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot, E: ChildOfTfoot, F: ChildOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot, E: ChildOfTfoot, F: ChildOfTfoot, G: ChildOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot, E: ChildOfTfoot, F: ChildOfTfoot, G: ChildOfTfoot, H: ChildOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot, E: ChildOfTfoot, F: ChildOfTfoot, G: ChildOfTfoot, H: ChildOfTfoot, I: ChildOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfTfoot, B: ChildOfTfoot, C: ChildOfTfoot, D: ChildOfTfoot, E: ChildOfTfoot, F: ChildOfTfoot, G: ChildOfTfoot, H: ChildOfTfoot, I: ChildOfTfoot, J: ChildOfTfoot>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <th>
/// The `<th>` element represents a header cell in a table.
public struct Th<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "th" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <thead>
/// The `<thead>` element represents the block of rows that consist of the
/// column labels (headers) for the parent `<table>` element, if the `<thead>`
/// element has a parent and it is a `<table>`.
public struct Thead<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "thead" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Thead {
  init(_ c: Content) where Content: ChildOfThead { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfThead { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfThead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead, E: ChildOfThead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead, E: ChildOfThead, F: ChildOfThead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead, E: ChildOfThead, F: ChildOfThead, G: ChildOfThead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead, E: ChildOfThead, F: ChildOfThead, G: ChildOfThead, H: ChildOfThead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead, E: ChildOfThead, F: ChildOfThead, G: ChildOfThead, H: ChildOfThead, I: ChildOfThead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfThead, B: ChildOfThead, C: ChildOfThead, D: ChildOfThead, E: ChildOfThead, F: ChildOfThead, G: ChildOfThead, H: ChildOfThead, I: ChildOfThead, J: ChildOfThead>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <time>
/// The `<time>` element represents its contents, along with a machine-readable
/// form of those contents in the datetime attribute. The kind of content is
/// limited to various kinds of dates, times, time-zone offsets, and durations,
/// as described below.
public struct Time<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "time" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <title>
/// The `<title>` element represents the document's title or name. Authors
/// should use titles that identify their documents even when they are used
/// out of context, for example in a user's history or bookmarks, or in
/// search results. The document's title is often different from its first
/// heading, since the first heading does not have to stand alone when taken
/// out of context.
public struct Title<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "title" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }

  public init(_ c: String) where Content == Text {
    attributes = []; content = Text(c)
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <tr>
/// The `<tr>` element represents a row of cells in a table.
// extension Tag where Kind == Tag.Tr<Tag.Th> {
//   public init(@HtmlNodeBuilder _ c: () -> Content) where Content: VariationOfTh {
//     attributes = []; content = c()
//   }
// }

// extension Tag where Kind == Tag.Tr<Tag.Td> {
//   public init(@HtmlNodeBuilder _ c: () -> Content) where Content: VariationOfTd {
//     attributes = []; content = c()
//   }
// }
public struct Tr<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "tr" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}


public extension Tr {
  init(_ c: Content) where Content: VariationOfTh { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: VariationOfTh { attributes = []; content = c() }
  init<A: VariationOfTh, B: VariationOfTh>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh, E: VariationOfTh>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh, E: VariationOfTh, F: VariationOfTh>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh, E: VariationOfTh, F: VariationOfTh, G: VariationOfTh>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh, E: VariationOfTh, F: VariationOfTh, G: VariationOfTh, H: VariationOfTh>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh, E: VariationOfTh, F: VariationOfTh, G: VariationOfTh, H: VariationOfTh, I: VariationOfTh>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: VariationOfTh, B: VariationOfTh, C: VariationOfTh, D: VariationOfTh, E: VariationOfTh, F: VariationOfTh, G: VariationOfTh, H: VariationOfTh, I: VariationOfTh, J: VariationOfTh>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

public extension Tr {
  init(_ c: Content) where Content: VariationOfTd { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: VariationOfTd { attributes = []; content = c() }
  init<A: VariationOfTd, B: VariationOfTd>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd, E: VariationOfTd>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd, E: VariationOfTd, F: VariationOfTd>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd, E: VariationOfTd, F: VariationOfTd, G: VariationOfTd>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd, E: VariationOfTd, F: VariationOfTd, G: VariationOfTd, H: VariationOfTd>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd, E: VariationOfTd, F: VariationOfTd, G: VariationOfTd, H: VariationOfTd, I: VariationOfTd>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: VariationOfTd, B: VariationOfTd, C: VariationOfTd, D: VariationOfTd, E: VariationOfTd, F: VariationOfTd, G: VariationOfTd, H: VariationOfTd, I: VariationOfTd, J: VariationOfTd>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <track>
/// The `<track>` element allows authors to specify explicit external text
/// resources for media elements. It does not represent anything on its own.
public struct Track: Tag, SelfClosingTag {
  public typealias Content = Empty
  public static var tag: StaticString { return "track" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content = Empty()) {
    attributes = a; content = c
  }
}

extension Track {
  public init(src: String) {
    attributes = [("src", src)]; self.content = Empty()
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <u>
/// The `<u> element represents a span of text with an unarticulated, though
/// explicitly rendered, non-textual annotation, such as labeling the text
/// as being a proper name in Chinese text (a Chinese proper name mark),
/// or labeling the text as being misspelt.
public struct U<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "u" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <ul>
/// The `<ul>` element represents a list of items, where the order of the
/// items is not important — that is, where changing the order would not
/// materially change the meaning of the document.
public struct Ul<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "ul" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Ul {
  init(_ c: Content) where Content: ChildOfUl { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfUl { attributes = []; content = c() }
  init<A: ChildOfUl, B: ChildOfUl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl, E: ChildOfUl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl, E: ChildOfUl, F: ChildOfUl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl, E: ChildOfUl, F: ChildOfUl, G: ChildOfUl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl, E: ChildOfUl, F: ChildOfUl, G: ChildOfUl, H: ChildOfUl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl, E: ChildOfUl, F: ChildOfUl, G: ChildOfUl, H: ChildOfUl, I: ChildOfUl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfUl, B: ChildOfUl, C: ChildOfUl, D: ChildOfUl, E: ChildOfUl, F: ChildOfUl, G: ChildOfUl, H: ChildOfUl, I: ChildOfUl, J: ChildOfUl>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <var>
/// The `<var>` element represents a variable. This could be an actual
/// variable in a mathematical expression or programming context, an
/// identifier representing a constant, a symbol identifying a physical
/// quantity, a function parameter, or just be a term used as a placeholder
/// in prose.
public struct Var<Content: HtmlNode>: Tag, NonSelfClosingTag {
  public static var tag: StaticString { return "var" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

/// ------------------------------------------------------------------------ ///
/// MARK: <video>
/// A `<video>` element is used for playing videos or movies, and audio
/// files with captions.
public struct Video<Content: HtmlNode>: Tag {
  public static var tag: StaticString { return "video" }
  public let attributes: Array<Attribute>
  public let content: Content
  public init(_ a: Array<Attribute>, _ c: Content) {
    attributes = a; content = c
  }
}

public extension Video {
  init(_ c: Content) where Content: ChildOfVideo { attributes = []; content = c }
  init(@HtmlNodeBuilder _ c: () -> Content) where Content: ChildOfVideo { attributes = []; content = c() }
  init<A: ChildOfVideo, B: ChildOfVideo>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B)> { attributes = []; content = c() }
  init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C)> { attributes = []; content = c() }
  init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D)> { attributes = []; content = c() }
  init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo, E: ChildOfVideo>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E)> { attributes = []; content = c() }
  init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo, E: ChildOfVideo, F: ChildOfVideo>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F)> { attributes = []; content = c() }
  init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo, E: ChildOfVideo, F: ChildOfVideo, G: ChildOfVideo>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G)> { attributes = []; content = c() }
  init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo, E: ChildOfVideo, F: ChildOfVideo, G: ChildOfVideo, H: ChildOfVideo>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H)> { attributes = []; content = c() }
  init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo, E: ChildOfVideo, F: ChildOfVideo, G: ChildOfVideo, H: ChildOfVideo, I: ChildOfVideo>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I)> { attributes = []; content = c() }
  init<A: ChildOfVideo, B: ChildOfVideo, C: ChildOfVideo, D: ChildOfVideo, E: ChildOfVideo, F: ChildOfVideo, G: ChildOfVideo, H: ChildOfVideo, I: ChildOfVideo, J: ChildOfVideo>(@HtmlNodeBuilder _ c: () -> Content) where Content == Tuple<(A, B, C, D, E, F, G, H, I, J)> { attributes = []; content = c() }
}