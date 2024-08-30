Scenario: Check the policies list
Given I am on main application page
When I scroll element located by `className(policies)` into view
And I click on element located by `className(policies)`
Then text `<policyOption>` exists
Examples:
|policyOption|
|INVESTORS|
|COOKIE POLICY|
|OPEN SOURCE|
|APPLICANT PRIVACY NOTICE|
|PRIVACY POLICY|
|WEB ACCESSIBILITY|
