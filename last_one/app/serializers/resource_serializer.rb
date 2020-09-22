class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :name, :private, :topic_id,:description,:link,:user_resources,:creator_id
  # has_many :users, through: :user_resources
end