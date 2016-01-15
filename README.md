## README
[![Coverage Status](https://coveralls.io/repos/jpkeane/super-rentals-api/badge.svg?branch=master&service=github)](https://coveralls.io/github/jpkeane/super-rentals-api?branch=master)
[![Build Status](https://codeship.com/projects/e1327510-9cd7-0133-9aee-22509ada1533/status?branch=master)](https://codeship.com/projects/127273)

This API is designed to provide a remote backing store to the official EmberJS tutorial application.

It is to be used for practise purposes as I am moving to API-first design.

### DevOps principles

#### General
- TDD with specs written before development (except model generators)

#### API
- JSONAPI will be used through jsonapi-resources

#### Data Store
- PostgreSQL used in Development, Testing and Production
- Migrations modified to reflect Foreign Keys, Nulls and Defaults
- Seeds written as rake tasks, seed data listed in YAML
- Join tables will be created explicitly
- Enums will be created as tables unless they will never change and are used for clarity of another field in the same table

#### Testing
- RSpec has been used using the attributes, relationships, validations, methods, factory template
- Shoulda matchers for clearer specs
- FactoryGirl for fixtures
- Faker for more realistic fixture data

#### Deployment
- CI through CodeShip hook to repo pushes
- CodeShip will push code coverage to Coveralls. https://coveralls.io/github/jpkeane/super-rentals-api
- Successful tests will cause a push to Heroku. https://super-rentals-api.herokuapp.com

