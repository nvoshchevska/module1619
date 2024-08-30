Scenario: Verify that allows sorting items (different options)
Given I am on main application page
When I click on element located by `xpath(//div[contains(@class, "block block-category-navigation")]/div[contains(@class, "listbox")]//ul[@class="list"]//li[2]//a[1])`
When I click on element located by `xpath(//h2[contains(@class, "title")]//a[contains(@href, "/desktops")])`
Then page title is equal to `Demo Web Shop. Desktops`
And dropdown located by `id(products-orderby)` contains options:
|item|state|
|Position|true|
|Name: A to Z|false|
|Name: Z to A|false|
|Price: Low to High|false|
|Price: High to Low|false|
|Created on|false|
