# README

Example to product catalog with the shopping cart option, for this example try to build the application in react Frontend and ruby and rails backend

# Versions
* Rails version 6.1.6
* Ruby version '2.7.6'
### OS
* Windows 10 

# Configuration
* rails new api_rails --api -d mysql
* rails db:create
* rails db:migrate
* rails db:seed
* Add Annotate by model's description in the Gemfile
    - gem 'annotate'

### Modelos
* Productos:
    - rails g scaffold Product name:string description:string img_url:string stock:integer 'price:decimal{10,2}'
* User:
    - rails g model User username:string email:string password_digest:text token:text

# Database creation
* mysql



* Deployment instructions

* ...
