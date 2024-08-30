!-- GivenStories: /story/pet_api/Task_5.story
Scenario: Verify that allows updating Pet’s name and status

When I set request headers:
|name        |value |
|Accept|application/json|
|Content-Type |application/x-www-form-urlencoded|
Given form data request:
|name|value|
|name|NNN|
|status|available|
When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/pet/188990098`
Then response code is = `200`