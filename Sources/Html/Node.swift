public protocol HtmlNode: Renderable {}

extension Array: HtmlNode where Element: HtmlNode {}
extension Either: HtmlNode where Left: HtmlNode, Right: HtmlNode {}
extension Empty: HtmlNode {}
extension Optional: HtmlNode where Wrapped: HtmlNode {}
extension Tuple: HtmlNode {}

public struct Document<Content: HtmlNode>: HtmlNode {
  public let type: Optional<String>

  public let content: Content

  public init<A>(type t: String, @HtmlNodeBuilder _ c: () -> Content) where Content == Html<A> {
    type = t; content = c()
  }

  public init<A>(@HtmlNodeBuilder _ c: () -> Content) where Content == Html<A> {
    type = .none; content = c()
  }
}

public protocol Tag: HtmlNode {
  associatedtype Content: HtmlNode
  static var tag: StaticString { get }
  var attributes: Array<Attribute> { get }
  var content: Content { get }
  init(_ a: Array<Attribute>, _ c: Content)
}

public struct Text: HtmlNode {
  public let content: String
  public init(_ content: String) {
    self.content = content
  }
}

// extension Text: ExpressibleByStringLiteral {
//   public init(stringLiteral content: String) {
//     self.content = content
//   }
// }


public struct Raw: HtmlNode {
  public let content: String
  public init(_ content: String) {
    self.content = content
  }
}

// extension Raw: ExpressibleByStringLiteral {
//   public init(stringLiteral content: String) {
//     self.content = content
//   }
// }

public struct Comment: HtmlNode {
  public let content: String
  public init(_ content: String) {
    self.content = content
  }
}
