extension Tag {
  /// Execute JavaScript when a user leaves an input field.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onblur(safe javascript: StaticString) -> Self {
    return onblur(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user leaves an input field.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onblur(unsafe javascript: String) -> Self {
    return push("onblur", javascript)
  }

  /// Execute JavaScript when an element is clicked.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onclick(safe javascript: StaticString) -> Self {
    return onclick(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an element is clicked.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onclick(unsafe javascript: String) -> Self {
    return push("onclick", javascript)
  }

  /// Execute JavaScript when the user right-clicks on an element with a context menu.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oncontextmenu(safe javascript: StaticString) -> Self {
    return oncontextmenu(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user right-clicks on an element with a context menu.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oncontextmenu(unsafe javascript: String) -> Self {
    return push("oncontextmenu", javascript)
  }

  /// Execute JavaScript when copying some text of an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oncopy(safe javascript: StaticString) -> Self {
    return oncopy(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when copying some text of an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oncopy(unsafe javascript: String) -> Self {
    return push("oncopy", javascript)
  }

  /// Execute JavaScript when cutting some text in an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oncut(safe javascript: StaticString) -> Self {
    return oncut(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when cutting some text in an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oncut(unsafe javascript: String) -> Self {
    return push("oncut", javascript)
  }

  /// Execute JavaScript when an element is double-clicked.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondblclick(safe javascript: StaticString) -> Self {
    return ondblclick(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an element is double-clicked.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondblclick(unsafe javascript: String) -> Self {
    return push("ondblclick", javascript)
  }

  /// Execute JavaScript when an element is being dragged.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondrag(safe javascript: StaticString) -> Self {
    return ondrag(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an element is being dragged.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondrag(unsafe javascript: String) -> Self {
    return push("ondrag", javascript)
  }

  /// Execute JavaScript when the user has finished dragging an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondragend(safe javascript: StaticString) -> Self {
    return ondragend(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user has finished dragging an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondragend(unsafe javascript: String) -> Self {
    return push("ondragend", javascript)
  }

  /// Execute JavaScript when a draggable element enters a drop target.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondragenter(safe javascript: StaticString) -> Self {
    return ondragenter(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a draggable element enters a drop target.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondragenter(unsafe javascript: String) -> Self {
    return push("ondragenter", javascript)
  }

  /// Execute JavaScript when an element is being dragged over a drop target.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondragover(safe javascript: StaticString) -> Self {
    return ondragover(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an element is being dragged over a drop target.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondragover(unsafe javascript: String) -> Self {
    return push("ondragover", javascript)
  }

  /// Execute JavaScript when the user starts to drag an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondragstart(safe javascript: StaticString) -> Self {
    return ondragstart(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user starts to drag an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondragstart(unsafe javascript: String) -> Self {
    return push("ondragstart", javascript)
  }

  /// Execute JavaScript when a draggable element is dropped in the element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondrop(safe javascript: StaticString) -> Self {
    return ondrop(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a draggable element is dropped in the element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondrop(unsafe javascript: String) -> Self {
    return push("ondrop", javascript)
  }

  /// Execute JavaScript when an element gets focus.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onfocus(safe javascript: StaticString) -> Self {
    return onfocus(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an element gets focus.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onfocus(unsafe javascript: String) -> Self {
    return push("onfocus", javascript)
  }

  /// Execute JavaScript when a user is pressing a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onkeydown(safe javascript: StaticString) -> Self {
    return onkeydown(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user is pressing a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onkeydown(unsafe javascript: String) -> Self {
    return push("onkeydown", javascript)
  }

  /// Execute JavaScript when a user presses a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onkeypress(safe javascript: StaticString) -> Self {
    return onkeypress(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user presses a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onkeypress(unsafe javascript: String) -> Self {
    return push("onkeypress", javascript)
  }

  /// Execute JavaScript when a user releases a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onkeyup(safe javascript: StaticString) -> Self {
    return onkeyup(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user releases a key.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onkeyup(unsafe javascript: String) -> Self {
    return push("onkeyup", javascript)
  }

  /// Execute JavaScript when pressing a mouse button over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onmousedown(safe javascript: StaticString) -> Self {
    return onmousedown(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when pressing a mouse button over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onmousedown(unsafe javascript: String) -> Self {
    return push("onmousedown", javascript)
  }

  /// Execute JavaScript when moving the mouse pointer over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onmousemove(safe javascript: StaticString) -> Self {
    return onmousemove(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when moving the mouse pointer over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onmousemove(unsafe javascript: String) -> Self {
    return push("onmousemove", javascript)
  }

  /// Execute JavaScript when moving the mouse pointer out of an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onmouseout(safe javascript: StaticString) -> Self {
    return onmouseout(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when moving the mouse pointer out of an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onmouseout(unsafe javascript: String) -> Self {
    return push("onmouseout", javascript)
  }

  /// Execute JavaScript when moving the mouse pointer over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onmouseover(safe javascript: StaticString) -> Self {
    return onmouseover(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when moving the mouse pointer over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onmouseover(unsafe javascript: String) -> Self {
    return push("onmouseover", javascript)
  }

  /// Execute JavaScript when releasing a mouse button over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onmouseup(safe javascript: StaticString) -> Self {
    return onmouseup(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when releasing a mouse button over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onmouseup(unsafe javascript: String) -> Self {
    return push("onmouseup", javascript)
  }

  /// Execute JavaScript when pasting some text in an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onpaste(safe javascript: StaticString) -> Self {
    return onpaste(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when pasting some text in an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onpaste(unsafe javascript: String) -> Self {
    return push("onpaste", javascript)
  }

  /// Execute JavaScript when an element is being scrolled.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onscroll(safe javascript: StaticString) -> Self {
    return onscroll(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an element is being scrolled.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onscroll(unsafe javascript: String) -> Self {
    return push("onscroll", javascript)
  }

  /// Execute JavaScript when the user rolls the mouse wheel over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onwheel(safe javascript: StaticString) -> Self {
    return onwheel(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user rolls the mouse wheel over an element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onwheel(unsafe javascript: String) -> Self {
    return push("onwheel", javascript)
  }

}

extension Body {
  /// Execute JavaScript when a page has started printing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onafterprint(safe javascript: StaticString) -> Self {
    return onafterprint(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a page has started printing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onafterprint(unsafe javascript: String) -> Self {
    return push("onafterprint", javascript)
  }

  /// Execute JavaScript when a page is about to be printed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onbeforeprint(safe javascript: StaticString) -> Self {
    return onbeforeprint(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a page is about to be printed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onbeforeprint(unsafe javascript: String) -> Self {
    return push("onbeforeprint", javascript)
  }

  /// Execute JavaScript when the page is about to be unloaded.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onbeforeunload(safe javascript: StaticString) -> Self {
    return onbeforeunload(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the page is about to be unloaded.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onbeforeunload(unsafe javascript: String) -> Self {
    return push("onbeforeunload", javascript)
  }

  /// Execute JavaScript when the anchor part has been changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onhashchange(safe javascript: StaticString) -> Self {
    return onhashchange(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the anchor part has been changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onhashchange(unsafe javascript: String) -> Self {
    return push("onhashchange", javascript)
  }

  public func onmessage(safe javascript: StaticString) -> Self {
    return onmessage(unsafe: String(describing: javascript))
  }

  public func onmessage(unsafe javascript: String) -> Self {
    return push("onmessage", javascript)
  }

  /// Execute JavaScript when the browser starts to work offline.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onoffline(safe javascript: StaticString) -> Self {
    return onoffline(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the browser starts to work offline.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onoffline(unsafe javascript: String) -> Self {
    return push("onoffline", javascript)
  }

  /// Execute JavaScript when the browser starts to work online.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ononline(safe javascript: StaticString) -> Self {
    return ononline(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the browser starts to work online.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ononline(unsafe javascript: String) -> Self {
    return push("ononline", javascript)
  }

  /// Execute JavaScript when the user is navigating away from a webpage.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onpagehide(safe javascript: StaticString) -> Self {
    return onpagehide(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user is navigating away from a webpage.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onpagehide(unsafe javascript: String) -> Self {
    return push("onpagehide", javascript)
  }

  /// Execute JavaScript when a user navigates to a webpage.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onpageshow(safe javascript: StaticString) -> Self {
    return onpageshow(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user navigates to a webpage.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onpageshow(unsafe javascript: String) -> Self {
    return push("onpageshow", javascript)
  }

  public func onpopstate(safe javascript: StaticString) -> Self {
    return onpopstate(unsafe: String(describing: javascript))
  }

  public func onpopstate(unsafe javascript: String) -> Self {
    return push("onpopstate", javascript)
  }

  /// Execute JavaScript when the browser window is resized.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onresize(safe javascript: StaticString) -> Self {
    return onresize(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the browser window is resized.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onresize(unsafe javascript: String) -> Self {
    return push("onresize", javascript)
  }

  public func onstorage(safe javascript: StaticString) -> Self {
    return onstorage(unsafe: String(describing: javascript))
  }

  public func onstorage(unsafe javascript: String) -> Self {
    return push("onstorage", javascript)
  }

  /// Execute JavaScript when a user unloads the document.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onunload(safe javascript: StaticString) -> Self {
    return onunload(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user unloads the document.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onunload(unsafe javascript: String) -> Self {
    return push("onunload", javascript)
  }
}

extension Details {
  /// Execute JavaScript when a `<details>` element is opened or closed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ontoggle(safe javascript: StaticString) -> Self {
    return ontoggle(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a `<details>` element is opened or closed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ontoggle(unsafe javascript: String) -> Self {
    return push("ontoggle", javascript)
  }
}

extension Form {
  /// Execute JavaScript when a form is reset.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onreset(safe javascript: StaticString) -> Self {
    return onreset(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a form is reset.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onreset(unsafe javascript: String) -> Self {
    return push("onreset", javascript)
  }

  /// Execute JavaScript when a form is submitted.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onsubmit(safe javascript: StaticString) -> Self {
    return onsubmit(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a form is submitted.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onsubmit(unsafe javascript: String) -> Self {
    return push("onsubmit", javascript)
  }
}

extension Input {
  /// Execute JavaScript when an input field is invalid.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oninvalid(safe javascript: StaticString) -> Self {
    return oninvalid(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when an input field is invalid.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oninvalid(unsafe javascript: String) -> Self {
    return push("oninvalid", javascript)
  }

  /// Execute JavaScript when submitting a search.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onsearch(safe javascript: StaticString) -> Self {
    return onsearch(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when submitting a search.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onsearch(unsafe javascript: String) -> Self {
    return push("onsearch", javascript)
  }
}

public protocol HasOnabort {}

extension Audio: HasOnabort {}
extension Embed: HasOnabort {}
extension Img: HasOnabort {}
extension Object: HasOnabort {}
extension Video: HasOnabort {}

extension Tag where Self: HasOnabort {
  /// Execute JavaScript if loading of a resource is aborted.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onabort(safe javascript: StaticString) -> Self {
    return onabort(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript if loading of a resource is aborted.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onabort(unsafe javascript: String) -> Self {
    return push("onabort", javascript)
  }
}

extension Track {
  /// Execute JavaScript when the cue changes in a `<track>` element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oncuechange(safe javascript: StaticString) -> Self {
    return oncuechange(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the cue changes in a `<track>` element.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oncuechange(unsafe javascript: String) -> Self {
    return push("oncuechange", javascript)
  }
}

public protocol HasOncanplay {}

extension Audio: HasOncanplay {}
extension Embed: HasOncanplay {}
extension Object: HasOncanplay {}
extension Video: HasOncanplay {}

extension Tag where Self: HasOncanplay {
  /// Execute JavaScript when a resource is ready to start playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oncanplay(safe javascript: StaticString) -> Self {
    return oncanplay(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a resource is ready to start playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oncanplay(unsafe javascript: String) -> Self {
    return push("oncanplay", javascript)
  }
}

public protocol HasOncanplaythrough {}

extension Audio: HasOncanplaythrough {}
extension Video: HasOncanplaythrough {}

extension Tag where Self: HasOncanplaythrough {
  /// Execute JavaScript when a resource can be played all the way through, without stopping.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oncanplaythrough(safe javascript: StaticString) -> Self {
    return oncanplaythrough(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a resource can be played all the way through, without stopping.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oncanplaythrough(unsafe javascript: String) -> Self {
    return push("oncanplaythrough", javascript)
  }
}

public protocol HasOnchange {}

extension Input: HasOnchange {}
extension Select: HasOnchange {}
extension Textarea: HasOnchange {}

extension Tag where Self: HasOnchange {
  /// Execute JavaScript when a user changes the value of a form control.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onchange(safe javascript: StaticString) -> Self {
    return onchange(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user changes the value of a form control.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onchange(unsafe javascript: String) -> Self {
    return push("onchange", javascript)
  }
}

public protocol HasOndurationchange {}

extension Audio: HasOndurationchange {}
extension Video: HasOndurationchange {}

extension Tag where Self: HasOndurationchange {
  /// Execute JavaScript when the media is ready to start playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondurationchange(safe javascript: StaticString) -> Self {
    return ondurationchange(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the media is ready to start playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ondurationchange(unsafe javascript: String) -> Self {
    return push("ondurationchange", javascript)
  }
}

public protocol HasOnemptied {}

extension Audio: HasOnemptied {}
extension Video: HasOnemptied {}

extension Tag where Self: HasOnemptied {
  public func onemptied(safe javascript: StaticString) -> Self {
    return onemptied(unsafe: String(describing: javascript))
  }

  public func onemptied(unsafe javascript: String) -> Self {
    return push("onemptied", javascript)
  }
}

public protocol HasOnended {}

extension Audio: HasOnended {}
extension Video: HasOnended {}

extension Tag where Self: HasOnended {
  /// Execute JavaScript when the media has stopped playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onended(safe javascript: StaticString) -> Self {
    return onended(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the media has stopped playing.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onended(unsafe javascript: String) -> Self {
    return push("onended", javascript)
  }
}

public protocol HasOnerror {}

extension Audio: HasOnerror {}
extension Img: HasOnerror {}
extension Input: HasOnerror {} // TODO: type="image"
extension Object: HasOnerror {}
extension Link: HasOnerror {}
extension Script: HasOnerror {}
extension Video: HasOnerror {}

extension Tag where Self: HasOnerror {
  public func onerror(safe javascript: StaticString) -> Self {
    return onerror(unsafe: String(describing: javascript))
  }

  public func onerror(unsafe javascript: String) -> Self {
    return push("onerror", javascript)
  }
}

public protocol HasOninput {}

extension Input: HasOninput {}
extension Textarea: HasOninput {}

extension Tag where Self: HasOninput {
  /// Execute JavaScript when a user writes something in a text field.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oninput(safe javascript: StaticString) -> Self {
    return oninput(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when a user writes something in a text field.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func oninput(unsafe javascript: String) -> Self {
    return push("oninput", javascript)
  }
}

public protocol HasOnload {}

extension Body: HasOnload {}
extension Iframe: HasOnload {}
extension Img: HasOnload {}
extension Input: HasOnload {} // TODO: type="image"
extension Link: HasOnload {}
extension Script: HasOnload {}
extension Style: HasOnload {}

extension Tag where Self: HasOnload {
  /// Execute JavaScript immediately after a page has been loaded.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onload(safe javascript: StaticString) -> Self {
    return onload(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript immediately after a page has been loaded.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onload(unsafe javascript: String) -> Self {
    return push("onload", javascript)
  }
}

public protocol HasOnloadeddata {}

extension Audio: HasOnloadeddata {}
extension Video: HasOnloadeddata {}

extension Tag where Self: HasOnloadeddata {
  public func onloadeddata(safe javascript: StaticString) -> Self {
    return onloadeddata(unsafe: String(describing: javascript))
  }

  public func onloadeddata(unsafe javascript: String) -> Self {
    return push("onloadeddata", javascript)
  }
}

public protocol HasOnloadedmetadata {}

extension Audio: HasOnloadedmetadata {}
extension Video: HasOnloadedmetadata {}

extension Tag where Self: HasOnloadedmetadata {
  public func onloadedmetadata(safe javascript: StaticString) -> Self {
    return onloadedmetadata(unsafe: String(describing: javascript))
  }

  public func onloadedmetadata(unsafe javascript: String) -> Self {
    return push("onloadedmetadata", javascript)
  }
}

public protocol HasOnloadstart {}

extension Audio: HasOnloadstart {}
extension Video: HasOnloadstart {}

extension Tag where Self: HasOnloadstart {
  public func onloadstart(safe javascript: StaticString) -> Self {
    return onloadstart(unsafe: String(describing: javascript))
  }

  public func onloadstart(unsafe javascript: String) -> Self {
    return push("onloadstart", javascript)
  }
}

public protocol HasOnpause {}

extension Audio: HasOnpause {}
extension Video: HasOnpause {}

extension Tag where Self: HasOnpause {
  /// Execute JavaScript when media has been paused.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onpause(safe javascript: StaticString) -> Self {
    return onpause(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when media has been paused.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onpause(unsafe javascript: String) -> Self {
    return push("onpause", javascript)
  }
}

public protocol HasOnplay {}

extension Audio: HasOnplay {}
extension Video: HasOnplay {}

extension Tag where Self: HasOnplay {
  /// Execute JavaScript when media has been played.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onplay(safe javascript: StaticString) -> Self {
    return onplay(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when media has been played.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onplay(unsafe javascript: String) -> Self {
    return push("onplay", javascript)
  }
}

public protocol HasOnplaying {}

extension Audio: HasOnplaying {}
extension Video: HasOnplaying {}

extension Tag where Self: HasOnplaying {
  /// Execute JavaScript when media is ready to start after having been paused.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onplaying(safe javascript: StaticString) -> Self {
    return onplaying(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when media is ready to start after having been paused.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onplaying(unsafe javascript: String) -> Self {
    return push("onplaying", javascript)
  }
}

public protocol HasOnprogress {}

extension Audio: HasOnprogress {}
extension Video: HasOnprogress {}

extension Tag where Self: HasOnprogress {
  /// Execute JavaScript when media is downloading.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onprogress(safe javascript: StaticString) -> Self {
    return onprogress(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when media is downloading.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onprogress(unsafe javascript: String) -> Self {
    return push("onprogress", javascript)
  }
}

public protocol HasOnratechange {}

extension Audio: HasOnratechange {}
extension Video: HasOnratechange {}

extension Tag where Self: HasOnratechange {
  /// Execute JavaScript when the playing speed of media is changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onratechange(safe javascript: StaticString) -> Self {
    return onratechange(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the playing speed of media is changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onratechange(unsafe javascript: String) -> Self {
    return push("onratechange", javascript)
  }
}

public protocol HasOnseeked {}

extension Audio: HasOnseeked {}
extension Video: HasOnseeked {}

extension Tag where Self: HasOnseeked {
  /// Execute JavaScript when the user is finished moving/skipping to a new position in media.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onseeked(safe javascript: StaticString) -> Self {
    return onseeked(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user is finished moving/skipping to a new position in media.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onseeked(unsafe javascript: String) -> Self {
    return push("onseeked", javascript)
  }
}

public protocol HasOnseeking {}

extension Audio: HasOnseeking {}
extension Video: HasOnseeking {}

extension Tag where Self: HasOnseeking {
  /// Execute JavaScript when the user starts moving/skipping to a new position in the media.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onseeking(safe javascript: StaticString) -> Self {
    return onseeking(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the user starts moving/skipping to a new position in the media.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onseeking(unsafe javascript: String) -> Self {
    return push("onseeking", javascript)
  }
}

public protocol HasOnselect {}

extension Input: HasOnselect {}
extension Textarea: HasOnselect {}

extension Tag where Self: HasOnselect {
  /// Execute JavaScript when some text has been selected.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onselect(safe javascript: StaticString) -> Self {
    return onselect(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when some text has been selected.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onselect(unsafe javascript: String) -> Self {
    return push("onselect", javascript)
  }
}

public protocol HasOnstalled {}

extension Audio: HasOnstalled {}
extension Video: HasOnstalled {}

extension Tag where Self: HasOnstalled {
  /// Execute JavaScript when the browser is trying to get media data, but data is not available.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onstalled(safe javascript: StaticString) -> Self {
    return onstalled(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the browser is trying to get media data, but data is not available.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onstalled(unsafe javascript: String) -> Self {
    return push("onstalled", javascript)
  }
}

public protocol HasOnsuspend {}

extension Audio: HasOnsuspend {}
extension Video: HasOnsuspend {}

extension Tag where Self: HasOnsuspend {
  /// Execute JavaScript when the browser is intentionally not getting media data.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onsuspend(safe javascript: StaticString) -> Self {
    return onsuspend(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the browser is intentionally not getting media data.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onsuspend(unsafe javascript: String) -> Self {
    return push("onsuspend", javascript)
  }
}

public protocol HasOntimeupdate {}

extension Audio: HasOntimeupdate {}
extension Video: HasOntimeupdate {}

extension Tag where Self: HasOntimeupdate {
  /// Execute JavaScript when the current playback position has changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ontimeupdate(safe javascript: StaticString) -> Self {
    return ontimeupdate(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the current playback position has changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func ontimeupdate(unsafe javascript: String) -> Self {
    return push("ontimeupdate", javascript)
  }
}

public protocol HasOnvolumechange {}

extension Audio: HasOnvolumechange {}
extension Video: HasOnvolumechange {}

extension Tag where Self: HasOnvolumechange {
  /// Execute JavaScript when the volume of a video has been changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onvolumechange(safe javascript: StaticString) -> Self {
    return onvolumechange(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the volume of a video has been changed.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onvolumechange(unsafe javascript: String) -> Self {
    return push("onvolumechange", javascript)
  }
}

public protocol HasOnwaiting {}

extension Audio: HasOnwaiting {}
extension Video: HasOnwaiting {}

extension Tag where Self: HasOnwaiting {
  /// Execute JavaScript when the media stops because it needs to buffer the next frame.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onwaiting(safe javascript: StaticString) -> Self {
    return onwaiting(unsafe: String(describing: javascript))
  }

  /// Execute JavaScript when the media stops because it needs to buffer the next frame.
  ///
  /// - Parameter javascript: JavaScript to execute.
  public func onwaiting(unsafe javascript: String) -> Self {
    return push("onwaiting", javascript)
  }
}