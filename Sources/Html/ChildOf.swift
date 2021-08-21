public protocol IsAudio {}
extension Audio: IsAudio {}

public protocol ChildOfAudio {}
extension Source: ChildOfAudio where Parent: IsAudio {}
extension Track: ChildOfAudio {}
extension Script: ChildOfAudio {}
extension Noscript: ChildOfAudio {}
extension Template: ChildOfAudio {}
extension Comment: ChildOfAudio {}

extension Array:       ChildOfAudio where Element: ChildOfAudio {}
extension Either:      ChildOfAudio where Left: ChildOfAudio, Right: ChildOfAudio {}
extension Empty:       ChildOfAudio {}
extension Optional:    ChildOfAudio where Wrapped: ChildOfAudio {}

/// ---------------------- ///

public protocol VariationOfCaption {}
extension Caption: VariationOfCaption {}

extension Either:      VariationOfCaption where Left: VariationOfCaption, Right: VariationOfCaption {}
extension Empty:       VariationOfCaption {}
extension Optional:    VariationOfCaption where Wrapped: VariationOfCaption {}

/// ---------------------- ///

public protocol ChildOfColgroup {}
extension Col: ChildOfColgroup {}
extension Script: ChildOfColgroup {}
extension Noscript: ChildOfColgroup {}
extension Template: ChildOfColgroup {}
extension Comment: ChildOfColgroup {}

extension Array:       ChildOfColgroup where Element: ChildOfColgroup {}
extension Either:      ChildOfColgroup where Left: ChildOfColgroup, Right: ChildOfColgroup {}
extension Empty:       ChildOfColgroup {}
extension Optional:    ChildOfColgroup where Wrapped: ChildOfColgroup {}

/// ---------------------- ///

public protocol VariationOfColgroup {}
extension Colgroup: VariationOfColgroup {}

extension Either:      VariationOfColgroup where Left: VariationOfColgroup, Right: VariationOfColgroup {}
extension Empty:       VariationOfColgroup {}
extension Optional:    VariationOfColgroup where Wrapped: VariationOfColgroup {}

/// ---------------------- ///

public protocol ChildOfDetails {}

extension Text:        ChildOfDetails {}
extension Raw:         ChildOfDetails {}
extension Comment:     ChildOfDetails {}

extension Array:       ChildOfDetails where Element: ChildOfDetails {}
extension Either:      ChildOfDetails where Left: ChildOfDetails, Right: ChildOfDetails {}
extension Empty:       ChildOfDetails {}
extension Optional:    ChildOfDetails where Wrapped: ChildOfDetails {}

