Scenario: Verify that allows login a User
Given I am on main application page
When I click on element located by `linkUrl(/login)`
Then the page has the relative URL '/login'
When I enter `<userEmail>` in field located by `id(Email)`
And I enter `<userPassword>` in field located by `id(Password)`
And I click on element located by `xpath(//input[contains(@class, "button-1 login-button")])`
Then text `<userEmail>` exists

Examples:
|userEmail|userPassword|
|test@qa.team|testPassword123|
