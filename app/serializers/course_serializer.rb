class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :hole_count, :course_par, :rating, :image

  has_many :cards
end