extension A: ChildOfDetails {}
extension Abbr: ChildOfDetails {}
extension Address: ChildOfDetails {}
extension Article: ChildOfDetails {}
extension Aside: ChildOfDetails {}
extension Audio: ChildOfDetails {}
extension B: ChildOfDetails {}
extension Bdi: ChildOfDetails {}
extension Bdo: ChildOfDetails {}
extension Blockquote: ChildOfDetails {}
extension Br: ChildOfDetails {}
extension Button: ChildOfDetails {}
extension Canvas: ChildOfDetails {}
extension Cite: ChildOfDetails {}
extension Code: ChildOfDetails {}
extension Del: ChildOfDetails {}
extension Details: ChildOfDetails {}
extension Dfn: ChildOfDetails {}
extension Div: ChildOfDetails {}
extension Dl: ChildOfDetails {}
extension Em: ChildOfDetails {}
extension Fieldset: ChildOfDetails {}
extension Figure: ChildOfDetails {}
extension Footer: ChildOfDetails {}
extension Form: ChildOfDetails {}
extension H1: ChildOfDetails {}
extension H2: ChildOfDetails {}
extension H3: ChildOfDetails {}
extension H4: ChildOfDetails {}
extension H5: ChildOfDetails {}
extension H6: ChildOfDetails {}
extension Header: ChildOfDetails {}
extension Hr: ChildOfDetails {}
extension I: ChildOfDetails {}
extension Iframe: ChildOfDetails {}
extension Img: ChildOfDetails {}
extension Input: ChildOfDetails {}
extension Ins: ChildOfDetails {}
extension Kbd: ChildOfDetails {}
extension Label: ChildOfDetails {}
extension Main: ChildOfDetails {}
extension Map: ChildOfDetails {}
extension Mark: ChildOfDetails {}
extension Meter: ChildOfDetails {}
extension Nav: ChildOfDetails {}
extension Noscript: ChildOfDetails {}
extension Object: ChildOfDetails {}
extension Ol: ChildOfDetails {}
extension Optgroup: ChildOfDetails {}
extension Output: ChildOfDetails {}
extension P: ChildOfDetails {}
extension Picture: ChildOfDetails {}
extension Pre: ChildOfDetails {}
extension Progress: ChildOfDetails {}
extension Q: ChildOfDetails {}
extension S: ChildOfDetails {}
extension Samp: ChildOfDetails {}
extension Script: ChildOfDetails {}
extension Section: ChildOfDetails {}
extension Select: ChildOfDetails {}
extension Small: ChildOfDetails {}
extension Span: ChildOfDetails {}
extension Strong: ChildOfDetails {}
extension Sub: ChildOfDetails {}
extension Sup: ChildOfDetails {}
extension Svg: ChildOfDetails {}
extension Table: ChildOfDetails {}
extension Template: ChildOfDetails {}
extension Textarea: ChildOfDetails {}
extension Time: ChildOfDetails {}
extension U: ChildOfDetails {}
extension Ul: ChildOfDetails {}
extension Var: ChildOfDetails {}
extension Video: ChildOfDetails {}

public protocol VariationOfSummary {}
extension Summary: VariationOfSummary {}

extension Either:      VariationOfSummary where Left: VariationOfSummary, Right: VariationOfSummary {}
extension Empty:       VariationOfSummary {}
extension Optional:    VariationOfSummary where Wrapped: VariationOfSummary {}

/// ---------------------- ///

/// FIXME: Dl must contains (signle Dt followed by multiple Dd) repeatedly..
public protocol ChildOfDl {}
extension Dd: ChildOfDl {}
extension Dt: ChildOfDl {}
extension Script: ChildOfDl {}
extension Noscript: ChildOfDl {}
extension Template: ChildOfDl {}
extension Comment: ChildOfDl {}

extension Array:       ChildOfDl where Element: ChildOfDl {}
extension Either:      ChildOfDl where Left: ChildOfDl, Right: ChildOfDl {}
extension Empty:       ChildOfDl {}
extension Optional:    ChildOfDl where Wrapped: ChildOfDl {}

/// ---------------------- ///

public protocol ChildOfFieldset {}

extension Text:        ChildOfFieldset {}
extension Raw:         ChildOfFieldset {}
extension Comment:     ChildOfFieldset {}

extension Array:       ChildOfFieldset where Element: ChildOfFieldset {}
extension Either:      ChildOfFieldset where Left: ChildOfFieldset, Right: ChildOfFieldset {}
extension Empty:       ChildOfFieldset {}
extension Optional:    ChildOfFieldset where Wrapped: ChildOfFieldset {}

