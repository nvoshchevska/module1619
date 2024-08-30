Scenario: Verify that allows creating a User
When I set request headers:
|name        |value           |
|Content-Type|application/json|
Given request body:
{
  "id": 1,
  "username": "testuser1",
  "firstName": "TestF1",
  "lastName": "TestL1",
  "email": "test@qa.team",
  "password": "testPassword1",
  "phone": "12345678",
  "userStatus": 0
}
When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/user`
Then response code is = `200`

