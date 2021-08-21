#if swift(<5.4)
@_functionBuilder
public enum CssNodeBuilder {}
#else
@resultBuilder
public enum CssNodeBuilder {}
#endif

public extension CssNodeBuilder {
  static func buildBlock() -> Empty {
    return .init()
  }

  static func buildBlock<N: CssNode>(_ node: N) -> N {
    return node
  }

  static func buildOptional<N: CssNode>(_ node: Optional<N>) -> Optional<N> {
    return node
  }

  static func buildEither<T: CssNode, F: CssNode>(first node: T) -> Either<T, F> {
    return .left(node)
  }

  static func buildEither<T: CssNode, F: CssNode>(second node: F) -> Either<T, F> {
    return .right(node)
  }

  // static func buildArray(_ nodes: Array<CssNode>) -> Array<CssNode> {
  //   return nodes
  // }

  static func buildBlock(_ node: CssNode, _ moreNodes: CssNode ...) -> Array<CssNode> {
    return [node] + moreNodes
  }

  static func buildLimitedAvailability<N: CssNode>(_ node: N) -> N {
    return node
  }

  static func buildBlock(_ node: PropertyNode, _ moreNodes: PropertyNode ...) -> Array<PropertyNode> {
    return [node] + moreNodes
  }
}