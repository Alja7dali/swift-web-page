internal enum IfKeyExists {
  case
    appendAsNewPair,
    replaceExistedValue,
    appendExistedValue
}

extension Tag {
  /// FIXME: this function will perform in linear time O(n)
  ///        making Element<Tag>.attributes: [String: String]
  ///        will miss the order of attributes when rendering.
  ///        Find a better implementation of this, and make it O(1)
  internal func push(
    _ key: String,
    _ value: Optional<String>,
    ifExists: IfKeyExists = .appendAsNewPair
  ) -> Self {
    switch ifExists {
    case .appendAsNewPair:
      return .init(attributes + [(key, value)], content)
    case .replaceExistedValue:
      var updatedAttributes = Array<Attribute>()
      updatedAttributes.reserveCapacity(attributes.count + 1)
      for (k, v) in attributes {
        if k != key {
          updatedAttributes.append((k, v))
        }
      }
      updatedAttributes.append((key, value))
      return .init(updatedAttributes, content)
    case .appendExistedValue:
      var updatedAttributes = Array<Attribute>()
      updatedAttributes.reserveCapacity(attributes.count + 1)
      var values = Array<String>()
      for (k, v) in attributes {
        if k != key {
          updatedAttributes.append((k, v))
        } else {
          values.append(v ?? "")
        }
      }
      values.append(value ?? "")
      updatedAttributes.append((key, values.joined(separator: " ")))
      return .init(updatedAttributes, content)
    }
  }
}