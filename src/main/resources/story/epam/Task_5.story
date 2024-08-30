Given I am on main application page
When I click on element located by `linkUrlPart(contact)`
Then the page has the relative URL '/about/who-we-are/contact'
When I scroll element located by `id(locations)` into view
When I save number of elements located by `xPath(//a[contains(@class, "tabs-23__link js-tabs-link")])` to scenario variable `numberOfLinks`
Then `${numberOfLinks}` is equal to `3`
Then text `AMERICAS` exists
And text `EMEA` exists
And text `APAC` exists

