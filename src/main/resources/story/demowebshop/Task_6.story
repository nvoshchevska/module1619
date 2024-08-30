Scenario: Verify that allows adding an item to the Wishlist
Given I am on page with URL `https://demowebshop.tricentis.com/copy-of-tcp-self-paced-training-2`
When I click on element located by `id(add-to-wishlist-button-66)`
And I wait until element located by `id(bar-notification)` disappears
And I click on element located by `className(wishlist-qty)`
Then page title is equal to `Demo Web Shop. Wishlist`
And number of elements found by `className(cart-item-row)` is = `1`
