const helper = require("../cucumber-js/support/helper/browser_helper.js")
const {url} = require("../cucumber-js/support/constants/constant.js")
const homepage = function(browser) {

  const POPUP = '._2QfC02 button'
  const INPUT  = '._3704LK'
  const CL_BUTTON = '.L0Z3Pu'
  const URL = "https://flipkart.com"

  //Launch the flipkart browser
  this.lauchBrowser = function () {
      browser
      .windowMaximize()
      .url(URL)
      // .assert.urlContains("flipkart");
      
  }
  
  //Close login Popup
  this.closeLoginPopup = function () {
    helper(browser).clicker(POPUP)
    
  }
  
  //Search for the product
   this.searchProduct = function(prod) {

      helper(browser).enter_val(INPUT,prod)
      helper(browser).clicker(CL_BUTTON)
   }
  
   
  
   //Close the browser
   this.closeBrowser = function(){
       browser
       .pause(3000)
       .end();
   }
   return this;
  };
  module.exports = homepage;