import struct Foundation.Date
import struct Foundation.Locale
import struct Foundation.TimeZone
import class  Foundation.DateFormatter
import struct Foundation.URLComponents
import struct Foundation.URLQueryItem

public typealias Attribute = (key: String, value: Optional<String>)

extension Tag {
  /// All HTML elements may have the `accesskey` content attribute set. The
  /// `accesskey` attribute's value is used by the user agent as a guide for
  /// creating a keyboard shortcut that activates or focuses the element.
  ///
  /// - Parameter value: Used by the user agent as a guide for creating a
  ///                    keyboard shortcut that activates or focuses the
  ///                    element.
  public func accesskey(_ value: Character) -> Self {
    return push("accesskey", String(value))
  }

  /// When specified on HTML elements, the `class` attribute must have a value
  /// that is a set of space-separated tokens representing the various classes
  /// that the element belongs to.
  ///
  /// - Parameter value: A set of space-separated tokens.
  public func `class`(_ value: String) -> Self {
    return push("class", value, ifExists: .appendExistedValue)
  }
}

public enum Contenteditable: String, ExpressibleByBooleanLiteral {
  case `true` = ""
  case `false`
  case inherit

  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

extension Tag {
  /// Make a document region editable.
  ///
  /// - Parameter value: Should a document region be editable.
  public func contenteditable(_ value: Contenteditable) -> Self {
    return push("contenteditable", value == .inherit ? nil : value.rawValue)
  }

  /// Adds a `data`-prefixed attribute to the element.
  ///
  /// - Parameters:
  ///   - name: The attribute suffix.
  ///   - value: The value.
  public func data(_ name: StaticString, _ value: String) -> Self {
    return push("data-\(name)", value)
  }
}

public enum Direction: String {
  case ltr
  case rtl
  case auto
}

extension Tag {
  public func dir(_ value: Direction) -> Self {
    return push("dir", value.rawValue)
  }
}

public enum Draggable: String, ExpressibleByBooleanLiteral {
  /// The element is draggable.
  case `true`

  /// The element is not draggable.
  case `false`

  /// The default draggable behavior of the user agent.
  case auto

  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

extension Tag {
  /// Whether or not an element is draggable.
  ///
  /// - Parameter value: Whether or not an element is draggable.
  public func draggable(_ value: Draggable) -> Self {
    return push("draggable", value == .auto ? nil : value.rawValue)
  }

  /// Hide the element.
  ///
  /// - Parameter value: Hide the element.
  public func hidden(_ value: Bool) -> Self {
    return push("hidden", value ? "" : nil)
  }

  /// When specified on HTML elements, the `id` attribute value must be unique
  /// amongst all the IDs in the element's tree and must contain at least one
  /// character. The value must not contain any space characters.
  ///
  /// - Parameter value: A unique identifier.
  public func id(_ value: String) -> Self {
    return push("id", value)
  }
}

public enum Language: String {
  case aa
  case ab
  case ae
  case af
  case ak
  case am
  case an
  case ar
  case `as`
  case av
  case ay
  case az
  case ba
  case be
  case bg
  case bh
  case bi
  case bm
  case bn
  case bo
  case br
  case bs
  case ca
  case ce
  case ch
  case co
  case cr
  case cs
  case cu
  case cv
  case cy
  case da
  case de
  case dv
  case dz
  case ee
  case el
  case en
  case eo
  case es
  case et
  case eu
  case fa
  case ff
  case fi
  case fj
  case fo
  case fr
  case fy
  case ga
  case gd
  case gl
  case gn
  case gu
  case gv
  case ha
  case he
  case hi
  case ho
  case hr
  case ht
  case hu
  case hy
  case hz
  case ia
  case id
  case ie
  case ig
  case ii
  case ik
  case `in`
  case io
  case `is`
  case it
  case iu
  case ja
  case ji
  case jv
  case ka
  case kg
  case ki
  case kj
  case kk
  case kl
  case km
  case kn
  case ko
  case kr
  case ks
  case ku
  case kv
  case kw
  case ky
  case la
  case lb
  case lg
  case li
  case ln
  case lo
  case lt
  case lu
  case lv
  case mg
  case mh
  case mi
  case mk
  case ml
  case mn
  case mr
  case ms
  case mt
  case my
  case na
  case nb
  case nd
  case ne
  case nl
  case nn
  case no
  case nr
  case nv
  case ny
  case oc
  case oj
  case om
  case or
  case os
  case pa
  case pi
  case pl
  case ps
  case pt
  case qu
  case rm
  case rn
  case ro
  case ru
  case rw
  case sa
  case sc
  case sd
  case se
  case sg
  case si
  case sk
  case sl
  case sm
  case sn
  case so
  case sq
  case sr
  case ss
  case st
  case su
  case sv
  case sw
  case ta
  case te
  case tg
  case th
  case ti
  case tk
  case tl
  case tn
  case to
  case tr
  case ts
  case tt
  case tw
  case ty
  case ug
  case uk
  case ur
  case uz
  case ve
  case vi
  case vo
  case wa
  case wo
  case xh
  case yi
  case yo
  case za
  case zu
  case zh
  case zhHans = "zh-Hans"
  case zhHant = "zh-Hant"
  case unknown = ""
}

extension Tag {
  /// The `lang` attribute specifies the primary language for the element's
  /// contents and for any of the element's attributes that contain text.
  ///
  /// - Parameter value: A valid BCP 47 language tag, or the empty string.
  ///                    Setting the attribute to the empty string indicates
  ///                    that the primary language is unknown.
  public func lang(_ value: Language) -> Self {
    return push("lang", value.rawValue)
  }

  public func spellcheck(_ value: Bool) -> Self {
    return push("spellcheck", String(value))
  }

