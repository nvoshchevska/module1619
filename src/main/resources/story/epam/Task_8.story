Lifecycle:
Examples:
|epamAboutUrl|epamMainUrl|
|https://www.epam.com/about|https://www.epam.com/|

Scenario: Check that the Company logo on the header lead to the main page
Given I am on page with URL `<epamAboutUrl>`
When I click on element located by `className(header__logo-link)`
Then the page with the URL '<epamMainUrl>' is loaded
