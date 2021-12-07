class User < ApplicationRecord
  has_secure_password
  
  validates :email, presence: true, uniqueness: true

  has_many :cards
  has_many :players
  has_many :cards, through: :players
end
