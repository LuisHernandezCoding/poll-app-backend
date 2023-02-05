module Types
  class VoteType < Types::BaseObject
    field :id, ID, null: false
    field :choice_id, Integer, null: false
    field :poll_id, Integer, null: false
    field :user_id, Integer, null: false

    # User
    field :user, Types::UserType, null: true

    # Poll
    field :poll, Types::PollType, null: true

    # Choice
    field :choice, Types::ChoiceType, null: true

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def user
      object.user
    end

    def poll
      object.poll
    end
  end
end
