Scenario: Verify that allows creating the list of Users
When I set request headers:
|name        |value           |
|Content-Type|application/json|
Given request body:
[ 
 {
  "id": 2,
  "username": "testuser2",
  "firstName": "TestF2",
  "lastName": "TestL2",
  "email": "test2@qa.team",
  "password": "testPassword2",
  "phone": "123456728",
  "userStatus": 0
},
{
  "id": 3,
  "username": "testuser3",
  "firstName": "TestF3",
  "lastName": "TestL3",
  "email": "test3@qa.team",
  "password": "testPassword3",
  "phone": "123456783",
  "userStatus": 0
} 
]
When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/user/createWithList`
Then response code is = `200`

