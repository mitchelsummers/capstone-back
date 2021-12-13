class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :card_id

  belongs_to :user
  belongs_to :card
end