extension A: ChildOfFieldset {}
extension Abbr: ChildOfFieldset {}
extension Address: ChildOfFieldset {}
extension Article: ChildOfFieldset {}
extension Aside: ChildOfFieldset {}
extension Audio: ChildOfFieldset {}
extension B: ChildOfFieldset {}
extension Bdi: ChildOfFieldset {}
extension Bdo: ChildOfFieldset {}
extension Blockquote: ChildOfFieldset {}
extension Br: ChildOfFieldset {}
extension Button: ChildOfFieldset {}
extension Canvas: ChildOfFieldset {}
extension Cite: ChildOfFieldset {}
extension Code: ChildOfFieldset {}
extension Del: ChildOfFieldset {}
extension Details: ChildOfFieldset {}
extension Dfn: ChildOfFieldset {}
extension Div: ChildOfFieldset {}
extension Dl: ChildOfFieldset {}
extension Em: ChildOfFieldset {}
extension Fieldset: ChildOfFieldset {}
extension Figure: ChildOfFieldset {}
extension Footer: ChildOfFieldset {}
extension Form: ChildOfFieldset {}
extension H1: ChildOfFieldset {}
extension H2: ChildOfFieldset {}
extension H3: ChildOfFieldset {}
extension H4: ChildOfFieldset {}
extension H5: ChildOfFieldset {}
extension H6: ChildOfFieldset {}
extension Header: ChildOfFieldset {}
extension Hr: ChildOfFieldset {}
extension I: ChildOfFieldset {}
extension Iframe: ChildOfFieldset {}
extension Img: ChildOfFieldset {}
extension Input: ChildOfFieldset {}
extension Ins: ChildOfFieldset {}
extension Kbd: ChildOfFieldset {}
extension Label: ChildOfFieldset {}
extension Main: ChildOfFieldset {}
extension Map: ChildOfFieldset {}
extension Mark: ChildOfFieldset {}
extension Meter: ChildOfFieldset {}
extension Nav: ChildOfFieldset {}
extension Noscript: ChildOfFieldset {}
extension Object: ChildOfFieldset {}
extension Ol: ChildOfFieldset {}
extension Optgroup: ChildOfFieldset {}
extension Output: ChildOfFieldset {}
extension P: ChildOfFieldset {}
extension Picture: ChildOfFieldset {}
extension Pre: ChildOfFieldset {}
extension Progress: ChildOfFieldset {}
extension Q: ChildOfFieldset {}
extension S: ChildOfFieldset {}
extension Samp: ChildOfFieldset {}
extension Script: ChildOfFieldset {}
extension Section: ChildOfFieldset {}
extension Select: ChildOfFieldset {}
extension Small: ChildOfFieldset {}
extension Span: ChildOfFieldset {}
extension Strong: ChildOfFieldset {}
extension Sub: ChildOfFieldset {}
extension Sup: ChildOfFieldset {}
extension Svg: ChildOfFieldset {}
extension Table: ChildOfFieldset {}
extension Template: ChildOfFieldset {}
extension Textarea: ChildOfFieldset {}
extension Time: ChildOfFieldset {}
extension U: ChildOfFieldset {}
extension Ul: ChildOfFieldset {}
extension Var: ChildOfFieldset {}
extension Video: ChildOfFieldset {}

public protocol VariationOfLegend {}
extension Legend: VariationOfLegend {}

extension Either:      VariationOfLegend where Left: VariationOfLegend, Right: VariationOfLegend {}
extension Empty:       VariationOfLegend {}
extension Optional:    VariationOfLegend where Wrapped: VariationOfLegend {}

/// ---------------------- ///

public protocol ChildOfFigure {}

extension Text:        ChildOfFigure {}
extension Raw:         ChildOfFigure {}
extension Comment:     ChildOfFigure {}

extension Array:       ChildOfFigure where Element: ChildOfFigure {}
extension Either:      ChildOfFigure where Left: ChildOfFigure, Right: ChildOfFigure {}
extension Empty:       ChildOfFigure {}
extension Optional:    ChildOfFigure where Wrapped: ChildOfFigure {}

