Scenario: Verify that allows removing an item from the card
Given I am on page with URL `https://demowebshop.tricentis.com/copy-of-tcp-self-paced-training-2`
When I click on element located by `id(add-to-cart-button-66)`
And I wait until element located by `id(bar-notification)` disappears
And I click on element located by `xpath(//div[@class="header-links"]//li[3]/a[1])`
Then page title is equal to `Demo Web Shop. Shopping Cart`
And number of elements found by `className(cart-item-row)` is = `1`
When I CHECK checkbox located by `fieldName(removefromcart)`
And I click on element located by `fieldName(updatecart)`
Then text `Your Shopping Cart is empty!` exists
