Scenario: Verify that ‘Computers’ group has 3 sub-groups with correct names
Given I am on main application page
When I click on element located by `xpath(//div[contains(@class, "block block-category-navigation")]/div[contains(@class, "listbox")]//ul[@class="list"]//li[2]//a[1])`
Then each element with locator `xpath(//div[contains(@class, "page-body")]//div[contains(@class, "sub-category-grid")])` has `3` child elements with locator `xpath(//div[contains(@class, "item-box")])`
When I set focus on element located by `xpath(//h2[contains(@class, "title")]//a[contains(@href, "/desktops")])`
Then text `Desktops` exists
Then text `Notebooks` exists
Then text `Accessories` exists
