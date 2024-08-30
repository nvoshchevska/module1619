Scenario: Verify that allows adding a new Pet
When I set request headers:
|name        |value           |
|Content-Type|application/json|
Given request body:
{
  "id": 188990098,
  "category": {
    "id": 1,
    "name": "Dog"
  },
  "name": "A",
  "photoUrls": [
     ],
  "tags": [
    {
      "id": 1,
      "name": "tagA"
    }
  ],
  "status": "available"
}'
When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/pet`
Then response code is = `200`