extension A: ChildOfFigure {}
extension Abbr: ChildOfFigure {}
extension Address: ChildOfFigure {}
extension Article: ChildOfFigure {}
extension Aside: ChildOfFigure {}
extension Audio: ChildOfFigure {}
extension B: ChildOfFigure {}
extension Bdi: ChildOfFigure {}
extension Bdo: ChildOfFigure {}
extension Blockquote: ChildOfFigure {}
extension Br: ChildOfFigure {}
extension Button: ChildOfFigure {}
extension Canvas: ChildOfFigure {}
extension Cite: ChildOfFigure {}
extension Code: ChildOfFigure {}
extension Del: ChildOfFigure {}
extension Details: ChildOfFigure {}
extension Dfn: ChildOfFigure {}
extension Div: ChildOfFigure {}
extension Dl: ChildOfFigure {}
extension Em: ChildOfFigure {}
extension Fieldset: ChildOfFigure {}
extension Figure: ChildOfFigure {}
extension Footer: ChildOfFigure {}
extension Form: ChildOfFigure {}
extension H1: ChildOfFigure {}
extension H2: ChildOfFigure {}
extension H3: ChildOfFigure {}
extension H4: ChildOfFigure {}
extension H5: ChildOfFigure {}
extension H6: ChildOfFigure {}
extension Header: ChildOfFigure {}
extension Hr: ChildOfFigure {}
extension I: ChildOfFigure {}
extension Iframe: ChildOfFigure {}
extension Img: ChildOfFigure {}
extension Input: ChildOfFigure {}
extension Ins: ChildOfFigure {}
extension Kbd: ChildOfFigure {}
extension Label: ChildOfFigure {}
extension Main: ChildOfFigure {}
extension Map: ChildOfFigure {}
extension Mark: ChildOfFigure {}
extension Meter: ChildOfFigure {}
extension Nav: ChildOfFigure {}
extension Noscript: ChildOfFigure {}
extension Object: ChildOfFigure {}
extension Ol: ChildOfFigure {}
extension Optgroup: ChildOfFigure {}
extension Output: ChildOfFigure {}
extension P: ChildOfFigure {}
extension Picture: ChildOfFigure {}
extension Pre: ChildOfFigure {}
extension Progress: ChildOfFigure {}
extension Q: ChildOfFigure {}
extension S: ChildOfFigure {}
extension Samp: ChildOfFigure {}
extension Script: ChildOfFigure {}
extension Section: ChildOfFigure {}
extension Select: ChildOfFigure {}
extension Small: ChildOfFigure {}
extension Span: ChildOfFigure {}
extension Strong: ChildOfFigure {}
extension Sub: ChildOfFigure {}
extension Sup: ChildOfFigure {}
extension Svg: ChildOfFigure {}
extension Table: ChildOfFigure {}
extension Template: ChildOfFigure {}
extension Textarea: ChildOfFigure {}
extension Time: ChildOfFigure {}
extension U: ChildOfFigure {}
extension Ul: ChildOfFigure {}
extension Var: ChildOfFigure {}
extension Video: ChildOfFigure {}

public protocol VariationOfFigcaption {}
extension Figcaption: VariationOfFigcaption {}

extension Either:      VariationOfFigcaption where Left: VariationOfFigcaption, Right: VariationOfFigcaption {}
extension Empty:       VariationOfFigcaption {}
extension Optional:    VariationOfFigcaption where Wrapped: VariationOfFigcaption {}

/// ---------------------- ///

public protocol ChildOfHead {}
extension Base: ChildOfHead {}
extension Link: ChildOfHead {}
extension Meta: ChildOfHead {}
extension Style: ChildOfHead {}
extension Title: ChildOfHead {}
extension Comment:     ChildOfHead {}

extension Array:       ChildOfHead where Element: ChildOfHead {}
extension Either:      ChildOfHead where Left: ChildOfHead, Right: ChildOfHead {}
extension Empty:       ChildOfHead {}
extension Optional:    ChildOfHead where Wrapped: ChildOfHead {}

/// ---------------------- ///

/// Special case of ChlidOfProtocol
/// Check out the `//public protocol ChildOfHtml {}
//extension Head: ChildOfHtml {}
//extension Body: ChildOfHtml {}

/// ---------------------- ///

public protocol ChildOfMap {}
extension Area: ChildOfMap {}
extension Script: ChildOfMap {}
extension Noscript: ChildOfMap {}
extension Template: ChildOfMap {}
extension Comment: ChildOfMap {}

extension Array:       ChildOfMap where Element: ChildOfMap {}
extension Either:      ChildOfMap where Left: ChildOfMap, Right: ChildOfMap {}
extension Empty:       ChildOfMap {}
extension Optional:    ChildOfMap where Wrapped: ChildOfMap {}

/// ---------------------- ///

public protocol ChildOfObject {}
extension Param: ChildOfObject {}
extension Script: ChildOfObject {}
extension Noscript: ChildOfObject {}
extension Template: ChildOfObject {}
extension Comment: ChildOfObject {}