  /// This is a style attribute as defined by the _CSS Style Attributes_
  /// specification.
  ///
  /// - Parameter value: A CSS style.
  public func style(safe value: StaticString) -> Self {
    return style(unsafe: String(describing: value))
  }

  /// This is a style attribute as defined by the _CSS Style Attributes_
  /// specification.
  ///
  /// - Parameter value: A CSS style.
  public func style(unsafe value: String) -> Self {
    return push("style", String(describing: value), ifExists: .appendExistedValue)
  }

  /// The `tabindex` content attribute allows authors to indicate that an
  /// element is supposed to be focusable, whether it is supposed to be
  /// reachable using sequential focus navigation and, optionally, to suggest
  /// where in the sequential focus navigation order the element appears.
  ///
  /// - Parameter value: The sequential focus navigation order the element
  ///                    appears.
  public func tabindex(_ value: Int) -> Self {
    return push("tabindex", String(value))
  }

  /// The `title` attribute represents advisory information for the element,
  /// such as would be appropriate for a tooltip.
  ///
  /// - Parameter value: Advisory information.
  public func title(_ value: String) -> Self {
    return push("title", value)
  }
}

public enum Translate: String, ExpressibleByBooleanLiteral {
  case yes
  case no

  public init(booleanLiteral value: Bool) {
    self = value ? .yes : .no
  }
}

extension Tag {
  /// Whether or not an element's attribute values and the values of its text
  /// node children are to be translated when the page is localized.
  ///
  /// - Parameter value: Whether or not an element's attribute values and the
  ///                    values of its text node children are to be translated
  ///                    when the page is localized.
  public func translate(_ value: Translate) -> Self {
    return push("translate", value.rawValue)
  }
}

extension A {
  /// Email address of a hyperlink.
  ///
  /// - Parameters:
  ///   - address: One or more email addresses for the "to" field.
  ///   - cc: Zero or more email addresses for the "cc" field.
  ///   - bcc: Zero or more email addresses for the "bcc" field.
  ///   - subject: An optional email subject.
  ///   - body: An optional email body.
  /// - Returns: A "mailto" URL for hyperlinks.
  public func mailto(
    _ addresses: String...,
    cc: [String] = [],
    bcc: [String] = [],
    subject: String = "",
    body: String = ""
  ) -> Self {
    return mailto(addresses, cc: cc, bcc: bcc, subject: subject, body: body)
  }

  /// Email address of a hyperlink.
  ///
  /// - Parameters:
  ///   - address: One or more email addresses for the "to" field.
  ///   - cc: Zero or more email addresses for the "cc" field.
  ///   - bcc: Zero or more email addresses for the "bcc" field.
  ///   - subject: An optional email subject.
  ///   - body: An optional email body.
  /// - Returns: A "mailto" URL for hyperlinks.
  public func mailto(
    _ addresses: [String],
    cc: [String] = [],
    bcc: [String] = [],
    subject: String = "",
    body: String = ""
  ) -> Self {
    var urlComponents = URLComponents()
    urlComponents.scheme = "mailto"
    urlComponents.path = addresses.joined(separator: ",")
    let queryItems = [
      cc.isEmpty ? nil : URLQueryItem(name: "cc", value: cc.joined(separator: ",")),
      bcc.isEmpty ? nil : URLQueryItem(name: "bcc", value: bcc.joined(separator: ",")),
      subject.isEmpty ? nil : URLQueryItem(name: "subject", value: subject),
      body.isEmpty ? nil : URLQueryItem(name: "body", value: body)
      ]
      .compactMap { $0 }
    urlComponents.queryItems = queryItems.isEmpty ? nil : queryItems
    return href(urlComponents.string ?? "")
  }
}

/// The kind of shape to be created in an image map.
public enum AreaShape: String {
  case circle
  //  case `default`
  case poly
  case rect = ""
}

extension Area {
  /// The kind of shape to be created in an image map.
  ///
  /// - Parameter value: The kind of shape to be created in an image map.
  public func shape(_ value: AreaShape) -> Self {
    return push("shape", value == .rect ? nil : value.rawValue)
  }
}

/// Type of button.
public enum ButtonType: String {
  /// Does nothing.
  case button

  /// Resets the form.
  case reset

  /// Submits the form.
  case submit
}

extension Button {
  /// Type of button.
  ///
  /// - Parameter value: Type of button.
  public func type(_ value: ButtonType) -> Self {
    return push("type", value.rawValue)
  }
}

extension Details {
  /// Whether the details are visible.
  ///
  /// - Parameter value: Whether the details are visible.
  public func open(_ value: Bool) -> Self {
    return push("open", value ? "" : nil)
  }
}

/// HTTP method to use for form submission.
public enum FormMethod: String {
  /// Submitting the form is intended to close the dialog box in which the
  /// form finds itself, if any, and otherwise not submit.
  case dialog = "dialog"

  /// The HTTP GET method.
  case get = ""

  /// The HTTP POST method.
  case post = "post"
}

public struct Enctype: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static let applicationXWwwFormUrlencoded = Enctype(rawValue: "application/x-www-form-urlencoded")
  public static let multipartFormData = Enctype(rawValue: "multipart/form-data")
  public static let textPlain = Enctype(rawValue: "text/plain")
}

extension Form {
  /// URL to use for form submission.
  ///
  /// - Parameter value: URL to use for form submission.
  public func action(_ value: String) -> Self {
    return push("action", value)
  }

  /// The type of form encoding.
  ///
  /// - Parameter value: Enctype to use for form encoding.
  public func enctype(_ value: Enctype) -> Self {
    return push("enctype", value.rawValue)
  }

  /// HTTP method to use for form submission.
  ///
  /// - Parameter value: HTTP method to use for form submission.
  public func method(_ value: FormMethod) -> Self {
    let rawValue = value.rawValue
    return push("method", rawValue.isEmpty ? nil : rawValue)
  }

