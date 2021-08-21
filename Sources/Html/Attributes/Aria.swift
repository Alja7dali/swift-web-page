public enum AriaBoolean: String, ExpressibleByBooleanLiteral {
  case `false`
  case `true`
  case undefined

  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

public enum AriaToggled: String, ExpressibleByBooleanLiteral {
  case `false`
  case `true`
  case mixed
  case undefined

  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

public struct Role: RawRepresentable {
  public let rawValue: String

  public init(rawValue: String) {
    self.rawValue = rawValue
  }

  public static var alert: Role { return Role(rawValue: "alert") }
  public static var alertdialog: Role { return Role(rawValue: "alertdialog") }
  public static var application: Role { return Role(rawValue: "application") }
  public static var article: Role { return Role(rawValue: "article") }
  public static var banner: Role { return Role(rawValue: "banner") }
  public static var button: Role { return Role(rawValue: "button") }
  public static var cell: Role { return Role(rawValue: "cell") }
  public static var checkbox: Role { return Role(rawValue: "checkbox") }
  public static var columnheader: Role { return Role(rawValue: "columnheader") }
  public static var combobox: Role { return Role(rawValue: "combobox") }
  public static var complementary: Role { return Role(rawValue: "complementary") }
  public static var contentinfo: Role { return Role(rawValue: "contentinfo") }
  public static var definition: Role { return Role(rawValue: "definition") }
  public static var dialog: Role { return Role(rawValue: "dialog") }
  public static var directory: Role { return Role(rawValue: "directory") }
  public static var document: Role { return Role(rawValue: "document") }
  public static var feed: Role { return Role(rawValue: "feed") }
  public static var figure: Role { return Role(rawValue: "figure") }
  public static var form: Role { return Role(rawValue: "form") }
  public static var grid: Role { return Role(rawValue: "grid") }
  public static var gridcell: Role { return Role(rawValue: "gridcell") }
  public static var group: Role { return Role(rawValue: "group") }
  public static var heading: Role { return Role(rawValue: "heading") }
  public static var img: Role { return Role(rawValue: "img") }
  public static var link: Role { return Role(rawValue: "link") }
  public static var list: Role { return Role(rawValue: "list") }
  public static var listbox: Role { return Role(rawValue: "listbox") }
  public static var listitem: Role { return Role(rawValue: "listitem") }
  public static var log: Role { return Role(rawValue: "log") }
  public static var main: Role { return Role(rawValue: "main") }
  public static var marquee: Role { return Role(rawValue: "marquee") }
  public static var math: Role { return Role(rawValue: "math") }
  public static var menu: Role { return Role(rawValue: "menu") }
  public static var menubar: Role { return Role(rawValue: "menubar") }
  public static var menuitem: Role { return Role(rawValue: "menuitem") }
  public static var menuitemcheckbox: Role { return Role(rawValue: "menuitemcheckbox") }
  public static var menuitemradio: Role { return Role(rawValue: "menuitemradio") }
  public static var navigation: Role { return Role(rawValue: "navigation") }
  public static var none: Role { return Role(rawValue: "none") }
  public static var note: Role { return Role(rawValue: "note") }
  public static var option: Role { return Role(rawValue: "option") }
  public static var presentation: Role { return Role(rawValue: "presentation") }
  public static var progressbar: Role { return Role(rawValue: "progressbar") }
  public static var radio: Role { return Role(rawValue: "radio") }
  public static var radiogroup: Role { return Role(rawValue: "radiogroup") }
  public static var region: Role { return Role(rawValue: "region") }
  public static var row: Role { return Role(rawValue: "row") }
  public static var rowgroup: Role { return Role(rawValue: "rowgroup") }
  public static var rowheader: Role { return Role(rawValue: "rowheader") }
  public static var scrollbar: Role { return Role(rawValue: "scrollbar") }
  public static var search: Role { return Role(rawValue: "search") }
  public static var searchbox: Role { return Role(rawValue: "searchbox") }
  public static var separator: Role { return Role(rawValue: "separator") }
  public static var slider: Role { return Role(rawValue: "slider") }
  public static var spinbutton: Role { return Role(rawValue: "spinbutton") }
  public static var status: Role { return Role(rawValue: "status") }
  public static var `switch`: Role { return Role(rawValue: "switch") }
  public static var tab: Role { return Role(rawValue: "tab") }
  public static var table: Role { return Role(rawValue: "table") }
  public static var tablist: Role { return Role(rawValue: "tablist") }
  public static var tabpanel: Role { return Role(rawValue: "tabpanel") }
  public static var term: Role { return Role(rawValue: "term") }
  public static var textbox: Role { return Role(rawValue: "textbox") }
  public static var timer: Role { return Role(rawValue: "timer") }
  public static var toolbar: Role { return Role(rawValue: "toolbar") }
  public static var tooltip: Role { return Role(rawValue: "tooltip") }
  public static var tree: Role { return Role(rawValue: "tree") }
  public static var treegrid: Role { return Role(rawValue: "treegrid") }
  public static var treeitem: Role { return Role(rawValue: "treeitem") }
}

extension Tag {
  public func role(_ value: Role) -> Self {
    return push("role", value.rawValue)
  }

  public func ariaActivedescendant(_ value: String) -> Self {
    return push("aria-activedescendant", value)
  }

  public func ariaAtomic(_ value: Bool) -> Self {
    return push("aria-atomic", String(value))
  }
}

public enum AriaAutocomplete: String {
  case both
  case inline
  case list
  case none
}

extension Tag {
  public func ariaAutocomplete(_ value: AriaAutocomplete) -> Self {
    return push("aria-autocomplete", value.rawValue)
  }

  public func ariaBusy(_ value: Bool) -> Self {
    return push("aria-busy", String(value))
  }

  public func ariaChecked(_ value: AriaToggled) -> Self {
    return push("aria-checked", value.rawValue)
  }

  public func ariaColcount(_ value: Int) -> Self {
    return push("aria-colcount", String(value))
  }

  public func ariaColindex(_ value: Int) -> Self {
    return push("aria-colindex", String(value))
  }

  public func ariaColspan(_ value: Int) -> Self {
    return push("aria-colspan", String(value))
  }

  public func ariaControls(_ value: String) -> Self {
    return push("aria-controls", value)
  }
}

public enum AriaCurrent: String, ExpressibleByBooleanLiteral {
  case date
  case `false`
  case location
  case page
  case step
  case time
  case `true`

  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

extension Tag {
  public func ariaCurrent(_ value: AriaCurrent) -> Self {
    return push("aria-current", value.rawValue)
  }

  public func ariaDescribedby(_ value: String) -> Self {
    return push("aria-describedby", value)
  }

  public func ariaDetails(_ value: String) -> Self {
    return push("aria-details", value)
  }

  public func ariaDisabled(_ value: Bool) -> Self {
    return push("aria-disabled", String(value))
  }
}

public enum AriaDropeffect: String {
  case copy
  case execute
  case link
  case move
  case none
  case popup
}

extension Tag {
  public func ariaDropeffect(_ value: AriaDropeffect) -> Self {
    return push("aria-dropeffect", value.rawValue)
  }

  public func ariaErrormessage(_ value: String) -> Self {
    return push("aria-errormessage", value)
  }

  public func ariaExpanded(_ value: AriaBoolean) -> Self {
    return push("aria-expanded", value.rawValue)
  }

  public func ariaFlowto(_ value: String) -> Self {
    return push("aria-flowto", value)
  }

  public func ariaGrabbed(_ value: AriaBoolean) -> Self {
    return push("aria-grabbed", value.rawValue)
  }
}

public enum AriaHaspopup: String, ExpressibleByBooleanLiteral {
  case dialog
  case `false`
  case grid
  case menu
  case listbox
  case tree

  public init(booleanLiteral value: Bool) {
    self = value ? .menu : .false
  }
}

extension Tag {
  public func ariaHaspopup(_ value: AriaHaspopup) -> Self {
    return push("aria-haspopup", value.rawValue)
  }

  public func ariaHidden(_ value: AriaBoolean) -> Self {
    return push("aria-hidden", value.rawValue)
  }
}

public enum AriaInvalid: String, ExpressibleByBooleanLiteral {
  case `false`
  case grammar
  case spelling
  case `true`

  public init(booleanLiteral value: Bool) {
    self = value ? .true : .false
  }
}

extension Tag {
  public func ariaInvalid(_ value: AriaInvalid) -> Self {
    return push("aria-invalid", value.rawValue)
  }

  public func ariaKeyshortcuts(_ value: String) -> Self {
    return push("aria-keyshortcuts", value)
  }

  public func ariaLabel(_ value: String) -> Self {
    return push("aria-label", value)
  }

  public func ariaLabelledby(_ value: String) -> Self {
    return push("aria-labelledby", value)
  }

  public func ariaLevel(_ value: Int) -> Self {
    return push("aria-level", String(value))
  }
}

public enum AriaLive: String {
  case assertive
  case off
  case polite
}

extension Tag {
  public func ariaLive(_ value: AriaLive) -> Self {
    return push("aria-live", value.rawValue)
  }

  public func ariaModal(_ value: Bool) -> Self {
    return push("aria-modal", String(value))
  }

  public func ariaMultiline(_ value: Bool) -> Self {
    return push("aria-multiline", String(value))
  }

  public func ariaMultiselectable(_ value: Bool) -> Self {
    return push("aria-multiselectable", String(value))
  }
}

public enum AriaOrientation: String {
  case horizontal
  case undefined
  case vertical
}

extension Tag {
  public func ariaOrientation(_ value: AriaOrientation) -> Self {
    return push("aria-orientation", value.rawValue)
  }

  public func ariaOwns(_ value: String) -> Self {
    return push("aria-owns", value)
  }

  public func ariaPlaceholder(_ value: String) -> Self {
    return push("aria-placeholder", value)
  }

  public func ariaPosinset(_ value: Int) -> Self {
    return push("aria-posinset", String(value))
  }

  public func ariaPressed(_ value: AriaToggled) -> Self {
    return push("aria-pressed", value.rawValue)
  }

  public func ariaReadonly(_ value: Bool) -> Self {
    return push("aria-readonly", String(value))
  }
}

public enum AriaRelevant: String {
  case additions
  case all
  case removals
  case text
}

extension Tag {
  public func ariaRelevant(_ value: Array<AriaRelevant>) -> Self {
    return push("aria-relevant", value.map { $0.rawValue }.joined(separator: " "))
  }

  public func ariaRequired(_ value: Bool) -> Self {
    return push("aria-required", String(value))
  }

  public func ariaRoledescription(_ value: String) -> Self {
    return push("aria-roledescription", value)
  }

  public func ariaRowcount(_ value: Int) -> Self {
    return push("aria-rowcount", String(value))
  }

  public func ariaRowindex(_ value: Int) -> Self {
    return push("aria-rowindex", String(value))
  }

  public func ariaRowspan(_ value: Int) -> Self {
    return push("aria-rowspan", String(value))
  }

  public func ariaSelected(_ value: AriaBoolean) -> Self {
    return push("aria-selected", value.rawValue)
  }

  public func ariaSetsize(_ value: Int) -> Self {
    return push("aria-setsize", String(value))
  }
}

public enum AriaSort: String {
  case ascending
  case descending
  case none
  case other
}

extension Tag {
  public func ariaSort(_ value: AriaSort) -> Self {
    return push("aria-sort", value.rawValue)
  }

  public func ariaValuemax(_ value: Double) -> Self {
    return push("aria-valuemax", String(value))
  }

  public func ariaValuemin(_ value: Double) -> Self {
    return push("aria-valuemin", String(value))
  }

  public func ariaValuenow(_ value: Double) -> Self {
    return push("aria-valuenow", String(value))
  }

  public func ariaValuetext(_ value: String) -> Self {
    return push("aria-valuetext", value)
  }
}