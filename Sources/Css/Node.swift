public protocol CssNode: Renderable {}

extension Array: CssNode where Element: CssNode {}
extension Either: CssNode where Left: CssNode, Right: CssNode {}
extension Empty: CssNode {}
extension Optional: CssNode where Wrapped: CssNode {}
extension Tuple: CssNode {}

public struct Stylesheet: Renderable {
  public let content: Array<CssNode>
  public init(@CssNodeBuilder _ c: () -> Array<CssNode>) {
    content = c()
  }

  public init<A: CssNode>(_ c: A) {
    content = Array(arrayLiteral: c)
  }
}

/// TODO: implement the following at-rules
///       - @charset
///       - @font-face
///       - @keyframes
///       - @...

public struct Import: CssNode {
  public let rule: StaticString
  public init(_ r: StaticString) {
    rule = r
  }
}

public struct Media: CssNode {
  public let rule: StaticString
  public let content: Array<Selector>
  public init(_ r: StaticString, @CssNodeBuilder _ c: () -> Array<Selector>) {
    rule = r; content = c()
  }
}

public struct Selector: CssNode {
  public let select: StaticString
  public let content: Array<PropertyNode>
  public init(_ s: StaticString, @CssNodeBuilder _ c: () -> Array<PropertyNode>) {
    select = s; content = c()
  }
}

public typealias Declaration = (String, String)
public typealias Declarations = Array<Declaration>

public protocol PropertyNode: Renderable {}

public protocol CssPropertyKey: CSSValue {
  static var key: StaticString { get }
  static var browsers: Array<StaticString> { get }
}

extension CssPropertyKey {
  public static var browsers: Array<StaticString> { return [] }
}

public protocol Property: PropertyNode, CssPropertyKey, ExpressibleByStringLiteral {
  var rawValue: String { get }
  var declarations: () -> Declarations { get }
  init(_ rawValue: String, _ declarations: @escaping () -> Declarations)
}

extension Property {
  @_disfavoredOverload
  public init(stringLiteral value: String) {
    self.init(
      value,
      makeDeclarations(
        forValue: value,
        withKey: Self.key,
        onBrowsers: Self.browsers
      )
    )
  }
}

public struct Raw: CssNode {
  public let content: String
  public init(_ content: String) {
    self.content = content
  }
}

extension Raw: PropertyNode {}

public struct Comment: CssNode {
  public let content: String
  public init(_ content: String) {
    self.content = content
  }
}

extension Comment: PropertyNode {}