class User < ApplicationRecord
  has_many :cards
  has_many :players
  has_many :cards, through: :players
end
