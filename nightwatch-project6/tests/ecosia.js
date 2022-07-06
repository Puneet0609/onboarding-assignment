describe('Ecosia.org Demo', function() {

  before(browser => browser.navigateTo('"https://www.flipkart.com/"'));

  it('Demo test ecosia.org', function(browser) {
    browser
    .windowMaximize()
    .url("https://www.flipkart.com/")
    .assert.urlContains("flipkart")
    .click('._2QfC02 button')
    .setValue('._3704LK', 'iphone')
     .click('.L0Z3Pu')
     .assert.urlContains("/search?q=iphone")
  
  });

  after(browser => browser.end());
});
