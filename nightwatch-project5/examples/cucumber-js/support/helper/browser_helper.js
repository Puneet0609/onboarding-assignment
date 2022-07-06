const helper = function(browser) {

    this.clicker = function(selector) {
        browser
        //.waitForElementVisible(selector)
            .click(selector)
    }
    this.enter_val = function(selector, val) {
        browser
        //.waitForElementVisible(selector)
            .setValue(selector, val)
    }
    this.check_element = function(selector) {
        browser
        //.waitForElementVisible(selector)
            .expect.element(selector).text.to.contain('iPhone 13');

    }
    return this;
}
module.exports = helper;