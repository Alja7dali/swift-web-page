extension Document {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    switch mode {
    case .release(.inline):
      target.write("<!DOCTYPE \(type?.escaped() ?? "html")>")

    case .debug(.inline):
      target.write("<!DOCTYPE \(type ?? "html")>")

    case .release(.pretty):
      target.write("<!DOCTYPE \(type?.escaped() ?? "html")>\n")

    case .debug(.pretty):
      target.write("<!DOCTYPE \(type ?? "html")>\n")
    }
    content.render(mode, into: &target)
  }
}

extension Tag {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    let tag = String(describing: Self.tag)
    let attrs = self.attributes
    let content = self.content
    
    switch mode {
    case .release(.inline), .debug(.inline):
      target.write("<")
      target.write(tag)
      renderAttr(attrs, for: tag, into: &target, with: mode)
      target.write(">")
      guard !(Self.self is SelfClosingTag.Type) else { return }
      content.render(mode, into: &target)
      target.write("</")
      target.write(tag)
      target.write(">")

    case let .release(.pretty(indentBy)), let .debug(.pretty(indentBy)):
      target.write(indentBy.indentation)
      target.write("<")
      target.write(tag)
      renderAttr(attrs, for: tag, into: &target, with: mode)
      target.write(">")
      target.write("\n")
      guard !(Self.self is SelfClosingTag.Type) else { return }
      content.render(mode.indented(), into: &target)
      target.write(indentBy.indentation)
      target.write("</")
      target.write(tag)
      target.write(">")
      target.write("\n")
    }
  }
}

private func renderAttr<Target: TextOutputStream>(
  _ attrs: [(String, Optional<String>)],
  for tag: String,
  into target: inout Target,
  with mode: RenderMode
) {
  switch mode {
  case .release(.inline), .debug(.inline):
    return attrs.forEach { key, value in
      guard let value = value else { return }
      target.write(" ")
      target.write(key)
      if !value.isEmpty {
        target.write("=\"")
        target.write(mode.isRelease ? value.escaped(.quot) : value)
        target.write("\"")
      }
    }
  case let .release(.pretty(indentBy)), let .debug(.pretty(indentBy)):
    var renderedAttr = false
    let keyIndentation = indentBy.indentation + String(repeating: " ", count: tag.count + 2)
    return attrs.forEach { key, value in
      guard let value = value else { return }
      if renderedAttr {
        target.write("\n")
        target.write(keyIndentation)
      } else {
        renderedAttr = true
        target.write(" ")
      }
      target.write(key)
      guard !value.isEmpty else { return }
      target.write("=\"")
      switch key {
      case "class":
        let finalValue = value
          .split(separator: " ")
          .joined(separator: "\n\(keyIndentation + String(repeating: " ", count: key.count + 2))")
        target.write((mode.isRelease ? finalValue.escaped(.quot) : finalValue))
      case "style":
        let finalValue = value
          .split(separator: ";")
          .joined(separator: ";\n\(keyIndentation + String(repeating: " ", count: key.count + 2))")
        target.write((mode.isRelease ? finalValue.escaped(.quot) : finalValue))
      default:
        target.write((mode.isRelease ? value.escaped(.quot) : value))
      }
      target.write("\"")
    }
  }
}

extension Text {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    switch mode {
    case .release(.inline):
      target.write(content.escaped())

    case .debug(.inline):
      target.write(content)

    case let .release(.pretty(indentBy)):
      target.write(indentBy.indentation)
      target.write(content.escaped())
      target.write("\n")

    case let .debug(.pretty(indentBy)):
      target.write(indentBy.indentation)
      target.write(content)
      target.write("\n")
    }
  }
}

extension Raw {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    switch mode {
    case .release(.inline), .debug(.inline):
      target.write(content)

    case let .release(.pretty(indentBy)), let .debug(.pretty(indentBy)):
      target.write(indentBy.indentation)
      target.write(content)
      target.write("\n")
    }
  }
}

extension Comment {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    switch mode {
    case .release(.inline):
      target.write("<!--")
      target.write(content.escaped())
      target.write("-->")

    case .debug(.inline):
      target.write("<!--")
      target.write(content)
      target.write("-->")

    case let .release(.pretty(indentBy)):
      target.write(indentBy.indentation)
      target.write("<!--")
      target.write(content.escaped())
      target.write("-->")
      target.write("\n")

    case let .debug(.pretty(indentBy)):
      target.write(indentBy.indentation)
      target.write("<!--")
      target.write(content)
      target.write("-->")
      target.write("\n")
    }
  }
}