# http://docs.angularjs.org/guide/dev_guide.e2e-testing
describe "my app", ->
  beforeEach ->
    browser().navigateTo "/"

  it "should automatically redirect to /view1 when location hash/fragment is empty", ->
    expect(browser().location().url()).toBe "/view1"


  describe "view1", ->
    beforeEach ->
      browser().navigateTo "/view1"

    it "should render view1 when user navigates to /view1", ->
      expect(element("[ng-view] p:first").text()).toMatch /partial for view 1/

  describe "view2", ->
    beforeEach ->
      browser().navigateTo "/view2"

    it "should render view2 when user navigates to /view2", ->
      expect(element("[ng-view] p:first").text()).toMatch /partial for view 2/
