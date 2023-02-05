module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # POLLS
    field :polls, [Types::PollType], null: false do
      description 'Get all polls'
    end

    def polls
      Poll.all
    end

    field :poll, Types::PollType, null: false do
      description 'Get a poll by id'
      argument :id, ID, required: true
    end

    def poll(id:)
      Poll.find(id)
    end

    # USERS
    field :users, [Types::UserType], null: false do
      description 'Get all users'
    end

    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      description 'Get a user by id'
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    # CHOICES
    field :choices, [Types::ChoiceType], null: false do
      description 'Get all choices'
    end

    def choices
      Choice.all
    end

    field :choice, Types::ChoiceType, null: false do
      description 'Get a choice by id'
      argument :id, ID, required: true
    end

    def choice(id:)
      Choice.find(id)
    end

    # VOTES
    field :votes, [Types::VoteType], null: false do
      description 'Get all votes'
    end

    def votes
      Vote.all
    end

    field :vote, Types::VoteType, null: false do
      description 'Get a vote by id'
      argument :id, ID, required: true
    end

    def vote(id:)
      Vote.find(id)
    end
  end
end