  /// Bypass form control validation for form submission.
  ///
  /// - Parameter value: Bypass form control validation for form submission.
  public func novalidate(_ value: Bool) -> Self {
    return push("novalidate", value ? "" : nil)
  }
}

public enum IframeSandbox: String {
  /// Re-enable forms.
  case allowForms = "allow-forms"

  /// Re-enable the pointer lock API.
  case allowPointerLock = "allow-pointer-lock"

  /// Re-enable popups.
  case allowPopups = "allow-popups"

  /// Re-enable the presentation API.
  case allowPresentation = "allow-presentation"

  /// Causes the content to be treated as being from its real origin instead of
  /// forcing it into a unique origin.
  case allowSameOrigin = "allow-same-origin"

  /// Re-enable scripts.
  case allowScripts = "allow-scripts"

  /// Allows the content to navigate its top-level browsing context.
  case allowTopNavigation = "allow-top-navigation"
}

extension Iframe {
  /// Enables a set of extra restrictions on any content hosted by the `<iframe>`.
  ///
  /// - Parameter value: Sandbox options.
  public func sandbox(_ value: [IframeSandbox]) -> Self {
    return push("sandbox", value.map { $0.rawValue }.joined(separator: " "))
  }

  /// Enables a set of extra restrictions on any content hosted by the `<iframe>`.
  ///
  /// - Parameter value: Whether or not to sandbox the `<iframe>`.
  public func sandbox(_ value: Bool) -> Self {
    return push("sandbox", value ? "" : nil)
  }

  /// A document to render in the `iframe`.
  ///
  /// - Parameter value: A document to render in the `iframe`.
  public func srcdoc<N: HtmlNode>(
    mode: RenderMode = .default,
    _ value: N
  ) -> Self {
    return push("srcdoc", value.render(mode))
  }

  // public func srcdoc<N: HtmlNode>(
  //   _ value: N
  // ) -> Self {
  //   return push("srcdoc", value.render(.default))
  // }
}

public enum InputType: String {
  case button
  case checkbox
  case color
  case date
  case datetimeLocal = "datetime-local"
  case email
  case file
  case hidden
  case image
  case month
  case number
  case password
  case radio
  case range
  case reset
  case search
  case submit
  case tel
  case text
  case time
  case url
  case week
}

extension Input {
  /// Whether the command or control is checked.
  ///
  /// - Parameter value: Whether the command or control is checked.
  public func checked(_ value: Bool) -> Self {
    return push("checked", value ? "" : nil)
  }

  /// Pattern to be matched by the form control's value.
  ///
  /// - Parameter value: Pattern to be matched by the form control's value.
  public func pattern(_ value: String) -> Self {
    return push("pattern", value)
  }

  /// Granularity to be matched by the form control's value.
  ///
  /// - Parameter value: Granularity to be matched by the form control's value.
  public func step(_ value: Int) -> Self {
    return push("step", String(value))
  }

  public func type(_ value: InputType) -> Self {
    return push("type", value.rawValue)
  }
}

extension Meta {
  /// Value of the `<meta>` element.
  ///
  /// - Parameter value: Value of the element.
  public func content(_ value: String) -> Self {
    return push("content", value)
  }
}

public enum ListType: String {
  /// Decimal numbers: `1.`, `2.`, `3.`...`3999.`, `4000.`, `4001.`
  case decimal = "1"

  /// Lowercase Latin alphabet: `a.`, `b.`, `c.`...`ewu.`, `ewv.`, `eww.`
  case lowerAlpha = "a"

  /// Uppercase Latin alphabet: `A.`, `B.`, `C.`...`EWU.`, `EWV.`, `EWW.`
  case upperAlpha = "A"

  /// Lowercase Roman numerals: `1.`, `2.`, `3.`...`mmmcmxcix.`, `i̅v̅.`, `i̅v̅i.`
  case lowerRoman = "i"

  /// Uppercase Roman numerals: `I.`, `II.`, `III.`...`MMMCMXCIX.`, `I̅V̅.`, `I̅V̅I.`
  case upperRoman = "I"
}

extension Ol {
  /// Number the list backwards.
  ///
  /// - Parameter value: Number the list backwards.
  public func reversed(_ value: Bool) -> Self {
    return push("reversed", value ? "" : nil)
  }

  /// Ordinal value of the first item.
  ///
  /// - Parameter value: Ordinal value of the first item.
  public func start(_ value: Int) -> Self {
    return push("start", String(value))
  }

  /// Kind of list marker.
  ///
  /// - Parameter value: Kind of list marker.
  public func type(_ value: ListType) -> Self {
    return push("type", value.rawValue)
  }
}

extension Option {
  /// Whether the option is selected by default.
  ///
  /// - Parameter value: Whether the option is selected by default.
  public func selected(_ value: Bool) -> Self {
    return push("selected", value ? "" : nil)
  }
}

extension Script {
  /// Execute script in parallel.
  ///
  /// - Parameter value: Execute script in parallel.
  public func async(_ value: Bool) -> Self {
    return push("async", value ? "" : nil)
  }

  /// Defer script execution.
  ///
  /// - Parameter value: Defer script execution.
  public func `defer`(_ value: Bool) -> Self {
    return push("defer", value ? "" : nil)
  }

