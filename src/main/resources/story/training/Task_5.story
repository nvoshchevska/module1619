Scenario: Test Know Issue feature
Given I navigate to the SauceDemo page
When I login as a user with username `${swagLockedUserName}` and password `${swagPassword}`
And number of elements found by `className(inventory_item)` is = `6`

Scenario: Test Know Issue feature Bug2
Given I navigate to the SauceDemo page
When I login as a user with username `${swagGoodUserName}` and password `${swagPassword}`
Then number of elements found by `className(inventory_item)` is = `5`
