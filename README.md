
# 📄 swift-web-page (swep)

<p align="left">
  <img src="https://img.shields.io/badge/Swift_Version-5.1-orange.svg?style=flat&logo=Swift" alt="Swift Version: 5.1"/>
  <a href="https://swift.org/package-manager">
    <img src="https://img.shields.io/badge/SwiftPM-Compatible-darkgreen.svg?style=flat" alt="Swift Package Manager"/>
  </a>
    <img src="https://img.shields.io/badge/Platforms-macOS,%20iOS,%20Linux-darkgreen.svg?style=flat" alt="Swift Package Manager"/>
</p>

Swep is a Swift DSL for writing type-safe HTML/CSS in SwiftUI way.

## Table of Contents

  - [Motivation](#motivation)
  - [Examples](#examples)
  - [Safety](#safety)
  - [Design](#design)
  - [FAQ](#faq)
  - [Installation](#installation)
  - [Real world example](#real-world-example)
  - [License](#license)

## Motivation

The popular choice for rendering HTML/CSS in Swift these days is to use templating languages, but they expose your application to **runtime errors** and **invalid HTML/CSS**. Our library prevents these runtime issues at compile-time by embedding HTML/CSS directly into Swift’s powerful type system.

## Examples

HTML/CSS documents can be created in a SwiftUI-like fashion, much like you might create a nested SwiftUI View:

```swift
import Swep

let page = document {
  html {
    head(title("YOLO!"))
    body {
      h1("Welcome!")
      p("You've found our site!")
    }
  }
}
```

CSS inside Style tag!

```swift
import Swep

let page = document {
  html {
    head {
      title("YOLO!")
      style {
        selector("h1") {
          color(.tomato())
        }
      }
    }
    body {
      h1("Welcome!")
      p("You've found our site!")
    }
  }
}
```

Even better, CSS as tag modifier

```swift
import Swep

let page = document {
  html {
    head(title("YOLO!"))
    body {
      h1("Welcome!")
        .color(.tomato())
      p("You've found our site!")
    }
  }
}
```

Once your document is created you can render it using the `render` function:

```swift
/// when you just want to see the output..
page.render(.debug(.pretty(.spaces(2))))
// or
page.debugRender()
```

```html
<!DOCTYPE html>
<html>
  <head>
    <title>
      YOLO!
    </title>
  </head>
  <body>
    <h1 style="color:rgba(255,99,71,1.0)">
      Welcome!
    </h1>
    <p>
      You've found our site!
    </p>
  </body>
</html>
```

```swift
/// when your document is ready for release..
page.render(.release(.inline))
// or
page.render()
```

```html
<!DOCTYPE html><html><head><title>YOLO!</title></head><body><h1 style="color:rgba(255,99,71,1.0);">Welcome!</h1><p>You&apos;ve found our site!</p></body></html>
```

## Safety

Because we are embedding our DSL in Swift we can take advantage of some advanced Swift features to add an extra layer of safety when constructing HTML/CSS documents. For a simple example, we can strengthen many HTML/CSS APIs to force their true types rather than just relying on strings. 

```swift 
let imgTag = img()
               .src("cat.jpg")
               .width(400)
               .height(300)

imgTag.render()
// <img src="cat.jpg" width="400" height="300">
```

Here the `src` attribute takes a string, but `width` and `height` take integers, as it’s invalid to put anything else in those attributes.

For a more advanced example, `<li>` tags can only be placed inside `<ol>` and `<ul>` tags, and we can represent this fact so that it’s impossible to construct an invalid document:

```swift
let listTag = ul {
  li("Cat")
  li("Dog")
  li("Rabbit")
} // ✅ Compiles!

listTag.render()
// <ul><li>Cat</li><li>Dog</li><li>Rabbit</li></ul>

div {
  li("Cat")
  li("Dog")
  li("Rabbit")
} // 🛑 Compile error
```

Another advance example, `<thead>`, `<tbody>`, and `<tfoot>` tags can only be placed inside `<table>` tags, same for `<th>`, and `<td>` tags can only be placed inside `<tr>` tags.

```swift
let tableTag = table {
  tr(th("A Head"))
  tr(td("A Body"))
} // ✅ Compiles!

type(of: tableTag)
// Table<Tuple<(Tr<Th<Text>>, Tr<Td<Text>>)>>

let tableTag = table {
  thead(tr(th("A Head")))
  tbody(tr(td("A Body")))
} // ✅ Compiles!

type(of: tableTag)
// Table<Tuple<(Thead<Tr<Th<Text>>>, Tbody<Tr<Td<Text>>>)>>

let tableTag = table {
  thead(tr(th("A Head")))
  for _ in 1...3 {
    tbody(tr(td("A Body")))
  }
} // ✅ Compiles!

type(of: tableTag)
// Table<Tuple<(Thead<Tr<Th<Text>>>, Array<Tbody<Tr<Td<Text>>>>)>>

table {
  tbody(tr(td("A Body")))
  thead(tr(th("A Head")))
} // 🛑 Compile error
```

There alot more..

## Design

Behind the scenes **Swep** is following the **Protocol-Oriented-Programming** (**POP**) approach, along with the powerful swift-feature **[@resultBuilder](https://github.com/apple/swift-evolution/blob/main/proposals/0289-result-builders.md)**. There are two main-libraries *Html* handles the html-side, and *Css* handles the css-side. And one micro-library *HtmlCssSupport* which handles the combination of both *Html*, and *Css*.

## FAQ

### Can I use this with existing Swift web frameworks like Kitura, Vapor, and Perfect?

Yes! We even provide plug-in libraries that reduce the friction of using this library with Kitura, Vapor, and Perfect. Find out more information at the following repos:

- [~~swift-web-page-kitura~~](https://github.com/alja7dali/swift-web-page-kitura) (soon)
- [~~swift-web-page-vapor~~](https://github.com/alja7dali/swift-web-page-vapor) (soon)
- [~~swift-web-page-perfect~~](https://github.com/alja7dali/swift-web-page-perfect) (soon)
 
### Why would I use this over a templating language?

Templating languages are popular and easy to get started with, but they have many drawbacks:

1. **Stringy APIs**: Templating languages are always stringly typed because you provide your template as a big ole string, and then at runtime the values are interpolated and logic is executed. This means things we take for granted in Swift, like the compiler catching typos and type mismatches, will go unnoticed until you run the code.

1. **Incomplete language**: Templating languages are just that: programming languages. That means you should expect from these languages all of the niceties you get from other fully-fledged languages like Swift. That includes syntax highlighting, IDE autocompletion, static analysis, refactoring tools, breakpoints, debugger, and a whole slew of features that make Swift powerful like let-bindings, conditionals, loops and more. However, the reality is that no templating language supports all of these features.

1. **Rigid**: Templating languages are rigid in that they do not allow the types of compositions and transformations we are used to performing on data structures in Swift. It is not possible to succinctly traverse over the documents you build, and inspect or transform the nodes you visit. This capability has many applications, such as being able to pretty print or minify your HTML/CSS output, or writing a transformation that allows you to inline a CSS stylesheet into an HTML/CSS node. There are entire worlds closed off to you due to how templating languages work.

The DSL in this library fixes all of these problems, and opens up doors that are completely closed to templating languages.

### When is it more appropriate to use a templating language over swift-web-page?

There are a few reasons you might want to still use a templating language:

1. A designer delivers a large HTML/CSS document to you and all you want to do is hook in a little bit of value interpolation or logic. In this case you can simply copy and paste that HTML/CSS into your template, add a few interpolation tokens, and you're well on your way to having a full page served from your web application.

1. You need to render non-HTML/CSS documents. The beauty of templating languages is that it outputs straight to plain text, and so it can model any type of document, whether it be HTML/CSS, markdown, XML, RSS, ATOM, LaTeX, and more.

1. Creating _very_ large documents in a single expression can cause compile times to go up, whereas templates are not compiled by Swift and so do not influence compile times. Luckily this isn't a problem too often because it is very easy to break up a document into as many small pieces as you want, which will probably lead to more reusable code in the long run.

If you do decide that a templating language better suites your needs, then you should consider [HypertextLiteral](https://github.com/NSHipster/HypertextLiteral), which gives you template-like capabilities but in a safer manner.

## Real world example

Creating a html document, and css stylesheet

```swift
let titillimFont: StaticString = """
  https://fonts.googleapis.com/css2?family=\
  Titillium+Web:ital,wght@0,200;0,300;0,400;\
  0,600;0,700;0,900;1,200;1,300;1,400;1,600;\
  1,700&display=swap
  """
  
let plainStyle = style {
  `import`(titillimFont)
  selector("*, *::before, *::after") {
    margin(.px(0))
    padding(.px(0))
    boxSizing(.borderBox)
  }
  selector("body") {
    margin(.px(0), .auto)
    backgroundColor(.hex(0x111))
    fontFamily("'Titillium Web', sans-serif")
  }
}

let page = document {
  html {
    head {
      title("Hello, Swep!")
      plainStyle
    }
    body {
      h1("📄 swift-web-page (swep)")
      hr()
        .width(50%)
        .minWidth(.px(720))
        .color(.hex(0x323232))
      p {
        strong("Swep ")
        text("is a Swift DSL for writing type-safe HTML/CSS in declarative way.")
      }
      p {
        text("With ")
        strong("Swep:")
      }
      ul {
        li("You can write html documents along with css")
          .fontWeight(.bolder)
        li("Bringing all swift-language features out of the box")
        #if swift(>=5.1)
          for version in 1...4 {
            if version != 2 {
              li("supporting swift v5.\(version)")
            }
          }
        #else
          li("Unfortunately this library is built using @resultBuilder which is available in swift v5.1 and higher 😢")
        #endif
      }
      blockquote("Enjoy! ✌️😁")
    }
  }
}
```

Checking out the type of the document..
```swift
type(of: page)
```

```bash
Document<Html<Tuple<(Head<Tuple<(Title<Text>, Style<Stylesheet>)>>, Body<Tuple<(H1<Text>, Hr, P<Tuple<(Strong<Text>, Text)>>, P<Tuple<(Text, Strong<Text>)>>, Ul<Tuple<(Li<Text>, Li<Text>, Array<Optional<Li<Text>>>)>>, Blockquote<Text>)>>)>>>
```

Rendering out the document..

```swift
let renderMode: RenderMode = .release(.pretty(.spaces(2)))
page.render(renderMode)
```

```html
<!DOCTYPE html>
<html>
  <head>
    <title>
      Hello, Swep!
    </title>
    <style>
      @import https://fonts.googleapis.com/css2?family=Titillium+Web:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700&display=swap;
      *, *::before, *::after {
        margin: 0px;
        padding: 0px;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
      }
      body {
        margin: 0px auto;
        background-color: #111;
        font-family: 'Titillium Web', sans-serif;
      }
    </style>
  </head>
  <body>
    <h1>
      📄 swift-web-page (swep)
    </h1>
    <hr style="width:50%;
               min-width:720px;
               color:#323232">
    <p>
      <strong>
        Swep 
      </strong>
      is a Swift DSL for writing type-safe HTML/CSS in declarative way.
    </p>
    <p>
      With 
      <strong>
        Swep:
      </strong>
    </p>
    <ul>
      <li style="font-weight:bolder">
        You can write html documents along with css
      </li>
      <li>
        Bringing all swift-language features out of the box
      </li>
      <li>
        supporting swift v5.1
      </li>
      <li>
        supporting swift v5.3
      </li>
      <li>
        supporting swift v5.4
      </li>
    </ul>
    <blockquote>
      Enjoy! ✌️😁
    </blockquote>
  </body>
</html>
```

## Installation

### Swift Package Manager (SPM)

If you want to use *swift-web-page* in a project that uses [SPM](https://swift.org/package-manager/), it's as simple as adding a `dependencies` clause to your `Package.swift`:

``` swift
dependencies: [
  .package(url: "https://github.com/alja7dali/swift-web-page.git", from: "0.0.1")
]
```

From there you can add `Swep` as target dependencies.

``` swift
let Swep: Target.Dependency = .product(name: "Swep", package: "swift-web-page")
...
targets: [
  .target(name: "yourProject", dependencies: [Swep]),
]
```

## License

All modules are released under the MIT license. See [LICENSE](./LICENSE.md) for details.
