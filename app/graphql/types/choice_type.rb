# frozen_string_literal: true

module Types
  class ChoiceType < Types::BaseObject
    field :id, ID, null: false
    field :poll_id, Integer, null: false
    field :choice_text, String

    # Votes
    field :votes, [Types::VoteType], null: true
    field :votes_count, Integer, null: true

    # Poll
    field :poll, Types::PollType, null: true

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def votes_count
      object.votes.size
    end

    def poll
      object.poll
    end
  end
end
