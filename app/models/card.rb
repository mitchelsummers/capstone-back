class Card < ApplicationRecord
  has_many :players
  has_many :users, through: :players
  belongs_to :user
  belongs_to :course
end
