Heroku link: synapse-coder.herokuapp.com

*Built during Boston's 16th Launch Academy Cohort's Breakable Toy Weeks*
Synapse is a web platform that serves to connect businesses with developers. Developers will find a stream of projects to hone their programming skills, and businesses who don't have the recruiting infrastructure can access the developer job market.

To run this code on your local machine:

  $ git clone https://github.com/K9Advantix53/synapse-connection.git
  $ cd synapse-coder
  $ bundle install
  $ npm install
  $ rake db:create db:migrate db:seed
  $ rails s

  in another terminal window, run:

  $ npm start


*Main Features:*
-all CRUD actions
-vanilla css
-views rendered almost entirely in React
-fetch calls to Rails endpoints
-Rails on a Postgres database
-live chat using ActionCable
-Google maps API
-search engine built on React

*Technologies:*
-Ruby on Rails (Rails 5)
-React.js
-Devise
-RSpec
-Capybara
-PostgreSQL (ActiveRecord through Rails 5)
-ActionCable (Rails 5)
-Google Maps API
