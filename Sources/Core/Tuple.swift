public struct Tuple<Children> {
  public let children: Mirror.Children
  
  public init(_ children: Children) {
    self.children = Mirror(reflecting: children).children
  }
}