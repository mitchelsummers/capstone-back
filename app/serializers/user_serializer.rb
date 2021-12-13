class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :email, :skill_level

  has_many :cards
  has_many :players
  has_many :cards, through: :players
end
