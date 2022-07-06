const helper = require("../cucumber-js/support/helper/browser_helper.js")

const prodpage = function(browser){
  const OUTPUT = '._4rR01T'
  //Verify search results
   this.verifySearchResults = function() {
    helper(browser).check_element(OUTPUT)
    
}
}
module.exports = prodpage;