const { Given, When, Then } = require('@cucumber/cucumber')
const homepage = require('../../../pages/homepage.js')
const prodpage = require('../../../pages/prodpage.js')


Given('a User goes to Flipkart', function () {
  // Write code here that turns the phrase above into concrete actions
   homepage(browser).lauchBrowser()
  //return browser.navigateTo('https://flipkart.com');
});


When('they search for {string}', function(para){
    homepage(browser).closeLoginPopup()
    homepage(browser).searchProduct(para)
})


Then('Flipkart should return result for {string}', function (string) {
  // Write code here that turns the phrase above into concrete actions
  homepage(browser).closeBrowser()
});