  /// Cryptographic nonce used in Content Security Policy checks.
  ///
  /// - Parameter value: Cryptographic nonce used in Content Security Policy
  ///                    checks.
  public func nonce(_ value: String) -> Self {
    return push("nonce", value)
  }
}

public protocol CanHaveMediaQueryList {}

extension Audio: CanHaveMediaQueryList {}
extension Video: CanHaveMediaQueryList {}
extension Picture: CanHaveMediaQueryList {}

public protocol HasMediaQueryList {}

extension Source: HasMediaQueryList where Parent: CanHaveMediaQueryList {}

extension Tag where Self: HasMediaQueryList {
  /// Applicable media.
  ///
  /// - Parameter value: A media query list.
  public func media(_ value: String) -> Self {
    return push("media", value)
  }
}

public protocol IsPicture {}
extension Picture: IsPicture {}

extension Source where Parent: IsPicture {
  /// Images to use in different situations (e.g., high-resolution displays,
  /// small monitors, etc).
  ///
  /// - Parameter value: Images to use in different situations (e.g.,
  ///                    high-resolution displays, small monitors, etc).
  public func srcset(_ value: String) -> Self {
    return push("srcset", value)
  }
}

public enum TextareaWrap: String {
  /// Indicates that the text in the `<textarea>` is to have newlines added by
  /// the user agent so that the text is wrapped when it is submitted.
  ///
  /// If the element's `wrap` attribute is in the `hard` state, the `cols`
  /// attribute must be specified.
  case hard

  /// Indicates that the text in the `<textarea>` is not to be wrapped when it
  /// is submitted (though it can still be wrapped in the rendering).
  case soft
}

extension Textarea {
  /// Maximum number of characters per line.
  ///
  /// - Parameter value: Maximum number of characters per line.
  public func cols(_ value: Int) -> Self {
    return push("cols", String(value))
  }

  /// Number of lines to show.
  ///
  /// - Parameter value: Number of lines to show.
  public func rows(_ value: Int) -> Self {
    return push("rows", String(value))
  }

  /// How the value of the form control is to be wrapped for form submission.
  ///
  /// - Parameter value: How the value of the form control is to be wrapped for
  ///                    form submission.
  public func wrap(_ value: TextareaWrap) -> Self {
    return push("wrap", value.rawValue)
  }
}

/// Specifies which cells the header cell applies to.
public enum ThScope: String {
  /// The **auto** state makes the header cell apply to a set of cells selected
  /// based on context.
  case auto = ""

  /// The **column** state means the header cell applies to some of the
  /// subsequent cells in the same column(s).
  case col

  /// The **col group** state means the header cell applies to all the remaining
  /// cells in the column group. A `<th>` element's `scope` attribute must not
  /// be in the column group state if the element is not anchored in a column
  /// group.
  case colgroup

  /// The **row** state means the header cell applies to some of the subsequent
  /// cells in the same row(s).
  case row

  /// The **row group** state means the header cell applies to all the remaining
  /// cells in the row group. A `<th>` element's `scope` attribute must not be
  /// in the row group state if the element is not anchored in a row group.
  case rowgroup
}

extension Th {
  /// Alternative label to use for the header cell when referencing the cell in
  /// other contexts.
  ///
  /// - Parameter value: Alternative label to use for the header cell when
  ///                    referencing the cell in other contexts.
  public func abbr(_ value: String) -> Self {
    return push("abbr", value)
  }

  /// Specifies which cells the header cell applies to.
  ///
  /// - Parameter value: Specifies which cells the header cell applies to.
  public func scope(_ value: ThScope) -> Self {
    return push("scope", value.rawValue)
  }
}

/// Kinds of text tracks for `<track>` elements.
public enum TrackKind: String {
  /// Transcription or translation of the dialog, sound effects, relevant
  /// musical cues, and other relevant audio information, suitable for when
  /// sound is unavailable or not clearly audible (e.g., because it is muted,
  /// drowned-out by ambient noise, or because the user is deaf). Overlaid on
  /// the video; labeled as appropriate for the hard-of-hearing.
  case captions

  /// Chapter titles, intended to be used for navigating the media resource.
  /// Displayed as an interactive (potentially nested) list in the user agent's
  /// interface.
  case chapters

  /// Textual descriptions of the video component of the media resource,
  /// intended for audio synthesis when the visual component is obscured,
  /// unavailable, or not usable (e.g., because the user is interacting with
  /// the application without a screen while driving, or because the user is
  /// blind). Synthesized as audio
  case descriptions

  /// Tracks intended for use from script. Not displayed by the user agent.
  case metadata

  /// Transcription or translation of the dialog, suitable for when the sound
  /// is available but not understood (e.g., because the user does not
  /// understand the language of the media resource's audio track). Overlaid
  /// on the video.
  case subtitles
}

extension Track {
  public func `default`(_ value: Bool) -> Self {
    return push("default", value ? "" : nil)
  }

  /// The type of text track.
  ///
  /// - Parameter value: The type of text track.
  public func kind(_ value: TrackKind) -> Self {
    return push("kind", value.rawValue)
  }

  /// User-visible label for a `<track>` element.
  ///
  /// - Parameter value: User-visible label.
  public func label(_ value: String) -> Self {
    return push("label", value)
  }

