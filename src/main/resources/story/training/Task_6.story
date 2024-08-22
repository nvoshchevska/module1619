Lifecycle:
Examples:
|userName|
|${swagGoodUserName}|
|${swagSlowUserName}|

Scenario: Log in 
Given I navigate to the SauceDemo page
When I login as a user with username `<userName>` and password `${swagPassword}`
Then number of elements found by `className(inventory_item)` is = `6`

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

Scenario: Validate number of items in the Shopping Bag
Given I navigate to the SauceDemo page
When I login as a user with username `${swagGoodUserName}` and password `${swagPassword}`
!-- And I hover mouse over element located `linkText(<itemPageId>)`
!-- Then text `<itemName>` exists
!-- When I click on element located by `id(<addToCartButtonId>)`
When I click on element located by `className(shopping_cart_badge)`
Then the page has the relative URL '/cart.html'
And number of elements found by `className(cart_item)` is = `2`

Examples:
|itemPageId|itemName|addToCartButtonId|itemCount|
|item-4-title-link|Sauce Labs Backpack|add-to-cart-sauce-labs-backpack|1|
|item-0-title-link|Sauce Labs Bike Light|add-to-cart-sauce-labs-bike-light|2|


Scenario: Log Out
Given I navigate to the SauceDemo page
When I login as a user with username `${swagGoodUserName}` and password `${swagPassword}`
And I click on element located by `className(bm-burger-button)`
And I click on element located by `linkText(reset_sidebar_link)`
And I click on element located by `linkText(logout_sidebar_link)`

