class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :username, :user_resources,:img_url
end