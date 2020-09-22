class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name, :course_id
  has_many :resources

end