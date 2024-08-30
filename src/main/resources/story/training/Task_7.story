Scenario: Add items to the Shopping Bag
Given I navigate to the SauceDemo page
When I login as a user with username `${swagGoodUserName}` and password `${swagPassword}`
And I hover mouse over element located `linkText(<itemPageId>)`
Then text `<itemName>` exists
When I click on element located by `id(<addToCartButtonId>)`
Examples:
|itemPageId|itemName|addToCartButtonId|
|item-4-title-link|Sauce Labs Backpack|add-to-cart-sauce-labs-backpack|
|item-0-title-link|Sauce Labs Bike Light|add-to-cart-sauce-labs-bike-light|

Scenario: Populate Checkout Data and finish Checkout
Given I navigate to the SauceDemo page
When I login as a user with username `${swagGoodUserName}` and password `${swagPassword}`
And I click on element located by `className(shopping_cart_badge)`
Then the page has the relative URL '/cart.html'
When I click on element located by `id(checkout)`
Then the page has the relative URL '/checkout-step-one.html'
When I enter `#{generate(regexify '[A-Z]{1}[a-z]{4}')}` in field located by `id(first-name)`
And I enter `#{generate(regexify '[A-Z]{1}[a-z]{4}')}` in field located by `id(last-name)`
And I enter `#{generate(regexify '[A-Z]{3}-[2-8]{5}')}` in field located by `id(postal-code)`
And I take screenshot
And I click on element located by `id(continue)`
And I click on element located by `id(finish)`
Then the page has the relative URL '/checkout-complete.html'
Given I initialize SCENARIO variable `finalText` with value `Thank you for your order!`
And I initialize SCENARIO variable `baselineText` with value `#{loadResource(/data/message.txt)}`
Then `${finalText}` is = `${baselineText}`
