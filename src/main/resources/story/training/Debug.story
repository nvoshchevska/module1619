GivenStories: story/pet_api/Task_2.story 

When I set request headers:
|name        |value |
|Accept|application/json|
|Content-Type |multipart/form-data|
Given multipart request:
|type  |name      |value                 |contentType|fileName|
|binary |file      |C:/repo/vividus_training_runtest/vividus-training/src/main/resources/data/dog.png|image/png |dog.png|
|string|additionalMetadata|white dog     |||
When I execute HTTP POST request for resource with URL `https://petstore.swagger.io/v2/pet/1/uploadImage`
Then response code is = `200`
