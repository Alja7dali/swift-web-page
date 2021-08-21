extension Array: Renderable where Element: Renderable {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    forEach { $0.render(mode, into: &target) }
  }
}

/// ------------------------------------------------------------------------ ///

extension Either: Renderable where Left: Renderable, Right: Renderable {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    switch self {
    case .left(let node): node.render(mode, into: &target)
    case .right(let node): node.render(mode, into: &target)
    }
  }
}

/// ------------------------------------------------------------------------ ///

extension Empty: Renderable {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {}
}

/// ------------------------------------------------------------------------ ///

extension Optional: Renderable where Wrapped: Renderable {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    if case .some(let node) = self {
      node.render(mode, into: &target)
    }
  }
}

/// ------------------------------------------------------------------------ ///

extension Tuple: Renderable {  
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    children.forEach { ($0.1 as? Renderable)?.render(mode, into: &target) }
  }
}