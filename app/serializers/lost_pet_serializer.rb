class LostPetSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :picture, :species, :breed, :sex, :age, :color, :defining_features, :instructions
  belongs_to :user
end
