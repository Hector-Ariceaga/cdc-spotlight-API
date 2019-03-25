# Spotlight API
Your go to web application for viewing and contributing to articles!

## Installation
This back-end was designed to work with the following [react client](https://github.com/Hector-Ariceaga/cdc-spotlight-client-v1).

Clone this repository into the same root directory as the client folder.

Run the following:
```
rails db:create
rails db:migrate
rails db:seed
rake start
```

## Version
This is version 1.0, which contains the following:

* Models, routes, and controllers for articles and comments
* Basic tests for CRUD functionality of articles and comments

## Dependencies
This API uses PostgreSQL for it's database, RSPEC for testing, and the following gems:

PRODUCTION
* ruby '2.6.0'
* rails '~> 5.2.2'
* rack-cors
* foreman
* bootstrap

TESTING
* rspec-rails
* factory_bot_rails
* database_cleaner
* faker
* cabybara
* shoulda-matchers
* rails-controller-testing

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/Hector-Ariceaga/cdc-spotlight-API. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

## License
The API is available as open source under the terms of the MIT License.

## Code of Conduct
Everyone interacting in the Spotlight project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.