  /// Language of the text track.
  ///
  /// - Parameter value: Language of the text track.
  public func srclang(_ value: Language) -> Self {
    return push("srclang", value.rawValue)
  }
}

extension Video {
  public func poster(_ value: String) -> Self {
    return push("poster", value)
  }
}

/// Conforming elements can have an `alt` attribute. Includes `<area>`, `<img>`
/// and `<input>` elements.
public protocol HasAlt {}

extension Area: HasAlt {}
extension Img: HasAlt {}
extension Input: HasAlt {}

extension Tag where Self: HasAlt {
  /// Replacement text for use when images are not available. For `<area>`,
  /// `<img>`, and `<input>` elements.
  ///
  /// - Parameter value: Replacement text for use when images are not available.
  public func alt(_ value: String) -> Self {
    return push("alt", value)
  }
}

/// Conforming elements can have an `autofocus` attribute. Includes `<button>`,
/// `<input>`, `<select>`, and `<textarea>` elements.
public protocol HasAutofocus {}

extension Button: HasAutofocus {}
extension Input: HasAutofocus {}
extension Select: HasAutofocus {}
extension Textarea: HasAutofocus {}

extension Tag where Self: HasAutofocus {
  /// The `autofocus` content attribute allows the author to indicate that a
  /// control is to be focused as soon as the page is loaded or as soon as the
  /// `dialog` within which it finds itself is shown, allowing the user to just
  /// start typing without having to manually focus the main control.
  ///
  /// - Parameter value: Automatically focus the form control when the page is
  ///                    loaded.
  public func autofocus(_ value: Bool) -> Self {
    return push("autofocus", value ? "" : nil)
  }
}

/// Conforming elements can have an `autoplay` attribute. Includes `<audio>`
/// and `<video>` elements.
public protocol HasAutoplay {}

extension Audio: HasAutoplay {}
extension Video: HasAutoplay {}

extension Tag where Self: HasAutoplay {
  /// Hint that the media resource can be started automatically when the page
  /// is loaded.
  ///
  /// - Parameter value: Hint that the media resource can be started
  ///                    automatically when the page is loaded.
  public func autoplay(_ value: Bool) -> Self {
    return push("autoplay", value ? "" : nil)
  }
}

/// Conforming elements can have a `charset` attribute. Includes `<meta>`
/// and `<script>` elements.
public protocol HasCharset {}

extension Meta: HasCharset {}
extension Script: HasCharset {}

extension Tag where Self: HasCharset {
  /// Character encoding declaration.
  ///
  /// - Parameter value: A character encoding declaration.
  public func charset(_ value: MediaType.Charset) -> Self {
    return push("charset", value.rawValue)
  }
}

/// Conforming elements can have a `cite` attribute. Includes `<blockquote>`,
/// `<del>`, `<ins>`, and `<q>` elements.
public protocol HasCite {}

extension Blockquote: HasCite {}
extension Del: HasCite {}
extension Ins: HasCite {}
extension Q: HasCite {}

extension Tag where Self: HasCite {
  /// Link to the source of the quotation.
  ///
  /// - Parameter value: Link to the source of the quotation or more information
  ///                    about the edit.
  public func cite(_ value: String) -> Self {
    return push("cite", value)
  }
}

/// Conforming elements can have a `colspan` attribute. Includes `<td>` and
/// `<th>` elements.
public protocol HasColspan {}

extension Td: HasColspan {}
extension Th: HasColspan {}

extension Tag where Self: HasColspan {
  /// Number of columns that the cell is to span.
  ///
  /// - Parameter value: Number of columns that the cell is to span.
  public func colspan(_ value: Int) -> Self {
    return push("colspan", String(value))
  }
}

/// Conforming elements can have a `controls` attribute. Includes `<audio>`
/// and `<video>` elements.
public protocol HasControls {}

extension Audio: HasControls {}
extension Video: HasControls {}

extension Tag where Self: HasControls {
  /// If present, it indicates that the author has not provided a scripted
  /// controller and would like the user agent to provide its own set of
  /// controls.
  ///
  /// - Parameter value: Show user agent controls.
  public func controls(_ value: Bool) -> Self {
    return push("controls", value ? "" : nil)
  }
}

/// Conforming elements can have a `crossorigin` attribute. Includes `<img>`
/// and `<script>` elements.
public protocol HasCrossorigin {}

extension Img: HasCrossorigin {}
extension Script: HasCrossorigin {}

public enum Crossorigin: String {
  /// Requests for the element will have their mode set to "`cors`" and
  /// their credentials mode set to "`same-origin`".
  case anonymous = ""

