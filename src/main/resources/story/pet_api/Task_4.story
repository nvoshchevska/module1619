GivenStories: story/pet_api/Task_2.story 

Scenario: Verify that allows Log out User
When I set request headers:
|name        |value           |
|Content-Type|application/json|
When I execute HTTP GET request for resource with URL `https://petstore.swagger.io/v2/user/logout`
Then response code is = `200`