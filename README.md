## THE GENTLEMAN API
The gentleman api is an RESTful API built with Rails and JWT. It exposes some useful endpoints that include the functionality of authenticating users and encrypting their credentials using the JsonWebToken standard. Once a user is authorized/ or signed/signedup, they can have access to the entirety of the gentleman API's endpoints. For more information please read the [the-gentleman-api documentation](https://) and have controller any of our endpoints enjoy!

### Entity Relationship Diagram:
![erd](/assets/entity_relationship_diagram.png)

### This API exposes the following endpoints:

| Endpoint                | Functionality                |
|-------------------------|------------------------------|
| POST /signup            | Signup                       |
| POST /auth/login        | Login                        |
| GET /suits              | List all suits               |
| POST /suits             | Create a new suit            |
| GET /suits/:id          | View a single suit           |
| DELETE /suits/:id       | Delete a suit                |
| PUT /suits/:id          | Update a suit                |
| POST /appointments      | Add an appointment           |
| GET /appointments       | Get user appointments cars   |
