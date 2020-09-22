class UserResourceSerializer < ActiveModel::Serializer
  attributes :id,:user_id,:resource_id,:name,:link,:description,:creator_category,:creator_name,:creator_id
  has_one :user
  has_one :resource
end
