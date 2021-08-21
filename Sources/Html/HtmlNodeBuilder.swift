#if swift(<5.4)
@_functionBuilder
public enum HtmlNodeBuilder {}
#else
@resultBuilder
public enum HtmlNodeBuilder {}
#endif

public extension HtmlNodeBuilder {
  static func buildOptional<N: HtmlNode>(_ node: Optional<N>) -> Optional<N> {
    return node
  }

  static func buildEither<T: HtmlNode, F: HtmlNode>(first node: T) -> Either<T, F> {
    return .left(node)
  }

  static func buildEither<T: HtmlNode, F: HtmlNode>(second node: F) -> Either<T, F> {
    return .right(node)
  }

  static func buildArray<N: HtmlNode>(_ nodes: Array<N>) -> Array<N> {
    return nodes
  }

  static func buildBlock() -> Empty {
    return Empty()
  }

  static func buildBlock<N: HtmlNode>(_ node: N) -> N {
    return node
  }

  static func buildBlock<N: HtmlNode>(_ node: N, _ moreNodes: N ...) -> Array<N> {
    return [node] + moreNodes
  }

  static func buildLimitedAvailability<N: HtmlNode>(_ node: N) -> N {
    return node
  }
}

/// Everything below this line is generated, DO NOT EDIT MANUALLY..
public extension HtmlNodeBuilder {
  @_disfavoredOverload
  static func buildBlock<A: HtmlNode, B: HtmlNode>(
    _ a: A, _ b: B
  ) -> Tuple<(A, B)> {
    return Tuple<(A, B)>( (a, b) )
  }
  @_disfavoredOverload
  static func buildBlock<A: HtmlNode, B: HtmlNode, C: HtmlNode>(
    _ a: A, _ b: B, _ c: C
  ) -> Tuple<(A, B, C)> {
    return Tuple<(A, B, C)>( (a, b, c) )
  }
  @_disfavoredOverload
  static func buildBlock<A: HtmlNode, B: HtmlNode, C: HtmlNode, D: HtmlNode>(
    _ a: A, _ b: B, _ c: C, _ d: D
  ) -> Tuple<(A, B, C, D)> {
    return Tuple<(A, B, C, D)>( (a, b, c, d) )
  }
  @_disfavoredOverload
  static func buildBlock<A: HtmlNode, B: HtmlNode, C: HtmlNode, D: HtmlNode, E: HtmlNode>(
    _ a: A, _ b: B, _ c: C, _ d: D, _ e: E
  ) -> Tuple<(A, B, C, D, E)> {
    return Tuple<(A, B, C, D, E)>( (a, b, c, d, e) )
  }
  @_disfavoredOverload
  static func buildBlock<A: HtmlNode, B: HtmlNode, C: HtmlNode, D: HtmlNode, E: HtmlNode, F: HtmlNode>(
    _ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F
  ) -> Tuple<(A, B, C, D, E, F)> {
    return Tuple<(A, B, C, D, E, F)>( (a, b, c, d, e, f) )
  }
  @_disfavoredOverload
  static func buildBlock<A: HtmlNode, B: HtmlNode, C: HtmlNode, D: HtmlNode, E: HtmlNode, F: HtmlNode, G: HtmlNode>(
    _ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G
  ) -> Tuple<(A, B, C, D, E, F, G)> {
    return Tuple<(A, B, C, D, E, F, G)>( (a, b, c, d, e, f, g) )
  }
  @_disfavoredOverload
  static func buildBlock<A: HtmlNode, B: HtmlNode, C: HtmlNode, D: HtmlNode, E: HtmlNode, F: HtmlNode, G: HtmlNode, H: HtmlNode>(
    _ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H
  ) -> Tuple<(A, B, C, D, E, F, G, H)> {
    return Tuple<(A, B, C, D, E, F, G, H)>( (a, b, c, d, e, f, g, h) )
  }
  @_disfavoredOverload
  static func buildBlock<A: HtmlNode, B: HtmlNode, C: HtmlNode, D: HtmlNode, E: HtmlNode, F: HtmlNode, G: HtmlNode, H: HtmlNode, I: HtmlNode>(
    _ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I
  ) -> Tuple<(A, B, C, D, E, F, G, H, I)> {
    return Tuple<(A, B, C, D, E, F, G, H, I)>( (a, b, c, d, e, f, g, h, i) )
  }
  @_disfavoredOverload
  static func buildBlock<A: HtmlNode, B: HtmlNode, C: HtmlNode, D: HtmlNode, E: HtmlNode, F: HtmlNode, G: HtmlNode, H: HtmlNode, I: HtmlNode, J: HtmlNode>(
    _ a: A, _ b: B, _ c: C, _ d: D, _ e: E, _ f: F, _ g: G, _ h: H, _ i: I, _ j: J
  ) -> Tuple<(A, B, C, D, E, F, G, H, I, J)> {
    return Tuple<(A, B, C, D, E, F, G, H, I, J)>( (a, b, c, d, e, f, g, h, i, j) )
  }
}
