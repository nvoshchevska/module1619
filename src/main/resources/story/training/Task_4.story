Scenario: Navigate to the website homepage
Given I navigate to the SauceDemo page
When I ${baselineAction} baseline with name `loginPage` ignoring:
|ACCEPTABLE_DIFF_PERCENTAGE|
|5|

Scenario:Login as a Good User
Given I navigate to the SauceDemo page
When I login as a user with username `${swagGoodUserName}` and password `${swagPassword}`
And I ${baselineAction} baseline with name `homePage` ignoring:
|ELEMENT|
|By.xpath(//*[@class='inventory_item_img'])|

Scenario:Login as a Broken User
Given I navigate to the SauceDemo page
When I login as a user with username `${swagBrokenUserName}` and password `${swagPassword}`
And I ${baselineAction} baseline with name `homePage` ignoring:
|ELEMENT|
|By.xpath(//*[@class='inventory_item_img'])|
