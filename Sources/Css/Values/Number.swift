public protocol HasValueOfIntegerLiteral {}

public protocol HasValueOfInteger: HasValueOfIntegerLiteral {}

public protocol HasValueOfUnsignedInteger: HasValueOfIntegerLiteral {}


public protocol HasValueOfFloatLiteral {}

public protocol HasValueOfNumber: HasValueOfFloatLiteral, HasValueOfInteger {}

public protocol HasValueOfUnsignedNumber : HasValueOfFloatLiteral, HasValueOfUnsignedInteger {}


extension ZIndex: HasValueOfInteger {}

// extension Property where Self: HasValueOfInteger {
//   public init(_ value: Int) {
//     self.init(
//       value.description,
//       makeDeclarations(
//         forValue: value.description,
//         withKey: Self.key,
//         onBrowsers: Self.browsers
//       )
//     )
//   }
// }

extension FlexGrow: HasValueOfUnsignedInteger {}
extension FlexShrink: HasValueOfUnsignedInteger {}

extension Order: HasValueOfUnsignedInteger {}

extension FontWeight: HasValueOfUnsignedInteger {}

extension ColumnCount: HasValueOfUnsignedInteger {}

// extension Property where Self: HasValueOfUnsignedInteger {
//   public init(_ value: UInt) {
//     self.init(
//       value.description,
//       makeDeclarations(
//         forValue: value.description,
//         withKey: Self.key,
//         onBrowsers: Self.browsers
//       )
//     )
//   }
// }

extension Value: ExpressibleByIntegerLiteral where Kind: HasValueOfIntegerLiteral {
  public init(integerLiteral value: Int) {
    if Kind.self is HasValueOfUnsignedInteger.Type {
      rawValue = abs(value).description
    } else {
      rawValue = value.description
    }
  }
}




extension AnimationIterationCount: HasValueOfNumber {}

extension BorderImageSlice: HasValueOfNumber {}

extension BorderImageWidth: HasValueOfNumber {}

// extension Property where Self: HasValueOfNumber {
//   public init(_ value: Double) {
//     let val = prettyDescription(value)
//     self.init(
//       val,
//       makeDeclarations(
//         forValue: val,
//         withKey: Self.key,
//         onBrowsers: Self.browsers
//       )
//     )
//   }
// }

extension BorderImageOutset: HasValueOfUnsignedNumber {}

extension FontSizeAdjust: HasValueOfUnsignedNumber {}

extension LineHeight: HasValueOfUnsignedNumber {}

// extension Property where Self: HasValueOfUnsignedNumber {
//   public init(_ value: Double) {
//     let val = prettyDescription(abs(value))
//     self.init(
//       val,
//       makeDeclarations(
//         forValue: val,
//         withKey: Self.key,
//         onBrowsers: Self.browsers
//       )
//     )
//   }
// }

extension Value: ExpressibleByFloatLiteral where Kind: HasValueOfFloatLiteral {
  public init(floatLiteral value: Double) {
    if Kind.self is HasValueOfUnsignedNumber.Type {
      rawValue = prettyDescription(abs(value))
    } else {
      rawValue = prettyDescription(value)
    }
  }
}