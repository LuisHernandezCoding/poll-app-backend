# frozen_string_literal: true

module Types
  class PollType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :question, String

    # Choices
    field :choices, [Types::ChoiceType], null: true
    field :choices_count, Integer, null: true

    # Votes
    field :votes, [Types::VoteType], null: true
    field :votes_count, Integer, null: true

    # Winner
    field :winner, Types::ChoiceType, null: true

    # User
    field :user, Types::UserType, null: true

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def choices_count
      object.choices.size
    end

    def votes_count
      object.votes.size
    end

    def user
      object.user
    end

    def winner
      object.choices.max_by { |choice| choice.votes.size }
    end
  end
end
