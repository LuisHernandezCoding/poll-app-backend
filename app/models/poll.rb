class Poll < ApplicationRecord
  belongs_to :user
  has_many :votes, dependent: :destroy
  has_many :choices, dependent: :destroy
end