  /// Requests for the element will have their mode set to "`cors`" and
  /// their credentials mode set to "`include`".
  case useCredentials = "use-credentials"
}

extension Tag where Self: HasCrossorigin {
  /// How the element handles crossorigin requests.
  ///
  /// - Parameter value: How the element handles crossorigin requests.
  public func crossorigin(_ value: Crossorigin) -> Self {
    return push("crossorigin", value.rawValue)
  }
}

private let iso8601DateFormatter: DateFormatter = {
  let formatter = DateFormatter()
  formatter.locale = Locale(identifier: "en_US_POSIX")
  formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
  formatter.timeZone = TimeZone(identifier: "UTC")
  return formatter
}()

/// Conforming elements can have a `datetime` attribute. Includes `<del>`,
/// `<ins>`, and `<time>` elements.
public protocol HasDatetime {}

extension Del: HasDatetime {}
extension Ins: HasDatetime {}
extension Time: HasDatetime {}

extension Tag where Self: HasDatetime {
  public func datetime(_ value: Date) -> Self {
    return push("datetime", iso8601DateFormatter.string(from: value))
  }
}

/// Conforming elements can have a `disabled` attribute. Includes `<button>`,
/// `<fieldset>`, `<input>`, `<optgroup>`, `<option>`, `<select>`, and
/// `<textarea>` elements.
public protocol HasDisabled {}

extension Button: HasDisabled {}
extension Fieldset: HasDisabled {}
extension Input: HasDisabled {}
extension Optgroup: HasDisabled {}
extension Option: HasDisabled {}
extension Select: HasDisabled {}
extension Textarea: HasDisabled {}

extension Tag where Self: HasDisabled {
  /// Whether the form control is disabled.
  ///
  /// - Parameter value: Whether the form control is disabled.
  public func disabled(_ value: Bool) -> Self {
    return push("disabled", value ? "" : nil)
  }
}

/// Conforming elements can have a `for` attribute. Includes `<label>` and
/// `<output>` elements.
public protocol HasFor {}

extension Label: HasFor {}
extension Output: HasFor {}

extension Tag where Self: HasFor {
  /// Associate the label or output with form control.
  ///
  /// - Parameter value: The `id` of the form control
  public func `for`(_ value: String) -> Self {
    return push("for", value)
  }
}

/// Conforming elements can have a `form` attribute. Includes `<button>`,
/// `<fieldset>`, `<input>`, `<label>`, `<meter>`, `<object>`, `<output>`,
/// `<select>`, and `<textarea>` elements.
public protocol HasForm {}

extension Button: HasForm {}
extension Fieldset: HasForm {}
extension Input: HasForm {}
extension Label: HasForm {}
extension Meter: HasForm {}
extension Object: HasForm {}
extension Output: HasForm {}
extension Select: HasForm {}
extension Textarea: HasForm {}

extension Tag where Self: HasForm {
  /// Associates the control with a `<form>` element.
  ///
  /// - Parameter value: The associated `<form>` element's `id`.
  public func form(_ value: String) -> Self {
    return push("form", value)
  }
}

/// Conforming elements can have a `headers` attribute. Includes `<td>` and
/// `<th>` elements.
public protocol HasHeaders {}

extension Td: HasHeaders {}
extension Th: HasHeaders {}

extension Tag where Self: HasHeaders {
  /// The header cells for this cell.
  ///
  /// - Parameter value: The header cells for this cell.
  public func headers(_ value: String) -> Self {
    return push("headers", value)
  }
}

/// Conforming elements can have a `height` attribute. Includes `<canvas>`,
/// `<embed>`, `<iframe>`, `<img>`, `<input>`, `<object>`, `<svg>`, and
/// `<video>` elements.
public protocol HasHeight {}

extension Canvas: HasHeight {}
extension Embed: HasHeight {}
extension Iframe: HasHeight {}
extension Img: HasHeight {}
extension Input: HasHeight {}
extension Object: HasHeight {}
extension Svg: HasHeight {}
extension Video: HasHeight {}

extension Tag where Self: HasHeight {
  /// Vertical dimension.
  ///
  /// - Parameter value: Vertical dimension.
  public func height(_ value: Int) -> Self {
    return push("height", String(value))
  }
}

/// Conforming elements can have an `href` attribute. Includes `<a>`, `<area>`,
/// `<base>`, and `<link>` elements.
public protocol HasHref {}

extension A: HasHref {}
extension Area: HasHref {}
extension Base: HasHref {}
extension Link: HasHref {}

extension Tag where Self: HasHref {
  /// Address of a hyperlink.
  ///
  /// - Parameter value: Address of a hyperlink.
  public func href(_ value: String) -> Self {
    return push("href", value)
  }
}

/// Conforming elements can have a `loop` attribute. Includes `<audio>` and
/// `<video>` elements.
public protocol HasLoop {}

extension Audio: HasLoop {}
extension Video: HasLoop {}

extension Tag where Self: HasLoop {
  public func loop(_ value: Bool) -> Self {
    return push("loop", value ? "" : nil)
  }
}

/// Conforming elements can have a `max` attribute. Includes `<input>`,
/// `<meter>`, and `<progress>` elements.
public protocol HasMax {}

extension Input: HasMax {}
extension Meter: HasMax {}
extension Progress: HasMax {}

extension Tag where Self: HasMax {
  /// Maximum value.
  ///
  /// - Parameter value: Maximum value.
  public func max(_ value: Double) -> Self {
    return push("max", String(value))
  }

  // TODO: Truncate ".0" in single function above.
  /// Maximum value.
  ///
  /// - Parameter value: Maximum value.
  public func max(_ value: Int) -> Self {
    return push("max", String(value))
  }
}

/// Conforming elements can have a `maxlength` attribute. Includes `<input>`
/// and `<textarea>` elements.
public protocol HasMaxlength {}

extension Input: HasMaxlength {}
extension Textarea: HasMaxlength {}

extension Tag where Self: HasMaxlength {
  /// Maximum length of value.
  ///
  /// - Parameter value: Maximum length of value.
  public func maxlength(_ value: Int) -> Self {
    return push("maxlength", String(value))
  }
}

/// Conforming elements can have a `min` attribute. Includes `<input>`,
/// `<meter>`, and `<progress>` elements.
public protocol HasMin {}

extension Input: HasMin {}
extension Meter: HasMin {}
extension Progress: HasMin {}

extension Tag where Self: HasMin {
  /// Minimum value.
  ///
  /// - Parameter value: Minimum value.
  public func min(_ value: Double) -> Self {
    return push("min", String(value))
  }

