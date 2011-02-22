# TeamMate CMS

TeamMate is an open source content management system created for clan sites in Rails 3.

## Requirements

* [Bundler](http://gembundler.com)

## Installation

TeamMate is deployed just like every other Rails 3 app:  

- Clone this repository.
- Run bundler to install all dependecies:

      bundle install
- Edit databases.yml to match your database settings.
- Setup and migrate databases using rake:

      rake db:setup
      rake db:migrate
- Start the server

      rails s

## License

TeamMate CMS is released under the [MIT license](http://github.com/okonski/TeamMate/blob/master/license.md#readme).

