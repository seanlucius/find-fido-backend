class User < ApplicationRecord
  has_many :lost_pets
  has_many :sightings
end
