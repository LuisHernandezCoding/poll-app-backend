class Choice < ApplicationRecord
  belongs_to :poll
  has_many :votes, dependent: :destroy
  has_many :users, through: :votes
end
