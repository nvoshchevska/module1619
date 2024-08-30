Scenario: Check the ability to switch Light / Dark mode
Given I am on main application page
When I click on element located by `className(theme-switcher-ui)`
Then the text 'Dark Mode' does not exist
And text `Light Mode` exists
