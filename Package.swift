// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "swift-web-page",
  products: [
    .library(name: "Core", targets: ["Core"]),
    .library(name: "Html", targets: ["Html"]),
    .library(name: "Css", targets: ["Css"]),
    .library(name: "HtmlCssSupport", targets: ["HtmlCssSupport"]),
    .library(name: "Swep", targets: ["Swep"]),
  ],
  targets: [
    .target(name: "Core", dependencies: []),
    .target(name: "Html", dependencies: ["Core"]),
    .target(name: "Css", dependencies: ["Core"]),
    .target(name: "HtmlCssSupport", dependencies: ["Html", "Css"]),
    .target(name: "Swep", dependencies: ["Html", "Css", "HtmlCssSupport"]),
    .testTarget(name: "HtmlTests", dependencies: ["Html"]),
    .testTarget(name: "CssTests", dependencies: ["Css"]),
  ],
  swiftLanguageVersions: [
    .version("5"),
  ]
)
