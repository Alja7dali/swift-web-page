final class AriaTests: XCTestCase {
  func testAriaAttributes() {
    XCTAssertEqual("<div aria-activedescendant=\"id\"></div>", div().ariaActivedescendant("id").render())

    XCTAssertEqual("<div aria-atomic=\"true\"></div>", div().ariaAtomic(true).render())
    XCTAssertEqual("<div aria-atomic=\"false\"></div>", div().ariaAtomic(false).render())

    XCTAssertEqual("<div aria-autocomplete=\"both\"></div>", div().ariaAutocomplete(.both).render())
    XCTAssertEqual("<div aria-autocomplete=\"inline\"></div>", div().ariaAutocomplete(.inline).render())
    XCTAssertEqual("<div aria-autocomplete=\"list\"></div>", div().ariaAutocomplete(.list).render())
    XCTAssertEqual("<div aria-autocomplete=\"none\"></div>", div().ariaAutocomplete(.none).render())

    XCTAssertEqual("<div aria-busy=\"true\"></div>", div().ariaBusy(true).render())
    XCTAssertEqual("<div aria-busy=\"false\"></div>", div().ariaBusy(false).render())

    XCTAssertEqual("<div aria-checked=\"false\"></div>", div().ariaChecked(.false).render())
    XCTAssertEqual("<div aria-checked=\"mixed\"></div>", div().ariaChecked(.mixed).render())
    XCTAssertEqual("<div aria-checked=\"true\"></div>", div().ariaChecked(.true).render())
    XCTAssertEqual("<div aria-checked=\"undefined\"></div>", div().ariaChecked(.undefined).render())
    XCTAssertEqual("<div aria-checked=\"false\"></div>", div().ariaChecked(false).render())
    XCTAssertEqual("<div aria-checked=\"true\"></div>", div().ariaChecked(true).render())

    XCTAssertEqual("<div aria-colcount=\"2\"></div>", div().ariaColcount(2).render())

    XCTAssertEqual("<div aria-colindex=\"2\"></div>", div().ariaColindex(2).render())

    XCTAssertEqual("<div aria-colspan=\"2\"></div>", div().ariaColspan(2).render())

    XCTAssertEqual("<div aria-controls=\"id\"></div>", div().ariaControls("id").render())

    XCTAssertEqual("<div aria-current=\"date\"></div>", div().ariaCurrent(.date).render())
    XCTAssertEqual("<div aria-current=\"false\"></div>", div().ariaCurrent(.false).render())
    XCTAssertEqual("<div aria-current=\"location\"></div>", div().ariaCurrent(.location).render())
    XCTAssertEqual("<div aria-current=\"page\"></div>", div().ariaCurrent(.page).render())
    XCTAssertEqual("<div aria-current=\"step\"></div>", div().ariaCurrent(.step).render())
    XCTAssertEqual("<div aria-current=\"time\"></div>", div().ariaCurrent(.time).render())
    XCTAssertEqual("<div aria-current=\"true\"></div>", div().ariaCurrent(.true).render())
    XCTAssertEqual("<div aria-current=\"false\"></div>", div().ariaCurrent(false).render())
    XCTAssertEqual("<div aria-current=\"true\"></div>", div().ariaCurrent(true).render())

    XCTAssertEqual("<div aria-describedby=\"id\"></div>", div().ariaDescribedby("id").render())

    XCTAssertEqual("<div aria-details=\"id\"></div>", div().ariaDetails("id").render())

    XCTAssertEqual("<div aria-disabled=\"false\"></div>", div().ariaDisabled(false).render())
    XCTAssertEqual("<div aria-disabled=\"true\"></div>", div().ariaDisabled(true).render())

    XCTAssertEqual("<div aria-dropeffect=\"copy\"></div>", div().ariaDropeffect(.copy).render())
    XCTAssertEqual("<div aria-dropeffect=\"execute\"></div>", div().ariaDropeffect(.execute).render())
    XCTAssertEqual("<div aria-dropeffect=\"link\"></div>", div().ariaDropeffect(.link).render())
    XCTAssertEqual("<div aria-dropeffect=\"move\"></div>", div().ariaDropeffect(.move).render())
    XCTAssertEqual("<div aria-dropeffect=\"none\"></div>", div().ariaDropeffect(.none).render())
    XCTAssertEqual("<div aria-dropeffect=\"popup\"></div>", div().ariaDropeffect(.popup).render())

    XCTAssertEqual("<div aria-errormessage=\"error!\"></div>", div().ariaErrormessage("error!").render())

    XCTAssertEqual("<div aria-expanded=\"false\"></div>", div().ariaExpanded(.false).render())
    XCTAssertEqual("<div aria-expanded=\"true\"></div>", div().ariaExpanded(.true).render())
    XCTAssertEqual("<div aria-expanded=\"undefined\"></div>", div().ariaExpanded(.undefined).render())
    XCTAssertEqual("<div aria-expanded=\"false\"></div>", div().ariaExpanded(false).render())
    XCTAssertEqual("<div aria-expanded=\"true\"></div>", div().ariaExpanded(true).render())

    XCTAssertEqual("<div aria-flowto=\"id\"></div>", div().ariaFlowto("id").render())

    XCTAssertEqual("<div aria-grabbed=\"false\"></div>", div().ariaGrabbed(.false).render())
    XCTAssertEqual("<div aria-grabbed=\"true\"></div>", div().ariaGrabbed(.true).render())
    XCTAssertEqual("<div aria-grabbed=\"undefined\"></div>", div().ariaGrabbed(.undefined).render())
    XCTAssertEqual("<div aria-grabbed=\"false\"></div>", div().ariaGrabbed(false).render())
    XCTAssertEqual("<div aria-grabbed=\"true\"></div>", div().ariaGrabbed(true).render())

    XCTAssertEqual("<div aria-haspopup=\"dialog\"></div>", div().ariaHaspopup(.dialog).render())
    XCTAssertEqual("<div aria-haspopup=\"false\"></div>", div().ariaHaspopup(.false).render())
    XCTAssertEqual("<div aria-haspopup=\"grid\"></div>", div().ariaHaspopup(.grid).render())
    XCTAssertEqual("<div aria-haspopup=\"listbox\"></div>", div().ariaHaspopup(.listbox).render())
    XCTAssertEqual("<div aria-haspopup=\"menu\"></div>", div().ariaHaspopup(.menu).render())
    XCTAssertEqual("<div aria-haspopup=\"tree\"></div>", div().ariaHaspopup(.tree).render())
    XCTAssertEqual("<div aria-haspopup=\"false\"></div>", div().ariaHaspopup(false).render())
    XCTAssertEqual("<div aria-haspopup=\"menu\"></div>", div().ariaHaspopup(true).render())

    XCTAssertEqual("<div aria-hidden=\"false\"></div>", div().ariaHidden(.false).render())
    XCTAssertEqual("<div aria-hidden=\"true\"></div>", div().ariaHidden(.true).render())
    XCTAssertEqual("<div aria-hidden=\"undefined\"></div>", div().ariaHidden(.undefined).render())
    XCTAssertEqual("<div aria-hidden=\"false\"></div>", div().ariaHidden(false).render())
    XCTAssertEqual("<div aria-hidden=\"true\"></div>", div().ariaHidden(true).render())

    XCTAssertEqual("<div aria-invalid=\"false\"></div>", div().ariaInvalid(.false).render())
    XCTAssertEqual("<div aria-invalid=\"grammar\"></div>", div().ariaInvalid(.grammar).render())
    XCTAssertEqual("<div aria-invalid=\"spelling\"></div>", div().ariaInvalid(.spelling).render())
    XCTAssertEqual("<div aria-invalid=\"true\"></div>", div().ariaInvalid(.true).render())
    XCTAssertEqual("<div aria-invalid=\"false\"></div>", div().ariaInvalid(false).render())
    XCTAssertEqual("<div aria-invalid=\"true\"></div>", div().ariaInvalid(true).render())

    XCTAssertEqual("<div aria-keyshortcuts=\"id\"></div>", div().ariaKeyshortcuts("id").render())

    XCTAssertEqual("<div aria-label=\"id\"></div>", div().ariaLabel("id").render())

    XCTAssertEqual("<div aria-labelledby=\"id\"></div>", div().ariaLabelledby("id").render())

    XCTAssertEqual("<div aria-level=\"2\"></div>", div().ariaLevel(2).render())

    XCTAssertEqual("<div aria-live=\"assertive\"></div>", div().ariaLive(.assertive).render())
    XCTAssertEqual("<div aria-live=\"off\"></div>", div().ariaLive(.off).render())
    XCTAssertEqual("<div aria-live=\"polite\"></div>", div().ariaLive(.polite).render())

    XCTAssertEqual("<div aria-modal=\"false\"></div>", div().ariaModal(false).render())
    XCTAssertEqual("<div aria-modal=\"true\"></div>", div().ariaModal(true).render())

    XCTAssertEqual("<div aria-multiline=\"false\"></div>", div().ariaMultiline(false).render())
    XCTAssertEqual("<div aria-multiline=\"true\"></div>", div().ariaMultiline(true).render())

    XCTAssertEqual("<div aria-multiselectable=\"false\"></div>", div().ariaMultiselectable(false).render())
    XCTAssertEqual("<div aria-multiselectable=\"true\"></div>", div().ariaMultiselectable(true).render())

    XCTAssertEqual("<div aria-orientation=\"horizontal\"></div>", div().ariaOrientation(.horizontal).render())
    XCTAssertEqual("<div aria-orientation=\"undefined\"></div>", div().ariaOrientation(.undefined).render())
    XCTAssertEqual("<div aria-orientation=\"vertical\"></div>", div().ariaOrientation(.vertical).render())

    XCTAssertEqual("<div aria-owns=\"id\"></div>", div().ariaOwns("id").render())

    XCTAssertEqual("<div aria-placeholder=\"id\"></div>", div().ariaPlaceholder("id").render())

    XCTAssertEqual("<div aria-posinset=\"2\"></div>", div().ariaPosinset(2).render())

    XCTAssertEqual("<div aria-pressed=\"false\"></div>", div().ariaPressed(.false).render())
    XCTAssertEqual("<div aria-pressed=\"mixed\"></div>", div().ariaPressed(.mixed).render())
    XCTAssertEqual("<div aria-pressed=\"true\"></div>", div().ariaPressed(.true).render())
    XCTAssertEqual("<div aria-pressed=\"undefined\"></div>", div().ariaPressed(.undefined).render())
    XCTAssertEqual("<div aria-pressed=\"false\"></div>", div().ariaPressed(false).render())
    XCTAssertEqual("<div aria-pressed=\"true\"></div>", div().ariaPressed(true).render())

    XCTAssertEqual("<div aria-readonly=\"false\"></div>", div().ariaReadonly(false).render())
    XCTAssertEqual("<div aria-readonly=\"true\"></div>", div().ariaReadonly(true).render())

    XCTAssertEqual("<div aria-relevant></div>", div().ariaRelevant([]).render())
    XCTAssertEqual("<div aria-relevant=\"all\"></div>", div().ariaRelevant([.all]).render())
    XCTAssertEqual("<div aria-relevant=\"additions removals\"></div>", div().ariaRelevant([.additions, .removals]).render())

    XCTAssertEqual("<div aria-required=\"false\"></div>", div().ariaRequired(false).render())
    XCTAssertEqual("<div aria-required=\"true\"></div>", div().ariaRequired(true).render())

    XCTAssertEqual("<div aria-roledescription=\"id\"></div>", div().ariaRoledescription("id").render())

    XCTAssertEqual("<div aria-rowcount=\"2\"></div>", div().ariaRowcount(2).render())

    XCTAssertEqual("<div aria-rowindex=\"2\"></div>", div().ariaRowindex(2).render())

    XCTAssertEqual("<div aria-rowspan=\"2\"></div>", div().ariaRowspan(2).render())

    XCTAssertEqual("<div aria-selected=\"false\"></div>", div().ariaSelected(.false).render())
    XCTAssertEqual("<div aria-selected=\"true\"></div>", div().ariaSelected(.true).render())
    XCTAssertEqual("<div aria-selected=\"undefined\"></div>", div().ariaSelected(.undefined).render())
    XCTAssertEqual("<div aria-selected=\"false\"></div>", div().ariaSelected(false).render())
    XCTAssertEqual("<div aria-selected=\"true\"></div>", div().ariaSelected(true).render())

    XCTAssertEqual("<div aria-rowspan=\"2\"></div>", div().ariaRowspan(2).render())

    XCTAssertEqual("<div aria-setsize=\"2\"></div>", div().ariaSetsize(2).render())

    XCTAssertEqual("<div aria-sort=\"ascending\"></div>", div().ariaSort(.ascending).render())
    XCTAssertEqual("<div aria-sort=\"descending\"></div>", div().ariaSort(.descending).render())
    XCTAssertEqual("<div aria-sort=\"none\"></div>", div().ariaSort(.none).render())
    XCTAssertEqual("<div aria-sort=\"other\"></div>", div().ariaSort(.other).render())

    XCTAssertEqual("<div aria-valuemax=\"1.2\"></div>", div().ariaValuemax(1.2).render())

    XCTAssertEqual("<div aria-valuemin=\"1.2\"></div>", div().ariaValuemin(1.2).render())

    XCTAssertEqual("<div aria-valuenow=\"1.2\"></div>", div().ariaValuenow(1.2).render())

    XCTAssertEqual("<div aria-valuetext=\"1.2\"></div>", div().ariaValuetext("1.2").render())

    XCTAssertEqual("<div role=\"alert\"></div>", div().role(.alert).render())
    XCTAssertEqual("<div role=\"alertdialog\"></div>", div().role(.alertdialog).render())
    XCTAssertEqual("<div role=\"application\"></div>", div().role(.application).render())
    XCTAssertEqual("<div role=\"article\"></div>", div().role(.article).render())
    XCTAssertEqual("<div role=\"banner\"></div>", div().role(.banner).render())
    XCTAssertEqual("<div role=\"button\"></div>", div().role(.button).render())
    XCTAssertEqual("<div role=\"cell\"></div>", div().role(.cell).render())
    XCTAssertEqual("<div role=\"checkbox\"></div>", div().role(.checkbox).render())
    XCTAssertEqual("<div role=\"columnheader\"></div>", div().role(.columnheader).render())
    XCTAssertEqual("<div role=\"combobox\"></div>", div().role(.combobox).render())
    XCTAssertEqual("<div role=\"complementary\"></div>", div().role(.complementary).render())
    XCTAssertEqual("<div role=\"contentinfo\"></div>", div().role(.contentinfo).render())
    XCTAssertEqual("<div role=\"definition\"></div>", div().role(.definition).render())
    XCTAssertEqual("<div role=\"dialog\"></div>", div().role(.dialog).render())
    XCTAssertEqual("<div role=\"directory\"></div>", div().role(.directory).render())
    XCTAssertEqual("<div role=\"document\"></div>", div().role(.document).render())
    XCTAssertEqual("<div role=\"feed\"></div>", div().role(.feed).render())
    XCTAssertEqual("<div role=\"figure\"></div>", div().role(.figure).render())
    XCTAssertEqual("<div role=\"form\"></div>", div().role(.form).render())
    XCTAssertEqual("<div role=\"grid\"></div>", div().role(.grid).render())
    XCTAssertEqual("<div role=\"gridcell\"></div>", div().role(.gridcell).render())
    XCTAssertEqual("<div role=\"group\"></div>", div().role(.group).render())
    XCTAssertEqual("<div role=\"heading\"></div>", div().role(.heading).render())
    XCTAssertEqual("<div role=\"img\"></div>", div().role(.img).render())
    XCTAssertEqual("<div role=\"link\"></div>", div().role(.link).render())
    XCTAssertEqual("<div role=\"list\"></div>", div().role(.list).render())
    XCTAssertEqual("<div role=\"listbox\"></div>", div().role(.listbox).render())
    XCTAssertEqual("<div role=\"listitem\"></div>", div().role(.listitem).render())
    XCTAssertEqual("<div role=\"log\"></div>", div().role(.log).render())
    XCTAssertEqual("<div role=\"main\"></div>", div().role(.main).render())
    XCTAssertEqual("<div role=\"marquee\"></div>", div().role(.marquee).render())
    XCTAssertEqual("<div role=\"math\"></div>", div().role(.math).render())
    XCTAssertEqual("<div role=\"menu\"></div>", div().role(.menu).render())
    XCTAssertEqual("<div role=\"menubar\"></div>", div().role(.menubar).render())
    XCTAssertEqual("<div role=\"menuitem\"></div>", div().role(.menuitem).render())
    XCTAssertEqual("<div role=\"menuitemcheckbox\"></div>", div().role(.menuitemcheckbox).render())
    XCTAssertEqual("<div role=\"menuitemradio\"></div>", div().role(.menuitemradio).render())
    XCTAssertEqual("<div role=\"navigation\"></div>", div().role(.navigation).render())
    XCTAssertEqual("<div role=\"none\"></div>", div().role(.none).render())
    XCTAssertEqual("<div role=\"note\"></div>", div().role(.note).render())
    XCTAssertEqual("<div role=\"option\"></div>", div().role(.option).render())
    XCTAssertEqual("<div role=\"presentation\"></div>", div().role(.presentation).render())
    XCTAssertEqual("<div role=\"progressbar\"></div>", div().role(.progressbar).render())
    XCTAssertEqual("<div role=\"radio\"></div>", div().role(.radio).render())
    XCTAssertEqual("<div role=\"radiogroup\"></div>", div().role(.radiogroup).render())
    XCTAssertEqual("<div role=\"region\"></div>", div().role(.region).render())
    XCTAssertEqual("<div role=\"row\"></div>", div().role(.row).render())
    XCTAssertEqual("<div role=\"rowgroup\"></div>", div().role(.rowgroup).render())
    XCTAssertEqual("<div role=\"rowheader\"></div>", div().role(.rowheader).render())
    XCTAssertEqual("<div role=\"scrollbar\"></div>", div().role(.scrollbar).render())
    XCTAssertEqual("<div role=\"search\"></div>", div().role(.search).render())
    XCTAssertEqual("<div role=\"searchbox\"></div>", div().role(.searchbox).render())
    XCTAssertEqual("<div role=\"separator\"></div>", div().role(.separator).render())
    XCTAssertEqual("<div role=\"slider\"></div>", div().role(.slider).render())
    XCTAssertEqual("<div role=\"spinbutton\"></div>", div().role(.spinbutton).render())
    XCTAssertEqual("<div role=\"status\"></div>", div().role(.status).render())
    XCTAssertEqual("<div role=\"switch\"></div>", div().role(.switch).render())
    XCTAssertEqual("<div role=\"tab\"></div>", div().role(.tab).render())
    XCTAssertEqual("<div role=\"table\"></div>", div().role(.table).render())
    XCTAssertEqual("<div role=\"tablist\"></div>", div().role(.tablist).render())
    XCTAssertEqual("<div role=\"tabpanel\"></div>", div().role(.tabpanel).render())
    XCTAssertEqual("<div role=\"term\"></div>", div().role(.term).render())
    XCTAssertEqual("<div role=\"textbox\"></div>", div().role(.textbox).render())
    XCTAssertEqual("<div role=\"timer\"></div>", div().role(.timer).render())
    XCTAssertEqual("<div role=\"toolbar\"></div>", div().role(.toolbar).render())
    XCTAssertEqual("<div role=\"tooltip\"></div>", div().role(.tooltip).render())
    XCTAssertEqual("<div role=\"tree\"></div>", div().role(.tree).render())
    XCTAssertEqual("<div role=\"treegrid\"></div>", div().role(.treegrid).render())
    XCTAssertEqual("<div role=\"treeitem\"></div>", div().role(.treeitem).render())
  }

  static var allTests = [
    ("testAriaAttributes", testAriaAttributes),
  ]
}