class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :email, :address
  has_many :lost_pets
end
