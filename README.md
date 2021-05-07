## THE GENTLEMAN API
The gentleman api is an RESTful API built with Rails and JWT. It exposes some useful endpoints that include the functionality of authenticating users and encrypting their credentials using the JsonWebToken standard. Once a user is authorized/ or signed/signedup, they can have access to the entirety of the gentleman API's endpoints. For more information please read the [the-gentleman-api documentation](https://documenter.getpostman.com/view/13879644/TzRRBnep) and have controller any of our endpoints enjoy!

### Entity Relationship Diagram:
![erd](/assets/entity_relationship_diagram.png)

### This API exposes the following endpoints:

> Base URL https://the-gentleman-api.herokuapp.com/

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
| GET /appointments       | Get user appointments        |

## API Documentation
[Gentleman API Documentation](https://documenter.getpostman.com/view/13879644/TzRRBnep)


## Project SetUp
You can clone the project on your local machine by running:

- `git clone https://github.com/ClaytonSiby/gentleman-api.git`
then:
-  `cd gentleman-api`

### install all dependencies by running:
- `bundle install`

- you can run all tests for this project using `bin/bundle exec rspec` from the command line.

## Author 

👤 **Clayton Siby**

- Github: [@ClaytonSiby](https://github.com/ClaytonSiby)
   
- Linkedin: [Linkedin Profile](https://www.linkedin.com/in/clayton-siby-48a8a0183/)

- Twitter: [@Twitter](https://twitter.com/ClaytonSiby)

## :handshake: Contributing 

* Contributions, issues and feature requests are welcome! Feel free to check the [issues page](https://github.com/ClaytonSiby/gentleman-api/issues)
- To contribute to this project:
- Fork this repository & clone locally.
- Create an upstream remote and sync your local copy.
- Create a new branch.
- Push your code to your origin repository.
- Create a new Pull Request .

## Show your support

Give a ⭐️ if you like this project!
