# Project Name: Poll App (Backend)

## Description
This is a simple poll app backend. It is built using Ruby on Rails and PostgreSQL. It is a simple API that allows users to check out polls
It also uses GraphQL to query the database and return the data (witch is filled with dummy data at seed with Faker gem), For last it uses GraphiQL to test the queries in development. The idea here is just to show data to the user and don't allow him to create, edit or delete anything.

### Extra info
- This is the backend of the Poll App. The frontend is built with React. You can find it [here](https://github.com/LuisHernandezCoding/poll-app-frontend)

## Features
- Query polls
- Query Answers
- Query Users
- Query Votes

## Learning Outcomes
- How to build a simple API with Ruby on Rails
- How to use GraphQL instead of REST
- How to use GraphiQL to test the queries
- How to use Faker gem to seed the database with dummy data

## Built With
- Ruby on Rails
- PostgreSQL
- GraphQL
- GraphiQL
- Faker gem
- Rubocop
- Git
- Github
- VSCode

## Getting Started
To get a local copy up and running follow these simple example steps.

### Prerequisites
- Ruby
- Rails
- PostgreSQL
- Git

### Setup
- Clone the repository to your local machine
- Run `bundle install` to install the required gems
- Setup your database authentication in `config/database.yml`
- Run `rails db:create` to create the database
- Run `rails db:migrate` to migrate the database
- Run `rails db:seed` to seed the database with dummy data
- Run `rails server --port=5000` to start the server (port 5000 recommended to avoid conflicts with the frontend server)

### Usage
- Open `http://localhost:5000/graphiql` in your browser to test the queries

#### Queries
- To get all polls with their choices and votes count
```
query {
  polls {
    id
    question
    choices {
      choiceText
      votesCount
    }
  }
}
```
- To get a specific poll with its choices and votes count
```
query {
  poll(id: 1) {
    id
    question
    choices {
      choiceText
      votesCount
    }
  }
}
```
- To get all users with their polls and answers
```
query {
  users {
    id
    name
    email
    votes {
      choice {
        poll {
          question
        }
        choiceText
      }
    }
  }
}
```
- To get a specific user with his polls and answers
```
query {
  user(id: 1) {
    id
    name
    email
    votes {
      choice {
        poll {
          question
        }
        choiceText
      }
    }
  }
}
```
- To get all answers with their votes count
```
query {
  choices {
    id
    choiceText
    votesCount
  }
}
```
- To get a specific answer with its votes count
```
query {
  choice(id: 1) {
    id
    choiceText
    votesCount
  }
}
```
- To get all votes with their user and choice
```
query {
  votes {
    id
    user {
      name
    }
    choice {
      choiceText
    }
  }
}
```
- To get a specific vote with its user and choice
```
query {
  vote(id: 1) {
    id
    user {
      name
    }
    choice {
      choiceText
    }
  }
}
```

## Authors
👤 **Luis Hernandez**

- GitHub: [@LuisHernandezCoding](https://github.com/LuisHernandezCoding)
- LinkedIn: [Luis Hernandez](https://www.linkedin.com/in/luis-hernandez-coding/)
