Scenario: Verify that allows deleting Pet
When I set request headers:
|name        |value           |
|Content-Type|application/json|
When I execute HTTP DELETE request for resource with URL `https://petstore.swagger.io/v2/pet/188990098`
Then response code is = `200`