  // TODO: Truncate ".0" in single function above.
  /// Minimum value.
  ///
  /// - Parameter value: Minimum value.
  public func min(_ value: Int) -> Self {
    return push("min", String(value))
  }
}

/// Conforming elements can have a `minlength` attribute. Includes `<input>`
/// and `<textarea>` elements.
public protocol HasMinlength {}

extension Input: HasMinlength {}
extension Textarea: HasMinlength {}

extension Tag where Self: HasMinlength {
  /// Minimum length of value.
  ///
  /// - Parameter value: Minimum length of value.
  public func minlength(_ value: Int) -> Self {
    return push("minlength", String(value))
  }
}

/// Conforming elements can have a `multiple` attribute. Includes `<input>`
/// and `<select>` elements.
public protocol HasMultiple {}

extension Input: HasMultiple {}
extension Select: HasMultiple {}

extension Tag where Self: HasMultiple {
  /// Whether to allow multiple values.
  ///
  /// - Parameter value: Whether to allow multiple values.
  public func multiple(_ value: Bool) -> Self {
    return push("multiple", value ? "" : nil)
  }
}

/// Conforming elements can have a `muted` attribute. Includes `<audio>`
/// and `<video>` elements.
public protocol HasMuted {}

extension Audio: HasMuted {}
extension Video: HasMuted {}

extension Tag where Self: HasMuted {
  /// Whether to mute the media resource by default.
  ///
  /// - Parameter value: Whether to mute the media resource by default.
  public func muted(_ value: Bool) -> Self {
    return push("muted", value ? "" : nil)
  }
}

public protocol HasName {}

extension Button: HasName {}
extension Fieldset: HasName {}
extension Form: HasName {}
extension Iframe: HasName {}
extension Input: HasName {}
extension Map: HasName {}
extension Object: HasName {}
extension Output: HasName {}
extension Select: HasName {}
extension Textarea: HasName {}

extension Tag where Self: HasName {
  /// Name of form control to use for form submission and in the form.elements API.
  ///
  /// - Parameter value: Name of form control.
  public func name(_ value: String) -> Self {
    return push("name", value)
  }
}

/// Conforming elements can have a `placeholder` attribute. Includes `<input>`
/// and `<textarea>` elements.
public protocol HasPlaceholder {}

extension Input: HasPlaceholder {}
extension Textarea: HasPlaceholder {}

extension Tag where Self: HasPlaceholder {
  /// User-visible label to be placed within the form control.
  ///
  /// - Parameter value: User-visible label to be placed within the form
  ///                    control.
  public func placeholder(_ value: String) -> Self {
    return push("placeholder", value)
  }
}

/// Conforming elements can have a `preload` attribute. Includes `<audio>` and
/// `<video>` elements.
public protocol HasPreload {}

extension Audio: HasPreload {}
extension Video: HasPreload {}

public enum Preload: String {
  /// Hints to the user agent that the user agent can put the user's needs
  /// first without risk to the server, up to and including optimistically
  /// downloading the entire resource.
  case auto = ""

  /// Hints to the user agent that the author does not expect the user to
  /// need the media resource, but that fetching the resource metadata
  /// (dimensions, track list, duration, etc), and maybe even the first
  /// few frames, is reasonable. If the user agent precisely fetches no
  /// more than the metadata, then the media element will end up with its
  /// readyState attribute set to `HAVE_METADATA`; typically though, some
  /// frames will be obtained as well and it will probably be `HAVE_CURRENT_DATA`
  /// or `HAVE_FUTURE_DATA`. When the media resource is playing, hints to the
  /// user agent that bandwidth is to be considered scarce, e.g., suggesting
  /// throttling the download so that the media data is obtained at the slowest
  /// possible rate that still maintains consistent playback.
  case metadata

  /// Hints to the user agent that either the author does not expect the
  /// user to need the media resource, or that the server wants to minimize
  /// unnecessary traffic. This state does not provide a hint regarding how
  /// aggressively to actually download the media resource if buffering starts
  /// anyway (e.g., once the user hits "play").
  case none
}

extension Tag where Self: HasPreload {
  /// Hints how much buffering the media resource will likely need.
  ///
  /// - Parameter value: Hints how much buffering the media resource will likely
  ///                    need.
  public func preload(_ value: Preload) -> Self {
    return push("preload", value.rawValue)
  }
}

/// Conforming elements can have a `readonly` attribute. Includes `<input>`
/// and `<textarea>` elements.
public protocol HasReadonly {}

extension Input: HasReadonly {}
extension Textarea: HasReadonly {}

extension Tag where Self: HasReadonly {
  /// Whether to allow the value to be edited by the user.
  ///
  /// - Parameter value: Whether to allow the value to be edited by the user.
  public func readonly(_ value: Bool) -> Self {
    return push("readonly", value ? "" : nil)
  }
}

/// Conforming elements can have a `rel` attribute. Includes `<a>`, `<area>`,
/// and `<link>` elements.
public protocol HasRel {}

extension A: HasRel {}
extension Area: HasRel {}
extension Link: HasRel {}

public struct Rel: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static var alternate: Rel { return Rel(rawValue: "alternate") }
  public static var author: Rel { return Rel(rawValue: "author") }
  public static var bookmark: Rel { return Rel(rawValue: "bookmark") }
  public static var help: Rel { return Rel(rawValue: "help") }
  public static var icon: Rel { return Rel(rawValue: "icon") }
  public static var license: Rel { return Rel(rawValue: "license") }
  public static var next: Rel { return Rel(rawValue: "next") }
  public static var nofollow: Rel { return Rel(rawValue: "nofollow") }
  public static var prev: Rel { return Rel(rawValue: "prev") }
  public static var search: Rel { return Rel(rawValue: "search") }
  public static var stylesheet: Rel { return Rel(rawValue: "stylesheet") }
  public static var tag: Rel { return Rel(rawValue: "tag") }
}

extension Tag where Self: HasRel {
  public func rel(_ value: Rel) -> Self {
    return push("rel", value.rawValue)
  }
}

/// Conforming elements can have a `required` attribute. Includes `<input>`,
/// `<select>` and `<textarea>` elements.
public protocol HasRequired {}

extension Input: HasRequired {}
extension Select: HasRequired {}
extension Textarea: HasRequired {}

extension Tag where Self: HasRequired {
  /// Whether the control is required for form submission.
  ///
  /// - Parameter value: Whether the control is required for form submission.
  public func required(_ value: Bool) -> Self {
    return push("required", value ? "" : nil)
  }
}

/// Conforming elements can have a `rowspan` attribute. Includes `<td>` and
/// `<th>` elements.
public protocol HasRowspan {}

extension Td: HasRowspan {}
extension Th: HasRowspan {}

extension Tag where Self: HasRowspan {
  /// /// Number of rows that the cell is to span.
  ///
  /// - Parameter value: Number of rows that the cell is to span.
  public func rowspan(_ value: Int) -> Self {
    return push("rowspan", String(value))
  }
}

