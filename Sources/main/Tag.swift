/// The following code were used to generate `structs` at './Sources/HTML/Elements.swift`
/*
let allTags = [
  "A",
  "Abbr",
  "Address",
  "Area",
  "Article",
  "Aside",
  "Audio",
  "B",
  "Base",
  "Bdi",
  "Bdo",
  "Blockquote",
  "Body",
  "Br",
  "Button",
  "Canvas",
  "Caption",
  "Cite",
  "Code",
  "Col",
  "Colgroup",
  "Dd",
  "Del",
  "Details",
  "Dfn",
  "Div",
  "Dl",
  "Dt",
  "Em",
  "Embed",
  "Fieldset",
  "Figcaption",
  "Figure",
  "Footer",
  "Form",
  "H1",
  "H2",
  "H3",
  "H4",
  "H5",
  "H6",
  "Head",
  "Header",
  "Hr",
  "Html",
  "I",
  "Iframe",
  "Img",
  "Input",
  "Ins",
  "Kbd",
  "Label",
  "Legend",
  "Li",
  "Link",
  "Main",
  "Mark",
  "Map",
  "Meta",
  "Meter",
  "Nav",
  "Object",
  "Ol",
  "Optgroup",
  "Option",
  "Output",
  "P",
  "Param",
  "Picture",
  "Pre",
  "Progress",
  "Q",
  "Rp",
  "Rt",
  "Ruby",
  "S",
  "Samp",
  "Script",
  "Section",
  "Select",
  "Small",
  "Source",
  "Span",
  "Strong",
  "Style",
  "Sub",
  "Summary",
  "Sup",
  "Svg",
  "Table",
  "Tbody",
  "Td",
  "Template",
  "Textarea",
  "Tfoot",
  "Time",
  "Title",
  "Track",
  "Th",
  "Thead",
  "Tr",
  "U",
  "Ul",
  "Var",
  "Video",
  "Wbr"
]

func fileContent(_ tag: String) -> String {
  return """
  public typealias \(tag.lowercased()) = \(tag)

  public struct \(tag): ContainsChildOfAny, ChildOfAny {
    public let tag: StaticString = \"\(tag.lowercased())\"

    public let attributes: Array<Attribute>

    public let content: HtmlNode

    public init(
      _ attributes: Array<Attribute>,
      _ content: HtmlNode
    ) {
      self.attributes = attributes
      self.content = content
    }
  }
  """
}

func createFile(_ tag: String) {
  let path = "/Users/halllo/Desktop/swift-page/Sources/Html/HtmlNodeTypes/Elements.swift"
  let fp = fopen(path, "w")
  let content = Array<UInt8>(fileContent(tag).utf8).map(Int8.init)
  fwrite(content, 1, content.count, fp)
  fclose(fp)
}

allTags.forEach(createFile)
*/