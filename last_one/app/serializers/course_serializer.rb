class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :topics
  has_many :users, through: :user_courses

end