GivenStories: story/demowebshop/Task_2.story

Scenario: Verify that allows checkout an item 
Given I am on page with URL `https://demowebshop.tricentis.com/copy-of-tcp-self-paced-training-2`
When I click on element located by `id(add-to-cart-button-66)`
And I wait until element located by `id(bar-notification)` disappears
And I click on element located by `xpath(//div[@class="header-links"]//li[3]/a[1])`
Then page title is equal to `Demo Web Shop. Shopping Cart`
And number of elements found by `className(cart-item-row)` is >= `1`
When I CHECK checkbox located by `id(termsofservice)`
And I click on element located by `id(checkout)`
Then the page has the relative URL '/onepagecheckout'
And page title is equal to `Demo Web Shop. Checkout`
