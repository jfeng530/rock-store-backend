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
    - [Back-End](#back-end-1)
- [Credits](#credits)
- [License](#license)

&nbsp;

# Overview
  ### Description
  Rock Shop is an e-commerce web application for purchasing rocks. It utilizes React with inline CSS for a dynamic and interactive user experience. Rock Shop manages user authentication, cart funtionality and purchases using JWT, localStorage and a Ruby on Rails backend.
  
  ### Features
  - View, sort and filter rocks by category, price, rating and rarity 
  - Create an account with unique username and password along with log-in/log-out functionality
  - Add and remove items to a cart where it will be saved and stored in backend
  - On log-in, user's most recent cart (along with its items) will be loaded and rendered
  - View previous purchases (with items, price and total)
  - Edit, update and delete user account information 
  
  ### Challenges
  - The data in the reference API used to create the back-end did not include season totals for players.
    - Required mapping over all players and comuting their season totals and thus their averages as well.
    - Had to account for a player that was traded mid-season (each team played for that year would represent a new instance of season)
    - Function written to compute season totals was an O(n²) algorithm
  - Simulation algorithm needed to return accurate and realistic statistics that reflect a player's performance from that year
    - Decided on 'Normal Probability Model' as foundation for algorithm
    - Used gems [Rubystats](https://github.com/phillbaker/rubystats) and [Ruby Native Statistics](https://github.com/corybuecker/ruby-native-statistics) to randomly generate a statistic based on normal distribution (relative to player's season performance)
    
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
  Rock Shop is built on React, Ruby, Ruby on Rails & PostgreSQL. Make sure you have the latest versions of all four components installed before cloning this repo. You can find their official installation guides below:
  - [React](https://reactjs.org/docs/getting-started.html)
  - [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
  - [Ruby On Rails](https://guides.rubyonrails.org/v5.0/getting_started.html)
  - [PostgreSQL](https://www.postgresqltutorial.com/)
  
  ### Instructions
  - Clone the most recent branch in this repository
  > Make sure you are in the project path before running the commands
  - Run `npm install` in your bash-enabled terminal to make sure all dependancies are installed
  - Run `npm start` to start and launch local server on your browser
  
  ### Back-End
  [Rock Shop Back-End](https://github.com/jfeng530/rock-store-backend)

&nbsp;

# Credits
  - [Noam Sauer-Utley](https://github.com/noamsauerutley)

# License
<a href="https://github.com/jfeng530/nba_frontend/blob/master/LICENSE"><img alt="GitHub license" src="https://img.shields.io/github/license/jfeng530/nba_frontend?color=blue"></a>

Copyright 2019 © [Jacky Feng](https://github.com/jfeng530)
