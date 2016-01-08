## README

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

