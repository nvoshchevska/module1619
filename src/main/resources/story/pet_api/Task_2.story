Scenario: Verify that allows login as a User
When I set request headers:
|name        |value           |
|Content-Type|application/json|
When I execute HTTP GET request for resource with URL `https://petstore.swagger.io/v2/user/login?username=`<testuser>`&password=`<password>``
Then response code is = `200`

Examples:
|username|password|
|testuser1|testPassword1|