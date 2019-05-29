class User < ApplicationRecord
  has_secure_password
  has_many :lost_pets
  has_many :sightings
end
