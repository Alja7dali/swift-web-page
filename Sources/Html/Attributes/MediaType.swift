public enum MediaType: CustomStringConvertible {
  case application(Application)
  case audio(Audio)
  case font(Font)
  case example(String)
  case image(Image)
  case message(String)
  case model(String)
  case multipart(Multipart, boundary: String?)
  case text(Text, charset: Charset?)

  public static let gif = image(.gif)
  public static let javascript = application(.javascript)
  public static let jpeg = image(.jpeg)
  public static let json = application(.json)
  public static let html = text(.html, charset: .utf8)
  public static let mp3 = audio(.mpeg)
  public static let plain = text(.plain, charset: nil)
  public static let png = image(.png)

  public var application: Application? {
    guard case let .application(application) = self else { return nil }
    return application
  }

  public var isText: Bool {
    guard case .text = self else { return false }
    return true
  }

  public var description: String {
    switch self {
    case let .application(application):
      return "application/" + application.rawValue
    case let .audio(audio):
      return "audio/" + audio.rawValue
    case let .font(font):
      return "font/" + font.rawValue
    case let .example(example):
      return "example/" + example
    case let .image(image):
      return "image/" + image.rawValue
    case let .message(message):
      return "message/" + message
    case let .model(model):
      return "model/" + model
    case let .multipart(multipart, boundary):
      let boundaryString = boundary.map { "; boundary=" + $0 } ?? ""
      return "multipart/" + multipart.rawValue + boundaryString
    case let .text(text, charset):
      let charsetString = charset.map { "; charset=" + $0.rawValue } ?? ""
      return "text/" + text.rawValue + charsetString
    }
  }
}

extension MediaType {
  public struct Application: RawRepresentable {
    public let rawValue: String

    public init(rawValue: String) {
      self.rawValue = rawValue
    }

    public static let javascript: Application = "javascript"
    public static let json: Application = "json"
    public static let xml: Application = "xml"
    public static let xWwwFormUrlencoded: Application = "x-www-form-url-encoded"
  }

  public struct Audio: RawRepresentable {
    public let rawValue: String

    public init(rawValue: String) {
      self.rawValue = rawValue
    }

    public static let aiff: Audio = "aiff"
    public static let ogg: Audio = "ogg"
    public static let mpeg: Audio = "mpeg"
    public static let wav: Audio = "wav"
  }

  public struct Font: RawRepresentable {
    public let rawValue: String

    public init(rawValue: String) {
      self.rawValue = rawValue
    }

    public static let collection: Font = "collection"
    public static let otf: Font = "otf"
    public static let sfnt: Font = "sfnt"
    public static let ttf: Font = "ttf"
    public static let woff: Font = "woff"
    public static let woff2: Font = "woff2"
  }

  public struct Image: RawRepresentable {
    public let rawValue: String

    public init(rawValue: String) {
      self.rawValue = rawValue
    }

    public static let bmp: Image = "bmp"
    public static let jpeg: Image = "jpeg"
    public static let gif: Image = "gif"
    public static let png: Image = "png"
    public static let svg: Image = "svg+xml"
    public static let tiff: Image = "tiff"
  }

  public struct Multipart: RawRepresentable {
    public let rawValue: String

    public init(rawValue: String) {
      self.rawValue = rawValue
    }

    public static let alternative: Multipart = "alternative"
    public static let digest: Multipart = "digest"
    public static let mixed: Multipart = "mixed"
    public static let parallel: Multipart = "parallel"
    public static let formData: Multipart = "form-data"
  }

  public struct Text: RawRepresentable {
    public let rawValue: String

    public init(rawValue: String) {
      self.rawValue = rawValue
    }

    public static let css: Text = "css"
    public static let csv: Text = "csv"
    public static let html: Text = "html"
    public static let plain: Text = "plain"
  }

  public struct Video: RawRepresentable {
    public let rawValue: String

    public init(rawValue: String) {
      self.rawValue = rawValue
    }

    public static let mp4: Video = "mp4"
    public static let ogg: Video = "ogg"
    public static let webm: Video = "webm"
  }

  public struct Charset: RawRepresentable {
    public let rawValue: String

    public init(rawValue: String) {
      self.rawValue = rawValue
    }

    public static let utf8: Charset = "utf-8"
    // TODO: http://www.iana.org/assignments/character-sets/character-sets.xhtml
  }
}

extension MediaType.Application: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self = .init(rawValue: value)
  }
}

extension MediaType.Audio: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self = .init(rawValue: value)
  }
}

extension MediaType.Font: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self = .init(rawValue: value)
  }
}

extension MediaType.Image: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self = .init(rawValue: value)
  }
}

extension MediaType.Multipart: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self = .init(rawValue: value)
  }
}

extension MediaType.Text: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self = .init(rawValue: value)
  }
}

extension MediaType.Video: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self = .init(rawValue: value)
  }
}

extension MediaType.Charset: ExpressibleByStringLiteral {
  public init(stringLiteral value: String) {
    self = .init(rawValue: value)
  }
}