extension Array:       ChildOfObject where Element: ChildOfObject {}
extension Either:      ChildOfObject where Left: ChildOfObject, Right: ChildOfObject {}
extension Empty:       ChildOfObject {}
extension Optional:    ChildOfObject where Wrapped: ChildOfObject {}

/// ---------------------- ///

public protocol ChildOfOl {}
extension Li: ChildOfOl {}
extension Script: ChildOfOl {}
extension Noscript: ChildOfOl {}
extension Template: ChildOfOl {}
extension Comment: ChildOfOl {}

extension Array:       ChildOfOl where Element: ChildOfOl {}
extension Either:      ChildOfOl where Left: ChildOfOl, Right: ChildOfOl {}
extension Empty:       ChildOfOl {}
extension Optional:    ChildOfOl where Wrapped: ChildOfOl {}

/// ---------------------- ///

public protocol ChildOfOptgroup {}
extension Option: ChildOfOptgroup {}
extension Script: ChildOfOptgroup {}
extension Noscript: ChildOfOptgroup {}
extension Template: ChildOfOptgroup {}
extension Comment: ChildOfOptgroup {}

extension Array:       ChildOfOptgroup where Element: ChildOfOptgroup {}
extension Either:      ChildOfOptgroup where Left: ChildOfOptgroup, Right: ChildOfOptgroup {}
extension Empty:       ChildOfOptgroup {}
extension Optional:    ChildOfOptgroup where Wrapped: ChildOfOptgroup {}

/// ---------------------- ///

public protocol ChildOfPicture {}
extension Source: ChildOfPicture where Parent == IsPicture {}
extension Script: ChildOfPicture {}
extension Noscript: ChildOfPicture {}
extension Template: ChildOfPicture {}
extension Comment: ChildOfPicture {}

extension Array:       ChildOfPicture where Element: ChildOfPicture {}
extension Either:      ChildOfPicture where Left: ChildOfPicture, Right: ChildOfPicture {}
extension Empty:       ChildOfPicture {}
extension Optional:    ChildOfPicture where Wrapped: ChildOfPicture {}

/// ---------------------- ///

public protocol ChildOfSelect {}
extension Option: ChildOfSelect {}
extension Script: ChildOfSelect {}
extension Noscript: ChildOfSelect {}
extension Template: ChildOfSelect {}
extension Comment: ChildOfSelect {}

extension Array:       ChildOfSelect where Element: ChildOfSelect {}
extension Either:      ChildOfSelect where Left: ChildOfSelect, Right: ChildOfSelect {}
extension Empty:       ChildOfSelect {}
extension Optional:    ChildOfSelect where Wrapped: ChildOfSelect {}

/// ---------------------- ///

public protocol ChildOfTbody {}
extension Tr: ChildOfTbody where Content: VariationOfTd {}
extension Script: ChildOfTbody {}
extension Noscript: ChildOfTbody {}
extension Template: ChildOfTbody {}
extension Comment: ChildOfTbody {}

extension Array:       ChildOfTbody where Element: ChildOfTbody {}
extension Either:      ChildOfTbody where Left: ChildOfTbody, Right: ChildOfTbody {}
extension Empty:       ChildOfTbody {}
extension Optional:    ChildOfTbody where Wrapped: ChildOfTbody {}

/// ---------------------- ///

public protocol VariationOfTbody {}
extension Tbody: VariationOfTbody {}

extension Array:       VariationOfTbody where Element: VariationOfTbody {}
extension Either:      VariationOfTbody where Left: VariationOfTbody, Right: VariationOfTbody {}
extension Empty:       VariationOfTbody {}
extension Optional:    VariationOfTbody where Wrapped: VariationOfTbody {}

/// ---------------------- ///

public protocol ChildOfTfoot {}
extension Tr: ChildOfTfoot where Content: VariationOfTd {}
extension Script: ChildOfTfoot {}
extension Noscript: ChildOfTfoot {}
extension Template: ChildOfTfoot {}
extension Comment: ChildOfTfoot {}

