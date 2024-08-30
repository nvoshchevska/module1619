Scenario: Check that allow to switch location list by region
Given I am on main application page
When I click on element located by `linkUrl(/register)`
Then the page has the relative URL '/register'
When I click on element located by `radioButton(#{generate(options.option 'Male','Female')})`
And I enter `#{generate(regexify '[A-Z]{1}[a-z]{4}')}` in field located by `id(FirstName)`
And I enter `#{generate(regexify '[A-Z]{1}[a-z]{4}')}` in field located by `id(LastName)`
And I enter `#{generate(regexify '[a-z]{4}@qa\.team')}` in field located by `id(Email)`
And I enter `testPassword123` in field located by `id(Password)`
And I enter `testPassword123` in field located by `id(ConfirmPassword)`
And I click on element located by `id(register-button)`
Then text `Your registration completed` exists
