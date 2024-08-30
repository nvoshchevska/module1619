Scenario: Chack form's fields validation
Given I am on page with URL `https://www.epam.com/about/who-we-are/contact`
When I click on element located by `fieldName(user_first_name)`
And I execute sequence of actions:
|type          |argument|
|PRESS_KEYS    |ENTER|
And I wait until element located by `xpath(//input[contains (@name, "user_first_name") and contains (@aria-invalid, "true")])` appears
And I wait until element located by `xpath(//input[contains (@name, "user_last_name") and contains (@aria-invalid, "true")])` appears
And I wait until element located by `xpath(//input[contains (@name, "user_email") and contains (@aria-invalid, "true")])` appears
And I wait until element located by `xpath(//input[contains (@name, "user_phone") and contains (@aria-invalid, "true")])` appears
And I wait until element located by `xpath(//input[contains (@name, "gdprConsent") and contains (@aria-invalid, "true")])` appears
And I wait until element located by `xpath(//span[contains(@aria-labelledby, "user_comment_how_hear_about-container") and contains(@aria-invalid, "true")])` appears