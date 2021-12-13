class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :month, :day, :time, :privacy, :course_id, :user_id

  has_many :players
  has_many :users, through: :players
  belongs_to :user
  belongs_to :course
end