extension Either:      ChildOfTfoot where Left: ChildOfTfoot, Right: ChildOfTfoot {}
extension Empty:       ChildOfTfoot {}
extension Optional:    ChildOfTfoot where Wrapped: ChildOfTfoot {}

/// ---------------------- ///

public protocol VariationOfTfoot {}
extension Tfoot: VariationOfTfoot {}

extension Either:      VariationOfTfoot where Left: VariationOfTfoot, Right: VariationOfTfoot {}
extension Empty:       VariationOfTfoot {}
extension Optional:    VariationOfTfoot where Wrapped: VariationOfTfoot {}

/// ---------------------- ///

public protocol ChildOfThead {}
extension Tr: ChildOfThead where Content: VariationOfTh {}
extension Script: ChildOfThead {}
extension Noscript: ChildOfThead {}
extension Template: ChildOfThead {}
extension Comment: ChildOfThead {}

extension Either:      ChildOfThead where Left: ChildOfThead, Right: ChildOfThead {}
extension Empty:       ChildOfThead {}
extension Optional:    ChildOfThead where Wrapped: ChildOfThead {}

/// ---------------------- ///

public protocol VariationOfThead {}
extension Thead: VariationOfThead {}

extension Either:      VariationOfThead where Left: VariationOfThead, Right: VariationOfThead {}
extension Empty:       VariationOfThead {}
extension Optional:    VariationOfThead where Wrapped: VariationOfThead {}

/// ---------------------- ///

public protocol ChildOfTr {}
extension Script: ChildOfTr {}
extension Noscript: ChildOfTr {}
extension Template: ChildOfTr {}
extension Comment: ChildOfTr {}

extension Array:       ChildOfTr where Element: ChildOfTr {}
extension Either:      ChildOfTr where Left: ChildOfTr, Right: ChildOfTr {}
extension Empty:       ChildOfTr {}
extension Optional:    ChildOfTr where Wrapped: ChildOfTr {}

/// ---------------------- ///

public protocol VariationOfTh: ChildOfTr {}
extension Th: VariationOfTh {}

extension Array:       VariationOfTh where Element: VariationOfTh {}
extension Either:      VariationOfTh where Left: VariationOfTh, Right: VariationOfTh {}
extension Empty:       VariationOfTh {}
extension Optional:    VariationOfTh where Wrapped: VariationOfTh {}

/// ---------------------- ///

public protocol VariationOfTd: ChildOfTr {}
extension Td: VariationOfTd {}

extension Array:       VariationOfTd where Element: VariationOfTd {}
extension Either:      VariationOfTd where Left: VariationOfTd, Right: VariationOfTd {}
extension Empty:       VariationOfTd {}
extension Optional:    VariationOfTd where Wrapped: VariationOfTd {}

/// ---------------------- ///

public protocol ChildOfUl {}
extension Li: ChildOfUl {}
extension Script: ChildOfUl {}
extension Noscript: ChildOfUl {}
extension Template: ChildOfUl {}
extension Comment: ChildOfUl {}

extension Array:       ChildOfUl where Element: ChildOfUl {}
extension Either:      ChildOfUl where Left: ChildOfUl, Right: ChildOfUl {}
extension Empty:       ChildOfUl {}
extension Optional:    ChildOfUl where Wrapped: ChildOfUl {}

/// ---------------------- ///

public protocol IsVideo {}
extension Video: IsVideo {}

public protocol ChildOfVideo {}
extension Source: ChildOfVideo where Parent: IsVideo {}
extension Track: ChildOfVideo {}
extension Script: ChildOfVideo {}
extension Noscript: ChildOfVideo {}
extension Template: ChildOfVideo {}
extension Comment: ChildOfVideo {}

extension Array:       ChildOfVideo where Element: ChildOfVideo {}
extension Either:      ChildOfVideo where Left: ChildOfVideo, Right: ChildOfVideo {}
extension Empty:       ChildOfVideo {}
extension Optional:    ChildOfVideo where Wrapped: ChildOfVideo {}
