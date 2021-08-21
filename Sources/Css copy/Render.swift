extension Stylesheet {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    switch mode {
    case .release(.inline), .debug(.inline):
      content.forEach {
        $0.render(mode, into: &target)
        // target.write(" ")
      }

    case .release(.pretty), .debug(.pretty):
      content.forEach {
        $0.render(mode, into: &target)
        // target.write("\n")
      }
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
    case .release(.inline), .debug(.inline):
      target.write("/* ")
      target.write(content)
      target.write(" */")

    case let .release(.pretty(indentBy)), let .debug(.pretty(indentBy)):
      target.write(indentBy.indentation)
      target.write("/* ")
      target.write(content)
      target.write(" */\n")
    }
  }
}

extension Import {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    switch mode {
    case .release(.inline), .debug(.inline):
      target.write("@import ")
      target.write(String(describing: rule))
      target.write(";")
    case let .release(.pretty(indentBy)), let .debug(.pretty(indentBy)):
      target.write(indentBy.indentation)
      target.write("@import ")
      target.write(String(describing: rule))
      target.write(";\n")
    }
  }
}

extension Media {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    switch mode {
    case .release(.inline), .debug(.inline):
      target.write("@media ")
      target.write(String(describing: rule))
      target.write(" {")
      content.forEach { $0.render(mode, into: &target) }
      target.write("} ")
    case let .release(.pretty(indentBy)), let .debug(.pretty(indentBy)):
      target.write(indentBy.indentation)
      target.write("@media ")
      target.write(String(describing: rule))
      target.write(" {\n")
      content.forEach { $0.render(mode.indented(), into: &target) }
      target.write(indentBy.indentation)
      target.write("}\n")
    }
  }
}

extension Selector {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    switch mode {
    case .release(.inline), .debug(.inline):
      target.write(String(describing: select))
      target.write(" {")
      content.forEach { $0.render(mode, into: &target) }
      target.write("} ")
    case let .release(.pretty(indentBy)), let .debug(.pretty(indentBy)):
      target.write(indentBy.indentation)
      target.write(String(describing: select))
      target.write(" {\n")
      content.forEach { $0.render(mode.indented(), into: &target) }
      target.write(indentBy.indentation)
      target.write("}\n")
    }
  }
}

extension Property {
  public func render<Target: TextOutputStream>(
    _ mode: RenderMode,
    into target: inout Target
  ) {
    var propertiesItr = declarations().makeIterator()
    switch mode {
    case .release(.inline), .debug(.inline):
      while let (key, value) = propertiesItr.next() {
        target.write(key)
        target.write(":")
        target.write(value)
        target.write(";")
      }
    case let .release(.pretty(indentBy)), let .debug(.pretty(indentBy)):
      while let (key, value) = propertiesItr.next() {
        target.write(indentBy.indentation)
        target.write(key)
        target.write(": ")
        target.write(value)
        target.write(";\n")
      }
    }
  }
}