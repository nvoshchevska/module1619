Scenario: Check that allow to change language to UA
Given I am on main application page
And I initialize SCENARIO variable `expectedlanguage` with value `Україна (UA)`
When I click on element located by `className(location-selector__button-language)`
And I click on element located by `linkUrl(https://careers.epam.ua)`
Then the page with the URL 'https://careers.epam.ua/' is loaded
When I save text of element located by `className(location-selector__button)` to SCENARIO variable `actualLanguage`
Then `${expectedlanguage}` is = `${actualLanguage}`
