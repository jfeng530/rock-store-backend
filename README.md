# Rock Shop
<p>
  <img align="center" src="https://img.shields.io/badge/PostgreSQL-12.1-336791">
  <img align="center" src="https://img.shields.io/badge/React-16.12.0-61DAFB">
  <img align="center" src="https://img.shields.io/badge/Ruby-2.6.1-CC342D">
  <img align="center" src="https://img.shields.io/badge/Ruby%20On%20Rails-6.0.1-cc0600">
</p>

# Contents
- [Overview](#overview)
  - [Description](#description)
  - [Features](#features)
  - [Challenges](#challenges)
  - [Technologies & Frameworks](#technologies-and-frameworks)
- [Installation](#installation)
    - [Prerequisites](#prerequisites)
    - [Instructions](#instructions)
    - [Front-End](#front-end-1)
- [Credits](#credits)
- [License](#license)

&nbsp;

# Overview
  ### Description
  Rock Shop is an e-commerce web application for purchasing rocks. It utilizes React with inline CSS for a dynamic and interactive user experience. Rock Shop manages user authentication, cart funtionality and purchases using JWT, localStorage and a Ruby on Rails backend.
  
  ### Features
  - View, sort and filter rocks by category, price, rating and rarity 
  - Create an account with a unique username and password along with log-in/log-out functionality
  - Add and remove items to a cart where they will be saved and stored in backend
  - Upon logging in, the user's most recent cart (along with its items) will be loaded and rendered
  - View previous purchases (with items, price, and total)
  - Edit, update, and delete user account information 
  
  ### Challenges
  - Figuring out how the classes in the backend will interact with one another to form a fully functioning e-commerce application 
    - Individual cart items became a "joiner-class" (`Purchase`), joining the `Rock` class and the `Order` class
    - Every time an item is added to a cart, a `Purchase` instance is created with the specific `Rock` and the current `Order` (cart)
  - Rendering the current cart associated to user when user logs in
    - Using [JWT](https://www.jwt.io/) and [ActiveModelSerializers](https://github.com/rails-api/active_model_serializers), token, user information and cart information is sent to the front-end to render the correct user along with their current cart
    
  ### Technologies and Frameworks
  #### Front-End
  - [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
  - [React](https://reactjs.org/)
  - [React Router](https://reacttraining.com/react-router/)
  
  #### Back-End
  - [Ruby](https://www.ruby-lang.org/en/)
  - [Ruby on Rails](https://www.rubyonrails.org/)
  - [PostgreSQL](https://www.postgresql.org/)
  - [JWT](https://www.jwt.io/)
  - [bcrypt-ruby](https://github.com/codahale/bcrypt-ruby)
  - [ActiveModelSerializers](https://github.com/rails-api/active_model_serializers)

&nbsp;
 
# Installation
  ### Prerequisites
  Rock Shop is built on React, Ruby, Ruby on Rails and PostgreSQL. Make sure you have the latest versions of all four components installed before cloning this repo. You can find their official installation guides below:
  - [React](https://reactjs.org/docs/getting-started.html)
  - [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
  - [Ruby On Rails](https://guides.rubyonrails.org/v5.0/getting_started.html)
  - [PostgreSQL](https://www.postgresqltutorial.com/)
  
  ### Instructions
  - Clone the most recent branch in this repository
  > Make sure you are in the project path before running the commands
  - Run `bundle install` in your bash-enabled terminal to make sure all dependancies are installed
  - Run `rails db:create` to create a local PostgreSQL database
  - Run `rails db:migrate` to create the schema for said database
  - Run `rails db:seed` to seed the database
  - Run `rails s` to start up a local server
  
  ### Front-End
  [Rock Shop Front-End](https://github.com/jfeng530/rock-shop-frontend)

&nbsp;

# Credits
  - [Noam Sauer-Utley](https://github.com/noamsauerutley)

# License
<a href="https://github.com/jfeng530/rock-store-backend/blob/master/LICENSE"><img alt="GitHub license" src="https://img.shields.io/github/license/jfeng530/rock-store-backend?color=blue"></a>

Copyright 2019 © [Jacky Feng](https://github.com/jfeng530)
