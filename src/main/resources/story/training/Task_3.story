Scenario: Navigate to the website main page
Given I navigate to the SauceDemo page

Scenario: Login as a good user
Given I navigate to the SauceDemo page
When I login as a user with username `standard_user` and password `secret_sauce`