Scenario: Check the search function
Given I am on main application page
When I click on element located by `cssSelector(.search-icon)`
And I enter `AI` in field located by `id(new_form_search)`
And I execute sequence of actions:
|type          |argument                                |
|PRESS_KEYS    |ENTER|
And I wait until element located by `className(search-results__title)` appears
Then text matches `[0-9].*[results].*`
