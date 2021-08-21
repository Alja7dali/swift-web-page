public protocol Renderable {
  func render<T: TextOutputStream>(_ mode: RenderMode, into target: inout T)
}

public extension Renderable {
  func render(_ mode: RenderMode) -> String {
    var output: String = ""
    render(mode, into: &output)
    return output.last == "\n" ? String(output.dropLast()) : output
  }

  func render(indentBy: Optional<Indentation> = .none) -> String {
    if case let .some(indentation) = indentBy {
      return render(.release(.pretty(indentation)))
    } else {
      return render(.release(.inline))
    }
  }

  func debugRender(indentBy: Indentation = .spaces(2)) -> String {
    return render(.debug(.pretty(indentBy)))
  }
}