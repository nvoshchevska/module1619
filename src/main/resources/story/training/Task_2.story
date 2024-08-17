GivenStories: story/demo/Homepage_Demo.story

Scenario: Log in as a Good User
When I enter `standard_user` in field located by `id(user-name)`
And I enter `secret_sauce` in field located by `id(password)`
And I click on element located by `id(login-button)`
Then the page has the relative URL '/inventory.html'
And number of elements found by `className(inventory_item)` is = `6`
When I take screenshot
