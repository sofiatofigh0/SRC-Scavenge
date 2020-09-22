class UserCourseSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :course_id
  has_one :user
  has_one :course
end