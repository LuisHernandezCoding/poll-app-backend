# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :email, String
  
    # Polls
    field :posts, [Types::PollType], null: true
    field :posts_count, Integer, null: true

    # Votes
    field :votes, [Types::VoteType], null: true
    field :votes_count, Integer, null: true

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    
    def posts_count
      object.posts.size
    end

    def votes_count
      object.votes.size
    end
  end
end