/// Conforming elements can have a `span` attribute. Includes `<col>` and
/// `<colgroup>` elements.
public protocol HasSpan {}

extension Col: HasSpan {}
extension Colgroup: HasSpan {}

extension Tag where Self: HasSpan {
  public func span(_ value: Int) -> Self {
    return push("span", String(value))
  }
}

/// Conforming elements can have a `src` attribute. Includes `<audio>`,
/// `<embed>`, `<iframe>`, `<img>`, `<input>`, `<script>`, `<source>`,
/// `<track>`, and `<video>` elements.
public protocol HasSrc {}

extension Audio: HasSrc {}
extension Embed: HasSrc {}
extension Iframe: HasSrc {}
extension Img: HasSrc {}
extension Input: HasSrc {}
extension Script: HasSrc {}
extension Source: HasSrc {}
extension Track: HasSrc {}
extension Video: HasSrc {}

extension Tag where Self: HasSrc {
  /// Address of the resource.
  ///
  /// - Parameter value: Address of the resource.
  public func src(_ value: String) -> Self {
    return push("src", value)
  }
}

/// Conforming elements can have a `srcset` attribute. Includes `<img>` and
/// `<source>` elements.
public protocol HasSrcset {}

extension Img: HasSrcset {}
extension Source: HasSrcset {}

public enum Size: CustomStringConvertible {
  case w(Int)
  case x(Int)

  public var description: String {
    switch self {
    case let .w(n):
      return "\(n)w"
    case let .x(n):
      return "\(n)x"
    }
  }
}

extension Tag where Self: HasSrcset {
  /// Images to use in different situations (e.g., high-resolution displays,
  /// small monitors, etc).
  ///
  /// - Parameter value: Images to use in different situations (e.g.,
  ///                    high-resolution displays, small monitors, etc).
  public func srcset(_ value: [String: Size]) -> Self {
    return push("srcset", value.map { url, size in url + " " + size.description }.joined(separator: ", "))
  }
}

/// Conforming elements can have a `target` attribute. Includes `<a>`, 
/// <area>`, `<base>`, and `<form>` elements.
public protocol HasTarget {}

extension A: HasTarget {}
extension Area: HasTarget {}
extension Base: HasTarget {}
extension Form: HasTarget {}

/// Default browsing context for hyperlink navigation and form submission.
public struct Target: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static var blank: Target { return Target(rawValue: "_blank") }
  public static var `self`: Target { return Target(rawValue: "") }
  public static var parent: Target { return Target(rawValue: "_parent") }
  public static var top: Target { return Target(rawValue: "_top") }
}

extension Tag where Self: HasTarget {
  /// Default browsing context for hyperlink navigation and form submission.
  ///
  /// - Parameter value: Default browsing context for hyperlink navigation
  ///                    and form submission.
  public func target(_ value: Target) -> Self {
    return push("target", value == .self ? nil : value.rawValue)
  }
}

/// Conforming elements can have a media `type` attribute. Includes `<embed>`,
/// `<link>`, `<object>`, `<script>`, `<source>`, and `<style>` elements.
public protocol HasMediaType {}

extension A: HasMediaType {}
extension Embed: HasMediaType {}
extension Link: HasMediaType {}
extension Object: HasMediaType {}
extension Script: HasMediaType {}
extension Source: HasMediaType {}
extension Style: HasMediaType {}

extension Tag where Self: HasMediaType {
  /// Hint for the type of the referenced resource.
  ///
  /// - Parameter value: Hint for the type of the referenced resource.
  public func type(_ value: MediaType) -> Self {
    return push("type", value.description)
  }
}

/// Conforming elements can have a `Double`-based `value` attribute. Includes
/// `<input>`, `<meter>`, and `<progress>` elements.
public protocol HasDoubleValue {}

extension Input: HasDoubleValue {}
extension Meter: HasDoubleValue {}
extension Progress: HasDoubleValue {}

extension Tag where Self: HasDoubleValue {
  public func value(_ value: Double) -> Self {
    return push("value", String(value))
  }
}

/// Conforming elements can have an `Int`-based `value` attribute. Includes
/// `<input>` and `<li>` elements.
public protocol HasIntValue {}

extension Input: HasIntValue {}
extension Li: HasIntValue {}

extension Tag where Self: HasIntValue {
  /// The form control's value. (Or, for `<li>` elements, the ordinal value
  /// of the list item.)
  ///
  /// - Parameter value: The form control's value.
  public func value(_ value: Int) -> Self {
    return push("value", String(value))
  }
}

/// Conforming elements can have a `String`-based `value` attribute. Includes
/// `<button>`, `<input>`, and `<option>` elements.
public protocol HasStringValue {}

extension Button: HasStringValue {}
extension Input: HasStringValue {}
extension Option: HasStringValue {}

extension Tag where Self: HasStringValue {
  /// The form control's value.
  ///
  /// - Parameter value: The form control's value.
  public func value(_ value: String) -> Self {
    return push("value", value)
  }
}

/// Conforming elements can have a media `type` attribute. Includes `<canvas>`,
/// `<embed>`, `<iframe>`, `<img>`, `<input>`, `<object>`, `<svg>`, and `<video>`
/// elements.
public protocol HasWidth {}

extension Canvas: HasWidth {}
extension Embed: HasWidth {}
extension Iframe: HasWidth {}
extension Img: HasWidth {}
extension Input: HasWidth {}
extension Object: HasWidth {}
extension Svg: HasWidth {}
extension Video: HasWidth {}

extension Tag where Self: HasWidth {
  /// Horizontal dimension.
  ///
  /// - Parameter value: Vertical dimension.
  public func width(_ value: Int) -> Self {
    return push("width", String(value))
  }
}