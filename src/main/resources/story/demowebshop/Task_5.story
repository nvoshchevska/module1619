Scenario: Verify that allows changing number of items on page
Given I am on main application page
And I initialize SCENARIO variable `OptionToSelect` with value `#{generate(options.option '4', '8', '12')}`
When I click on element located by `xpath(//div[contains(@class, "block block-category-navigation")]/div[contains(@class, "listbox")]//ul[@class="list"]//li[2]//a[1])`
When I click on element located by `xpath(//h2[contains(@class, "title")]//a[contains(@href, "/desktops")])`
Then page title is equal to `Demo Web Shop. Desktops`
And dropdown located by `id(products-pagesize)` contains options:
|item|state|
|4|false|
|8|true|
|12|false|
When I select `${OptionToSelect}` in dropdown located by `id(products-pagesize)`
Then dropdown located by `id(products-pagesize)` exists and selected option is `${OptionToSelect}`
